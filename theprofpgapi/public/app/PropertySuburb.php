<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\PropertyCity;
use App\Property;

class PropertySuburb extends Model
{
    protected $fillable = ['name', 'city_id'];
    protected $hidden = ['created_at', 'updated_at'];

    public function city(){
        return $this->belongsTo('App\PropertyCity');
    }
    public function property(){
        return $this->hasMany('App\Property');
    }
}
