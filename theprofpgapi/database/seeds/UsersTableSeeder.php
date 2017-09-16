<?php

use Illuminate\Database\Seeder;
use App\Users;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create(); 

        foreach(range(1,5) as $index)
        {
            Users::create([                
                'name' => $faker->name,
                'email' =>$faker->email,
                'username'=>$faker->userName,
                'password' =>bcrypt('secret_pass')
            ]);
        }
    }
}
