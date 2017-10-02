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
        $users = [
            [
                'name' => 'Mike Quinn',
                'email'=> 'mike@theprofessionals.com.pg',
                'role' => 'Administrator'
            ],
            [
                'name' => 'Agi Doko',
                'email'=> 'adoko@theprofessionals.com.pg',
                'role' => 'Data Access'
            ],
            [
                'name' => 'John Purcell',
                'email'=> 'apacific@optusnet.com.au',
                'role' => 'Data Access'
            ],
            [
                'name' => 'Rose Enn',
                'email'=> 'valuations.ncd@theprofessionals.com.pg',
                'role' => 'Data Access'
            ],
            [
                'name' => 'Joel Wapele',
                'email'=> 'valuations2.ncd@theprofessionals.com.pg',
                'role' => 'Data Access'
            ],
            [
                'name' => 'Udu Malaga',
                'email'=> 'valuations2.ncd@theprofessionals.com.pg',
                'role' => 'Data Access'
            ],
            [
                'name' => 'Purinda Nosa',
                'email'=> 'valuations@theprofessionals.com.pg',
                'role' => 'Data Access'
            ],
            [
                'name' => 'Rose Kuniaka',
                'email'=> 'valuations@theprofessionals.com.pg',
                'role' => 'Data Access'
            ],
            [
                'name' => 'Lyanne Gerson',
                'email'=> 'sales@theprofessionals.com.pg',
                'role' => 'Data Entry'
            ],
            [
                'name' => 'Jimmy Pep',
                'email'=> 'propmgmt@theprofessionals.com.pg',
                'role' => 'Data Entry'
            ],
            [
                'name' => 'Dennis Cotter',
                'email'=> 'dennis@theprofessionals.com.pg',
                'role' => 'Data Access'
            ]
        ];

        foreach($users as $user)
        {
            User::create([                
                'name' => $user['name'],
                'email' =>$user['email'],
                'username'=>$user['name'],
                'password' =>bcrypt('secret_pass'),
                'role' =>$user['role'],
                'isDisabled' => false
            ]);
        }
    }
}
