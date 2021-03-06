<?php

namespace App\Models;

use Encore\Admin\Traits\DefaultDatetimeFormat;
use Illuminate\Database\Eloquent\Model;


class Equipment extends Model
{
    use DefaultDatetimeFormat;

    protected $guarded = ['id'];
    protected $table = 'equipments';
}
