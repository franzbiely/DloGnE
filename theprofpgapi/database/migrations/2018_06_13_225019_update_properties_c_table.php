<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdatePropertiesCTable extends Migration
{
    private $table_name = 'properties';
    public function up()
    {
        Schema::table($this->table_name, function (Blueprint $table) {
            $table->text('area');
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
                'area'
            ]);
        });
    }
}
