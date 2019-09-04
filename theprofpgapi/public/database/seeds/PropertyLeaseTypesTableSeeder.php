<?php

use Illuminate\Database\Seeder;
use App\PropertyLeaseType;

class PropertyLeaseTypesTableSeeder extends Seeder
{
    public function run()
    {
        $lease_types = [
            'Residential',
            'Commercial',
            'Industrial',
            'Business',
            'Agricultural',
            'SABL',
            'ILG',
            'Traditional',
            'Other',
            'Free Hold'
        ];
        foreach($lease_types as $lease_type)
        {
            PropertyLeaseType::create([                
                'name' => $lease_type
            ]);
        }
    }
}
