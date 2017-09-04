<?php

use Illuminate\Database\Seeder;
use App\PropertySuburb;

class PropertySuburbsTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker\Factory::create(); 
 
        foreach(range(1,10) as $index)
        {
            PropertySuburb::create([                
                'name' => $faker->cityPrefix(),
                'city_id' => $faker->numberBetween($min = 1, $max = 10)
            ]);
        }
    }
}
