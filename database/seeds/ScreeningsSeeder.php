<?php

use App\Screenings;
use Illuminate\Database\Seeder;

class ScreeningsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $screenings =  [
            [
                'movie' => 'The Theory Of Everything', 
                'room' => 'A12', 
                'time' => '2020-10-10 16:40:00', 
                'language' => 'English', 
                'country' => 'United Kingdom', 
                'rating' => 7.7
            ],
            [
                'movie' => 'Sing Street', 
                'room' => 'A7', 
                'time' => '2020-10-20 20:10:00', 
                'language' => 'English', 
                'country' => 'Ireland', 
                'rating' => 7.2
            ],
            [
                'movie' => 'Spider-Man: Into the Spider-Verse', 
                'room' => 'P3', 
                'time' => '2020-10-22 14:45:00', 
                'language' => 'English', 
                'country' => 'United States', 
                'rating' => 8.4
            ],
            [
                'movie' => 'Kingsman: The Secret Service', 
                'room' => 'B12', 
                'time' => '2020-10-08 21:20:00', 
                'language' => 'English', 
                'country' => 'United Kingdom', 
                'rating' => 6.8
            ],
            [
                'movie' => 'Zombieland', 
                'room' => 'C2', 
                'time' => '2020-11-21 22:25:00', 
                'language' => 'English', 
                'country' => 'United States', 
                'rating' => 7.6
            ],
            [
                'movie' => 'Scott Pilgrim vs. the World',
                'room' => 'A10', 
                'time' => '2020-10-22 20:08:00', 
                'language' => 'English', 
                'country' => 'United States', 
                'rating' => 7.5
            ],
            [
                'movie' => 'Parasites', 
                'room' => 'D21', 
                'time' => '2020-12-21 22:20:00', 
                'language' => 'Korean', 
                'country' => 'South Korea', 
                'rating' => 8.6
            ],
            [
                'movie' => 'Me, Myself & Irene', 
                'room' => 'A3', 
                'time' => '2020-11-21 14:20:00', 
                'language' => 'English', 
                'country' => 'United States', 
                'rating' => 6.6
            ],
            [
                'movie' => 'Harry Potter and the Deathly Hallows – Part 1', 
                'room' => 'A2', 
                'time' => '2020-10-22 20:10:00', 
                'language' => 'English', 
                'country' => 'United Kingdom', 
                'rating' => 7.7
            ],
            [
                'movie' => 'Deadpool', 
                'room' => 'D7', 
                'time' => '2020-10-08 22:45:00', 
                'language' => 'English', 
                'country' => 'United States', 
                'rating' => 8
            ],
            [
                'movie' => 'How to train your dragon 3', 
                'room' => 'D7', 
                'time' => '2020-11-08 22:45:00', 
                'language' => 'English', 
                'country' => 'United States', 
                'rating' => 7.6
            ],
            [
                'movie' => 'The Internship', 
                'room' => 'D7', 
                'time' => '2020-10-08 21:15:00', 
                'language' => 'English', 
                'country' => 'United States', 
                'rating' => 6.3
            ],
          ];

          foreach($screenings as $screening){
            Screenings::create($screening);
          }

          //Relaciones screenings_categories
          Screenings::find(1)->categories()->sync(array(7,6)); 
          Screenings::find(2)->categories()->sync(array(8,6)); 
          Screenings::find(3)->categories()->sync(array(1,4,9,10)); 
          Screenings::find(4)->categories()->sync(array(1,11)); 
          Screenings::find(5)->categories()->sync(array(1,2,12)); 
          Screenings::find(6)->categories()->sync(array(2,5)); 
          Screenings::find(7)->categories()->sync(array(6,13,14)); 
          Screenings::find(8)->categories()->sync(array(2)); 
          Screenings::find(9)->categories()->sync(array(1,3,15,16)); 
          Screenings::find(10)->categories()->sync(array(1,2,9,10)); 
          Screenings::find(11)->categories()->sync(array(4,5,17)); 
          Screenings::find(12)->categories()->sync(array(2,6));
    }
}
