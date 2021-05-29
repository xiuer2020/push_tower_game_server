<?php

namespace App\Models;

use Encore\Admin\Traits\DefaultDatetimeFormat;
use Illuminate\Database\Eloquent\Model;

class Hero extends Model
{
    use DefaultDatetimeFormat;

    protected $table = 'heros';
    protected $guarded = ['id'];
    protected $casts = ['out_loading' => 'json','occupation' => 'json','specialty' =>'json', 'relevant'=>'json'];

    public function user(){
        return $this->hasOne(User::class);
    }

//    public function equipment()
//    {
//        return $this->belongsTo(Equipment::class);
//    }
}
