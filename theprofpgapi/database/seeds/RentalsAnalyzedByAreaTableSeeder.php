<?php

use Illuminate\Database\Seeder;
use App\RentalAnalyzedByArea;

class RentalsAnalyzedByAreasTableSeeder extends Seeder
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
            RentalAnalyzedByArea::create([                
                'title' => $data
            ]);
        }
    }
}

