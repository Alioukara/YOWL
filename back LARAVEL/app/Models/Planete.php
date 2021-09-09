<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Planete extends Model
{
    use HasFactory;
    protected $fillable = [
      
        'name',
        'rotation_period',
        'diameter',
        'climate',
        'population',
        
        'picture',
        
    ];
}