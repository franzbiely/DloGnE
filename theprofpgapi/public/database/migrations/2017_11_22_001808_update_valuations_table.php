<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateValuationsTable extends Migration
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
            $table->text('forced_sale_value');
            $table->renameColumn('land_value','property_value');
            $table->text('land_value_rate');
            $table->renameColumn('remarks','description');
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
            $table->dropColumn(['forced_sale_value', 'land_value_rate']);
            $table->renameColumn('property_value','land_value');
            $table->renameColumn('description','remarks');
        });
    }
}
