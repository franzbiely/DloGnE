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
				'price' => $faker->numberBetween($min = 1000, $max = 9000),
				'purchaser' => $faker->name,
                'vendor'=> $faker->name,
                'est_land_value' => $faker->numberBetween($min = 1000, $max = 9000),
                'est_improvement_value' => $faker->numberBetween($min = 1000, $max = 9000),
                'area' => $faker->numberBetween($min = 1000, $max = 9000),
                'est_land_rate' => $faker->numberBetween($min = 1000, $max = 9000),
				'description' => $faker->text,
				'property_id' => $faker->numberBetween($min = 1, $max = 10)
            ]);
        }
    }
}
