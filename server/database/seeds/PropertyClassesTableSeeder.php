<?php

use Illuminate\Database\Seeder;
use App\PropertyClass;

class PropertyClassesTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker\Factory::create(); 
 
        foreach(range(1,10) as $index)
        {
            PropertyClass::create([                
                'name' => $faker->secondaryAddress()
            ]);
        }
    }
}
