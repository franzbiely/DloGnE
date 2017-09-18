<?php

use Illuminate\Database\Seeder;
use App\User;

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
        $roles = array("admin","valuer","data-entry");
        foreach(range(1,5) as $index)
        {
            User::create([                
                'name' => $faker->name,
                'email' =>$faker->email,
                'username'=>$faker->userName,
                'password' =>bcrypt('secret_pass'),
                'role' =>$roles[$faker->numberBetween($min = 0, $max = 2)]
            ]);
        }
    }
}
