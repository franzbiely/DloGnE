<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRentalTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    private $table_name = 'rentals';
    public function up()
    {
        Schema::create($this->table_name, function (Blueprint $table) {
            $table->increments('id');
            $table->integer('property_id');
            $table->text('analysed_rent');
            $table->date('analysed_date');
            $table->text('remarks');
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
