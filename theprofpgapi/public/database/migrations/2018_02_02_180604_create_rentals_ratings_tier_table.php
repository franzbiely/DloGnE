<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRentalsRatingsTierTable extends Migration
{
    private $table_name = 'rental_ratings_tier';
    public function up()
    {
        Schema::create($this->table_name, function (Blueprint $table) {
            $table->increments('id');
            $table->integer('rental_id');
            $table->integer('rental_maintenance_id');
            $table->integer('rate');
            $table->timestamps();
        });
    }
    public function down() {
        Schema::drop($this->table_name);
    }
}
