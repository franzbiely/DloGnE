<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use App\Rental;
use App\RentalInclusion;


class RentalsInclusionTier extends Model
{
    protected $table = 'rental_inclusions_tier';

    public function rental_id() {
    	return $this->hasMany('App\Rental');
    }
    public function rental_inclusion_id() {
    	return $this->hasMany('App\RentalInclusion');
    }
}