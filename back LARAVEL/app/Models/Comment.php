<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    protected $fillable = [
      
        'user_id',
        'user_nickname',
        'comment_content',
        
        'people_id',
        'films_id',
        'planetes_id',
        'vehicles_id',
        'species_id',
        'starships_id',
        'starships_id',
        
    ];
}