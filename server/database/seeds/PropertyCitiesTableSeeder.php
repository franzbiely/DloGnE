<?php

use Illuminate\Database\Seeder;
use App\PropertyCity;

class PropertyCitiesTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker\Factory::create(); 
 
        foreach(range(1,10) as $index)
        {
            PropertyCity::create([                
                'name' => $faker->city()
            ]);
        }
    }
}
