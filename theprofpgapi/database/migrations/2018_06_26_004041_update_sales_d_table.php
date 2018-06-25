<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateSalesDTable extends Migration
{
    private $table_name = 'sales';
    public function up()
    {
        Schema::table($this->table_name, function (Blueprint $table) {
            $table->integer('price')->change();
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
            $table->string('price')->change();
        });
    }
}
