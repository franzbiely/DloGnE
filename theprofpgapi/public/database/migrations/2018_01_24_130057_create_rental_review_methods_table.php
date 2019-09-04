<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRentalReviewMethodsTable extends Migration
{
    private $table_name = 'rental_review_methods';
    public function up()
    {
        Schema::create($this->table_name, function (Blueprint $table) {
            $table->increments('id');
            $table->text('title');
            $table->integer('created_by');
            $table->boolean('is_hidden');
            $table->timestamps();
        });
    }
    public function down() {
        Schema::drop($this->table_name);
    }
}
