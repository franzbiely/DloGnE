<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Model::unguard();

        $this->call(UsersTableSeeder::class);
        $this->call(PropertyUsesTableSeeder::class);
        $this->call(PropertyClassesTableSeeder::class);
        $this->call(PropertyLeaseTypesTableSeeder::class);
        $this->call(PropertyCitiesTableSeeder::class);
        $this->call(PropertySuburbsTableSeeder::class);
        $this->call(PropertiesTableSeeder::class);
        $this->call(ValuationsTableSeeder::class);
        $this->call(SalesTableSeeder::class);
        $this->call(AuditTrailsTableSeeder::class);
        $this->call(RentalAreasTableSeeder::class);
        $this->call(RentalPeriodsTableSeeder::class);
        $this->call(RentalInclusionsTableSeeder::class);
        $this->call(RentalMaintenancesTableSeeder::class);
        $this->call(RentalReviewMethodsTableSeeder::class);
        Model::reguard();
    }
}
