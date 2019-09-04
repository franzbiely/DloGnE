<?php

use Illuminate\Database\Seeder;
use App\RentalInclusion;

class RentalInclusionsTableSeeder extends Seeder
{
    public function run()
    {
        $datas = [
        	'Water',
        	'Electricity',
        	'Janitorial',
        	'Internal Maintenance',
        	'Garbage Removal',
        	'Internet',
        	'Security Guards',
        	'CCTV',
        	'Gardens & Lawns',
        	'Pool',
        	'Parking',
        	'Gym',
        	'Other'
        ];
 
        foreach($datas as $data)
        {
            RentalInclusion::create([                
                'title' => $data
            ]);
        }
    }
}
