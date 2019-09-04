<?php

use Illuminate\Database\Seeder;
use App\PropertyClass;

class PropertyClassesTableSeeder extends Seeder
{
    public function run()
    {
        $classes = [
            'Vacant Land – Urban',
            'Vacant Land - Rural',
            'Commercial – Offices',
            'Commercial – Retail',
            'Commercial – Mixed Use',
            'Commercial – High Rise',
            'Commercial - Hotel/Guest House',
            'Industrial – Warehousing',
            'Industrial – Manufacturing',
            'Industrial - Retail',
            'Industrial - Wholesale',
            'Residential – House Low Covenant',
            'Residential – House Medium Covenant',
            'Residential – House High Covenant',
            'Residential – Flats Low Covenant',
            'Residential – Flats Medium Covenant',
            'Residential – Units Townhouse',
            'Residential – Units High Rise',
            'Agriculture',
            'Other'
        ];
        foreach($classes as $class)
        {
            PropertyClass::create([                
                'name' => $class
            ]);
        }
    }
}
