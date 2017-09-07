<?php

use Illuminate\Database\Seeder;
use App\PropertyUse;
// composer require laracasts/testdummy
// use Laracasts\TestDummy\Factory as TestDummy;

class PropertyUsesTableSeeder extends Seeder
{
    public function run()
    {
    	$faker = Faker\Factory::create(); 
 
        foreach(range(1,10) as $index)
        {
            PropertyUse::create([                
                'name' => $faker->cityPrefix()
            ]);
        }
    }
}
