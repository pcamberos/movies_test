<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Screenings extends Model
{
    protected $fillers = ["movie", "room", "time", "language", "country", "rating"];
    protected $hidden = ['pivot', 'id', 'created_at', 'updated_at'];

    public function categories(){
        return $this->belongsToMany(Category::class, "categories_screenings", "screening_id", "category_id");
    }
}
