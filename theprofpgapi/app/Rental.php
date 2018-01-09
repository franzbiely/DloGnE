<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Property;

class Rental extends Model
{
    protected $fillable = [
		'property_id',
        'analysed_rent',
        'analysed_date',
        'remarks'
	];
	protected $hidden = ['created_at', 'updated_at'];
	
	public function property(){
        return $this->belongsTo('App\Property');
    }
}
