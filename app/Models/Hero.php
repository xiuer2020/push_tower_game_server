<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hero extends Model
{
    use HasFactory;
    protected $table = 'heros';
    protected $casts = ['out_loading' => 'json','occupation' => 'json','specialty' =>'json'];
}
