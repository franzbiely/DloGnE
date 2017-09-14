<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Property;

class PropertyUse extends Model
{
    protected $fillable = ['name'];
    
    public function property(){
        return $this->hasMany('App\Property');
    }
}
