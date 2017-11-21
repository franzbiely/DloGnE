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
use DB;

class Property extends Model
{
    protected $fillable = [
		'code',
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
        'owner'
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
    public function valuation(){
        return $this->hasMany('App\Valuation');
    }
    public function sale(){
        return $this->hasMany('App\Sale');
    }
    public function current_value(){
        return $this->hasOne('App\Valuation')
            ->select(DB::raw('property_id, (improvement_component + property_value) AS value'))
            ->orderBy('id','DESC')->latest();
    }
}
