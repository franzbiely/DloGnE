<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\PropertySuburb;

class PropertyCity extends Model
{
    protected $fillable = ['name'];
	
	public function suburbs(){
        return $this->hasMany('App\PropertySuburb');
    }
}
