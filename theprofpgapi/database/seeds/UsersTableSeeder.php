<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    Mike Quinn  mike@theprofessionals.com.pg    Administrator
Agi Doko    adoko@theprofessionals.com.pg   Data Access
John Purcell    apacific@optusnet.com.au    Data Access
Rose Enn    valuations.ncd@theprofessionals.com.pg  Data Access
Joel Wapele valuations2.ncd@theprofessionals.com.pg Data Access
Udu Malaga  valuations2.ncd@theprofessionals.com.pg Data Access
Purinda Nosa    valuations@theprofessionals.com.pg  Data Access
Rose Kuniaka    valuations@theprofessionals.com.pg  Data Access
Lyanne Gerson   sales@theprofessionals.com.pg   Data Entry
Jimmy Pep   propmgmt@theprofessionals.com.pg    Data Entry
Dennis Cotter   dennis@theprofessionals.com.pg  Data Access

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = {
            [
                'name' => 'Mike Quinn',
                'email'=> 'mike@theprofessionals.com.pg',
                'role' => 'Administrator'
            ],
            [
                'name' => 'Agi Doko',
                'email'=> 'adoko@theprofessionals.com.pg',
                'role' => 'Data Access'
            ]
            [
                'name' => 'John Purcell',
                'email'=> 'apacific@optusnet.com.au',
                'role' => 'Data Access'
            ]
            [
                'name' => 'Rose Enn',
                'email'=> 'valuations.ncd@theprofessionals.com.pg',
                'role' => 'Data Access'
            ]
            [
                'name' => 'Joel Wapele',
                'email'=> 'valuations2.ncd@theprofessionals.com.pg',
                'role' => 'Data Access'
            ]
            [
                'name' => 'Udu Malaga',
                'email'=> 'valuations2.ncd@theprofessionals.com.pg',
                'role' => 'Data Access'
            ]
            [
                'name' => 'Purinda Nosa',
                'email'=> 'valuations@theprofessionals.com.pg',
                'role' => 'Data Access'
            ]
            [
                'name' => 'Rose Kuniaka',
                'email'=> 'valuations@theprofessionals.com.pg',
                'role' => 'Data Access'
            ]
            [
                'name' => 'Lyanne Gerson',
                'email'=> 'sales@theprofessionals.com.pg',
                'role' => 'Data Entry'
            ]
            [
                'name' => 'Jimmy Pep',
                'email'=> 'propmgmt@theprofessionals.com.pg',
                'role' => 'Data Entry'
            ]
            [
                'name' => 'Dennis Cotter',
                'email'=> 'dennis@theprofessionals.com.pg',
                'role' => 'Data Access'
            ]
        };
        $faker = Faker\Factory::create(); 
        $roles = array("admin","valuer","data-entry");
        foreach(range(1,5) as $index)
        {
            User::create([                
                'name' => $faker->name,
                'email' =>$faker->email,
                'username'=>$faker->userName,
                'password' =>bcrypt('secret_pass'),
                'role' =>$roles[$faker->numberBetween($min = 0, $max = 2)],
                'isDisabled' => false
            ]);
        }
    }
}
