<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateRentalTable extends Migration
{
    private $table_name = 'rentals';
    public function up()
    {
        Schema::table($this->table_name, function (Blueprint $table) {
            $table->integer('rental_area_id');
            $table->integer('rental_period_id');
            $table->text('inclusion_other');
            $table->integer('rental_review_method_id');
            $table->text('rental_review_method');
            $table->text('name_of_tenant');
            $table->date('date_lease_commenced');
            $table->integer('total_lease_period');
            $table->integer('age_of_building');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table($this->table_name, function(Blueprint $table) {
            $table->dropColumn([
                'rental_area_id',
                'rental_period_id',
                'rental_review_method_id',
                'rental_review_method',
                'name_of_tenant',
                'date_lease_commenced',
                'total_lease_period',
                'age_of_building'
            ]);
        });
    }
}
