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

        $this->call(JokesTableSeeder::class);
        $this->call(UsersTableSeeder::class);
        
        $this->call(PropertyUsesTableSeeder::class);
        $this->call(PropertyClassesTableSeeder::class);
        $this->call(PropertyLeaseTypesTableSeeder::class);
        $this->call(PropertyCitiesTableSeeder::class);
        $this->call(PropertySuburbsTableSeeder::class);

        Model::reguard();
    }
}
