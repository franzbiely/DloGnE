<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Property;

class Media extends Model
{
	protected $table = 'media';
    protected $fillable = ['file_name', 'file_size', 'file_mime', 'file_path','source_id','source_table','media_type'];

}
