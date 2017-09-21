## Basic Laravel API with JWT Auth

Blog Post URL: http://goo.gl/Ej29kb

Steps to run:

1. Clone the repo
2. Change the db settings in .env file
3. run, composer install command by switching to the project dir
4. run, php artisan migrate --seed
5. php artisan serve

For the list of routes, run, 
php artisan route:list

You can also import the db from the #db directory if required.

You can check the created users by going into the users table (the password for each user is "secret_pass"). It will be used when generating token.

Developer Notes Steps : 
1. Create Migration
	php artisan make:migration create_jokes_table
2. Update Migration file run() and then Migrate
	php artisan migrate
3. Create Model
	php artisan make:model Joke
4. Create Seeder
	php artisan make:seed Jokes
5. Update Seeder file run() 
6. Add created seeder file in DatabaseSeeder.php
7. Add protected $fillable = ['body', 'user_id']; in modal file
8. Run the Seed
	php artisan migrate --seed
9.Create Controller
	php artisan make:controller JokesController
10. Add controller to route.php
	Route::resource('jokes', 'JokesController');
11. View all routes
	php artisan route:list
	
Deploying : 
1. cd theprofpgapi/gitsource
2. git pull
3. cd ../
<!-- Copy svis source to domain folder -->
4. cp -r theprofpgapi/gitsource/theprofpgsvis/app/ theprofpgsvis/public/
<!-- Copy api source to domain folder -->
5. cp -r theprofpgapi/gitsource/theprofpgapi/* theprofpgapi/public/
6. 