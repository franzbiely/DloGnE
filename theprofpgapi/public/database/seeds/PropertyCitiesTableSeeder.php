<?php

use Illuminate\Database\Seeder;
use App\PropertyCity;

class PropertyCitiesTableSeeder extends Seeder
{
    public function run()
    {
        $cities = [
            'Alotau',
            'Banz',
            'Bulolo',
            'Daru',
            'Finschhafen',
            'Goroka',
            'Kainantu',
            'Kavieng',
            'Kerema',
            'Kimbe',
            'Kiunga',
            'Kokopo',
            'Kundiawa',
            'Lae',
            'Lorengau',
            'Madang',
            'Markham Valley',
            'Mendi',
            'Mine',
            'Mt Hagen',
            'Popondetta',
            'Port Moresby',
            'Rabaul',
            'Ramu',
            'Rural',
            'Vanimo',
            'Wabag',
            'Wau',
            'Tari',
            'Waghi Valley',
            'Wewak',
            'Other'
        ];
 
        foreach($cities as $city)
        {
            PropertyCity::create([                
                'name' => $city
            ]);
        }
    }
}