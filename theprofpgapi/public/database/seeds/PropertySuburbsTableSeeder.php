<?php

use Illuminate\Database\Seeder;
use App\PropertySuburb;

class PropertySuburbsTableSeeder extends Seeder
{
    public function run()
    {
        $suburbs = [
            'CBD'=>1,
            'Goilani'=>1,
            'Goilani Heights'=>1,
            'Koiabule'=>1,
            'Middle Town'=>1,
            'Ravens Estate'=>1,
            'Top Town'=>1,
            'North Goroka'=>6,
            'West Goroka'=>6,
            'Airstrip Area'=>6,
            'CBD'=>6,
            'Kenabot'=>12,
            'Vunapope'=>12,
            'Takubar'=>12,
            'Eriku'=>14,
            'CBD'=>14,
            'Taraka East'=>14,
            'Taraka West'=>14,
            'Miles'=>14,
            'Bugandi'=>14,
            'Chinatown'=>14,
            'Birdsville'=>14,
            'Flowerville'=>14,
            'Papuan Compound'=>14,
            'Hunter'=>14,
            'Malahang'=>14,
            'Unitech'=>14,
            'Omili'=>14,
            'Voco Point'=>14,
            'Butibum'=>14,
            'Bumneng'=>14,
            'Dowsett'=>14,
            'Treeville'=>14,
            'Industrial Area'=>14,
            'Market Area'=>14,
            'Wharf Area'=>14,
            'Hunter'=>14,
            'Nadzab'=>14,
            'Speedway'=>14,
            'Buimo'=>14,
            'Kumkumun'=>14,
            'Old Airstrip'=>14,
            'Tent Siti'=>14,
            'Bumayong'=>14,
            'Kalibobo'=>16,
            'Mimilon'=>16,
            'Newtown'=>16,
            'Yomda'=>16,
            'Wagol'=>16,
            'Alexishaven'=>16,
            'Airport / Industrial District'=>16,
            'CBD'=>19,
            'Wara Kum'=>19,
            'Kagamuga'=>19,
            'Dobel'=>19,
            'Barracks Area'=>19,
            'Gerehu South'=>21,
            'Gerehu North'=>21,
            'Motata'=>21,
            'Waigani North'=>21,
            'Ensisi Valley'=>21,
            'UPNG'=>21,
            'Renbo Estate'=>21,
            'Erima '=>21,
            '7 Mile'=>21,
            'Gordons'=>21,
            'Jackons'=>21,
            'Waigani '=>21,
            'Hohola'=>21,
            'Tokarara'=>21,
            'Idubada'=>21,
            'Kila Kila'=>21,
            'Gabutu'=>21,
            'Kaugere'=>21,
            'Boroko Central'=>21,
            'Boroko East'=>21,
            '5 Mile'=>21,
            'Saraga'=>21,
            'Taurama'=>21,
            '4 Mile'=>21,
            '3 Mile'=>21,
            'Korobosea'=>21,
            'Ela Beach'=>21,
            'Badili'=>21,
            'Newtown'=>21,
            'Konedobu'=>21,
            'Kaevaga'=>21,
            'CBD'=>21,
            'Paga Hill'=>21,
            'Malaguna'=>22,
            'CBD'=>22,
            'Chinatown'=>22,
            'Matupit'=>22,
            'Wewak Hill'=>27,
            'Wewak Town'=>27,
            'Wirui'=>27,
            'Mission Point'=>27,
            'Kreer'=>27,
            'Kreer Heights'=>27,
            'Nuigo'=>27,
            'Kainde'=>27,
            'Boram Airport'=>27,
            'Boram Cape'=>27,
            'Moem'=>27
        ];

        foreach($suburbs as $key=>$val)
        {
            PropertySuburb::create([                
                'name' => $key,
                'city_id' => $val
            ]);
        }
    }
}
