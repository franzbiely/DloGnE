<?php

use Illuminate\Database\Seeder;
use App\PropertyLeaseType;

class PropertyLeaseTypesTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker\Factory::create(); 
 
        foreach(range(1,10) as $index)
        {
            PropertyLeaseType::create([                
                'name' => $faker->stateAbbr()
            ]);
        }
    }
}
