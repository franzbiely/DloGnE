<?php

use Illuminate\Database\Seeder;
use App\RentalReviewMethod;

class RentalReviewMethodsTableSeeder extends Seeder
{
    public function run()
    {
        $datas = [
            'CPI',
			'Fixed'
        ];
 
        foreach($datas as $data)
        {
            RentalReviewMethod::create([                
                'title' => $data
            ]);
        }
    }
}
