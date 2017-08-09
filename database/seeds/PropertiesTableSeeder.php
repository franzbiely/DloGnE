<?php

use Illuminate\Database\Seeder;
use App\Property;

// composer require laracasts/testdummy
use Laracasts\TestDummy\Factory as TestDummy;

class PropertiesTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker\Factory::create(); 
 
        foreach(range(1,30) as $index)
        {
            Property::create([                
                'body' => $faker->paragraph($nbSentences = 3),
                'user_id' =>$faker->numberBetween($min = 1, $max = 5)
            ]);
        }
    }
}
