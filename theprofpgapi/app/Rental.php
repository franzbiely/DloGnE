<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Property;
use App\RentalArea;
use App\RentalPeriod;
use App\RentalReviewMethod;

class Rental extends Model
{
    protected $fillable = [
		'property_id',
        'analysed_rent',
        'analysed_date',
        'remarks',
        'rental_area_id',
        'inclusion_other',
        'rental_period_id',
        'rental_review_method_id',
        'rental_review_method',
        'name_of_tenant',
        'date_lease_commenced',
        'total_lease_period',
        'age_of_building'
	];
	protected $hidden = ['created_at', 'updated_at'];
	
	public function property(){
        return $this->belongsTo('App\Property');
    }
    public function rental_area(){
        return $this->belongsTo('App\RentalArea');
    }
    public function rental_period(){
        return $this->belongsTo('App\RentalPeriod');
    }
    public function rental_review_method(){
        return $this->belongsTo('App\RentalReviewMethod');
    }
}
