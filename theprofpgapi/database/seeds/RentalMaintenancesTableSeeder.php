<?php

use Illuminate\Database\Seeder;
use App\RentalMaintenance;

class RentalMaintenancesTableSeeder extends Seeder
{
    public function run()
    {
        $datas = [
			'External',
			'Internal',
			'White Goods',
			'Furniture',
			'Gardens & Grounds',
			'Fencing',
			'Wet Areas'
        ];
 
        foreach($datas as $data)
        {
            RentalMaintenance::create([                
                'title' => $data
            ]);
        }
    }
}







