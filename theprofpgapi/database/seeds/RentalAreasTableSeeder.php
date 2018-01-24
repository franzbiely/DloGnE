<?php

use Illuminate\Database\Seeder;
use App\RentalArea;

class RentalAreasTableSeeder extends Seeder
{
    public function run()
    {
        $datas = [
            'SQ.M',
			'Hectare',
			'Unit',
			'Floor',
			'House',
			'Other'
        ];
 
        foreach($datas as $data)
        {
            RentalArea::create([                
                'title' => $data
            ]);
        }
    }
}

