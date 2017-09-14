<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\PropertySuburb;
use App\Property;

class PropertyCity extends Model
{
	protected $table = 'property_cities';
    protected $fillable = ['name'];
	
	public function suburbs(){
        return $this->hasMany('App\PropertySuburb');
    }
    public function property(){
        return $this->hasMany('App\Property');
    }
}
