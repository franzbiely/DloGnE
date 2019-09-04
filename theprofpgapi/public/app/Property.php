<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\PropertyUse;
use App\PropertyClass;
use App\PropertyLeaseType;
use App\PropertyCity;
use App\PropertySuburb;
use App\Valuation;
use App\Sale;
use App\Rental;
use App\User;
use DB;

class Property extends Model
{
    protected $fillable = [
		'name',
		'description',
		'property_use_id',
		'property_class_id',
		'property_lease_type_id',
		'property_city_id',
		'property_suburb_id',
		'port',
		'sec',
		'lot',
		'unit',
        'owner',
        'created_by_id',
        'last_edited_by_id',
        'area'
	];

    protected $hidden = ['created_at', 'updated_at'];

    public function property_use(){
        return $this->belongsTo('App\PropertyUse');
    }
    public function property_class(){
        return $this->belongsTo('App\PropertyClass');
    }
    public function property_lease_type(){
        return $this->belongsTo('App\PropertyLeaseType');
    }
    public function property_city(){
        return $this->belongsTo('App\PropertyCity');
    }
    public function property_suburb(){
        return $this->belongsTo('App\PropertySuburb');
    }
    public static function valuation(){
        $prop = new Property();
        return $prop->hasMany('App\Valuation');
    }
    public function sale(){
        return $this->hasMany('App\Sale');
    }
    public function rental(){
        return $this->hasMany('App\Rental');
    }
    public function current_value(){
        return $this->hasOne('App\Valuation')
            ->select(DB::raw('property_id, (improvement_component + land_component) AS value'))
            ->orderBy('id','DESC')->latest();
    }
    public function current_sales_value(){
        return $this->hasOne('App\Sale')
            ->select(DB::raw('property_id, price AS value'))
            ->orderBy('id','DESC')->latest();
    }
    public function current_rentals_value(){
        return $this->hasOne('App\Rental')
            ->select(DB::raw('property_id, analysed_rent AS value'))
            ->orderBy('id','DESC')->latest();
    }
    public function current_area(){
        return $this->hasOne('App\Sale')
            ->select(DB::raw('property_id, area'))
            ->orderBy('id','DESC')->latest();
    }
    public function latest_sales_area() {
        return $this->hasOne('App\Sale')
            ->select(DB::raw('property_id, area'))
            ->orderBy('id','DESC')->latest();
    }
    public function latest_valuation_area() {
        return $this->hasOne('App\Valuation')
            ->select(DB::raw('property_id, area'))
            ->orderBy('id','DESC')->latest();
    }
    public function latest_sales_date() {
        return $this->hasOne('App\Sale')
            ->select(DB::raw('property_id, date'))
            ->orderBy('date','DESC')->latest();
    }
    public function created_by() {
        return $this->belongsTo('App\User');
    }
    public function last_edited_by() {
        return $this->belongsTo('App\User');
    }

    public function scopeFilteredJoin($query, $filters) {
        // Not include Valuation Zero case
        if(!array_key_exists('include_valuation_zero', $filters) || !$filters['include_valuation_zero']) {
            $query
                ->join('valuations', function($join) {
                    $join->on('properties.id', '=', 'valuations.property_id');
                });
        }
        if(!array_key_exists('include_sales_zero', $filters) || !$filters['include_sales_zero']) {
            $query
                ->join('sales', function($join) {
                    $join->on('properties.id', '=', 'sales.property_id');
                });
        }
        if(!array_key_exists('include_rentals_zero', $filters) || !$filters['include_rentals_zero']) {
            $query
                ->join('rentals', function($join) {
                    $join->on('properties.id', '=', 'rentals.property_id');
                });
        }
    }
}
