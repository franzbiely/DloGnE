<?php

use Illuminate\Database\Seeder;
use App\PropertyUse;
// composer require laracasts/testdummy
// use Laracasts\TestDummy\Factory as TestDummy;

class PropertyUsesTableSeeder extends Seeder
{
    public function run()
    {
        $uses = [
            'Vacant',
            'Commercial',
            'Industrial',
            'Residential',
            'Institutional',
            'Agriculture',
            'Other',
            'Traditional'
        ];
 
        foreach($uses as $use)
        {
            PropertyUse::create([                
                'name' => $use
            ]);
        }
    }
}
