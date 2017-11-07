<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProperty extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('properties', function (Blueprint $table) {
            $table->increments('id');
            $table->text('code');
            $table->text('description');
            $table->integer('property_use_id');
            $table->integer('property_class_id');
            $table->integer('property_lease_type_id');
            $table->integer('property_city_id');
            $table->integer('property_suburb_id');
            $table->text('port');
            $table->text('sec');
            $table->text('lot');
            $table->text('unit');
            $table->text('owner');
            $table->boolean('is_archive');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('properties');
    }
}
