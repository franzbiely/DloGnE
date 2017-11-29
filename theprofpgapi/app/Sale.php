<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Property;

class Sale extends Model
{
    protected $fillable = [
		'date',
		'source',
		'price',
		'purchaser',
		'vendor',
		'est_land_value',
		'est_improvement_value',
		'area',
		'est_land_rate',
		'description',
		'property_id',
		'property_city_id'
	];
	protected $hidden = ['created_at', 'updated_at'];
	
	public function property(){
        return $this->belongsTo('App\Property');
    }
}
