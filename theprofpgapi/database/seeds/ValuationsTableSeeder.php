<?php

use Illuminate\Database\Seeder;
use App\Valuation;

class ValuationsTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker\Factory::create(); 
 
        foreach(range(1,10) as $index)
        {
            Valuation::create([                
                'date' => $faker->date($format = 'Y-m-d', $max = 'now'),
				'remarks' => $faker->text,
				'property_id' => $faker->numberBetween($min = 1, $max = 10),
                'land_value' => $faker->numberBetween($min = 1, $max = 100),
                'land_component' => $faker->numberBetween($min = 1, $max = 100),
                'insurance_value' => $faker->numberBetween($min = 1, $max = 100),
                'improvement_component' => $faker->numberBetween($min = 1, $max = 100),
                'area' => $faker->randomDigit
            ]);
        }
    }
}
