<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    public function hero(){
        $this->belongsTo(Hero::class);
    }
}
