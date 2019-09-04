<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Property;
use App\Media;

class Valuation extends Model
{
    protected $fillable = [
		'date',
		'value',
		'description',
		'property_id',
		'property_city_id',
		'land_component',
		'insurance_value',
		'improvement_component',
		'area',
		'forced_sale_value',
		'land_value_rate'
	];
	// protected $hidden = ['created_at', 'updated_at'];
	
	public function property(){
        return $this->belongsTo('App\Property');
    }
    public function media(){
        return $this->hasMany('App\Media', 'source_id', 'id')->where('source_table','valuations');
    }
}
