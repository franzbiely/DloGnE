<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateValuationsTable2 extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('valuations', function(Blueprint $table)
        {
            $table->renameColumn('property_value','land_value');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('valuations', function(Blueprint $table)
        {
            $table->renameColumn('land_value','property_value');
        });
    }
}
