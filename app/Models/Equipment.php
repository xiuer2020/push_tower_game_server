<?php

namespace App\Models;

use Encore\Admin\Traits\DefaultDatetimeFormat;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Equipment extends Model
{
    use HasFactory, DefaultDatetimeFormat;
    protected $table = 'equipments';
}
