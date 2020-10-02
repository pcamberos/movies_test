<?php

use App\Category;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = [
            ['name' => 'Action'],
            ['name' => 'Comedy'],
            ['name' => 'Thriller'],
            ['name' => 'Adventure'],
            ['name' => 'Fantasy'],
            ['name' => 'Drama'],
            ['name' => 'Romance'],
            ['name' => 'Musical'],
            ['name' => 'Science Fiction'],
            ['name' => 'Superheroes'],
            ['name' => 'Crimen'],
            ['name' => 'Horror'],
            ['name' => 'Suspense'],
            ['name' => 'Black Humor'],
            ['name' => 'Novel'],
            ['name' => 'Mistery'],
            ['name' => 'Animation']
            
        ]; 

        foreach($categories as $category){
            Category::create($category);
        }
    }
}
