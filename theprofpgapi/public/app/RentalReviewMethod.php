<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Rental;

class RentalReviewMethod extends Model
{
    protected $fillable = ['title'];
    
    public function rental(){
        return $this->hasMany('App\Rental');
    }
}
