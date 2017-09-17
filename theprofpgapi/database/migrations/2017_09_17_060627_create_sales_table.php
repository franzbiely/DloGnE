<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSalesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = 'sales';
    public function up()
    {
        Schema::create($this->table_name, function (Blueprint $table) {
            $table->increments('id');
            $table->integer('year');
            $table->text('value');
            $table->text('buyer');
            $table->text('remarks');
            $table->integer('property_id');
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
        Schema::drop($this->table_name);
    }
}
