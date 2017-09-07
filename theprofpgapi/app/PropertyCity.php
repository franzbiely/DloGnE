<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\PropertySuburb;

class PropertyCity extends Model
{
	protected $table = 'property_cities';
    protected $fillable = ['name'];
	
	public function suburbs(){
        return $this->hasMany('App\PropertySuburb');
    }
}
