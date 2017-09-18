<?php

use Illuminate\Database\Seeder;
use App\Sale;

class SalesTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker\Factory::create(); 
 
        foreach(range(1,10) as $index)
        {
            Sale::create([                
                'date' => $faker->date($format = 'Y-m-d', $max = 'now'),
				'value' => $faker->numberBetween($min = 1000, $max = 9000),
				'buyer' => $faker->name,
				'remarks' => $faker->text,
				'property_id' => $faker->numberBetween($min = 1, $max = 10)
            ]);
        }
    }
}
