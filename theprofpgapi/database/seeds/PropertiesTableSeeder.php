<?php

use Illuminate\Database\Seeder;
use App\Property;

class PropertiesTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker\Factory::create(); 
 
        foreach(range(1,10) as $index)
        {
            Property::create([                
                'code' => $faker->randomNumber,
				'description' => $faker->text,
				'property_use_id' => $faker->numberBetween($min = 1, $max = 10),
				'property_class_id' => $faker->numberBetween($min = 1, $max = 10),
				'property_lease_type_id' => $faker->numberBetween($min = 1, $max = 10),
				'property_city_id' => $faker->numberBetween($min = 1, $max = 10),
				'property_suburb_id' => $faker->numberBetween($min = 1, $max = 10),
				'port' => $faker->randomDigit,
				'sec' => $faker->randomDigit,
				'lot' => $faker->randomDigit,
				'unit' => $faker->randomDigit,
				'land_value' => $faker->numberBetween($min = 1, $max = 100),
				'land_component' => $faker->text,
				'improvement_component' => $faker->text,
				'area' => $faker->randomDigit
            ]);
        }
    }
}
