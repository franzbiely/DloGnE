<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Property;

class Valuation extends Model
{
    protected $fillable = [
		'date',
		'value',
		'remarks',
		'property_id',
		'property_city_id'
	];
	protected $hidden = ['created_at', 'updated_at'];
	
	public function property(){
        return $this->belongsTo('App\Property');
    }
}
