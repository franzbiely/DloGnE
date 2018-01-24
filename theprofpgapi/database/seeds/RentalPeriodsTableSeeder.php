<?php

use Illuminate\Database\Seeder;
use App\RentalPeriod;

class RentalPeriodsTableSeeder extends Seeder
{
    public function run()
    {
        $datas = [
            'Per Annum',
			'Per Month',
			'Per Week'
        ];
 
        foreach($datas as $data)
        {
            RentalPeriod::create([                
                'title' => $data
            ]);
        }
    }
}