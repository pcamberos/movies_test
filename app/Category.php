<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillers = ["name"];
    protected $hidden = ['pivot',  'id', 'created_at', 'updated_at'];
}
