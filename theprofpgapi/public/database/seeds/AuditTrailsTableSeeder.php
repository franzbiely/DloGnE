<?php

use Illuminate\Database\Seeder;
use App\AuditTrail;

class AuditTrailsTableSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker\Factory::create(); 
 
        foreach(range(1,10) as $index)
        {
            AuditTrail::create([                
                'user_id' => $faker->numberBetween($min = 1, $max = 10),
				'log' => $faker->text
            ]);
        }
    }
}
