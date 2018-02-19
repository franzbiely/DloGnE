<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateRentalBTable extends Migration
{
    private $table_name = 'rentals';
    public function up()
    {
        Schema::table($this->table_name, function (Blueprint $table) {
            $table->integer('vacancy_rate');
            $table->integer('option_periods');
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
                'vacancy_rate',
                'option_periods'
            ]);
        });
    }
}
