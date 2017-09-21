<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;


class AuditTrail extends Model
{
    protected $fillable = [
		'user_id',
		'log'
	];
	protected $hidden = ['updated_at'];
	
	public function User(){
        return $this->belongsTo('App\User');
    }
}
