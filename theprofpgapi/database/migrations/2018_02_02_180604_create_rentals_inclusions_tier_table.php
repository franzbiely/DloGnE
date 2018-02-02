<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRentalsInclusionsTierTable extends Migration
{
    private $table_name = 'rental_inclusions_tier';
    public function up()
    {
        Schema::create($this->table_name, function (Blueprint $table) {
            $table->increments('id');
            $table->integer('rental_id');
            $table->integer('rental_inclusion_id');
        });
    }
    public function down() {
        Schema::drop($this->table_name);
    }
}
