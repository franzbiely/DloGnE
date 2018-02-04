<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Rental;
use App\RentalMaintenance;

class RentalsRatingTier extends Model
{
    protected $table = 'rental_ratings_tier';
    protected $fillable = ['rate'];

    public function rental_id() {
    	return $this->hasMany('App\Rental');
    }
    public function rental_maintenance_id() {
    	return $this->hasMany('App\RentalMaintenance');
    }
}