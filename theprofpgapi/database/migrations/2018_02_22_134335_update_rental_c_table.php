<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateRentalCTable extends Migration
{
    private $table_name = 'rentals';
    public function up()
    {
        Schema::table($this->table_name, function (Blueprint $table) {
            $table->text('rental_area_other');
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
                'rental_area_other'
            ]);
        });
    }
}
