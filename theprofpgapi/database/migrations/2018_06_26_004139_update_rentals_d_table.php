<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateRentalsDTable extends Migration
{
    private $table_name = 'rentals';
    public function up()
    {
        Schema::table($this->table_name, function (Blueprint $table) {
            $table->integer('analysed_rent')->change();
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
            $table->string('analysed_rent')->change();
        });
    }
}
