<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateSalesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('sales', function(Blueprint $table)
        {
            $table->renameColumn('buyer','purchaser');
            $table->text('vendor');
            $table->text('est_land_value');
            $table->text('est_improvement_value');
            $table->text('area');
            $table->text('est_land_rate');
            $table->renameColumn('remarks','description');
            $table->renameColumn('value','price');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('sales', function(Blueprint $table)
        {
            $table->renameColumn('purchaser','buyer');
            $table->dropColumn(['vendor','est_land_value','est_improvement_value','area','est_land_rate']);
            $table->renameColumn('description','remarks');
            $table->renameColumn('price','value');
        });
    }
}
