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
				'value' => $faker->numberBetween($min = 1000, $max = 9000),
				'remarks' => $faker->text,
				'property_id' => $faker->numberBetween($min = 1, $max = 10)
            ]);
        }
    }
}
