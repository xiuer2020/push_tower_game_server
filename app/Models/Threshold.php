<?php


namespace App\Models;

use Encore\Admin\Traits\DefaultDatetimeFormat;
use Illuminate\Database\Eloquent\Model;

class Threshold extends Model
{
    use DefaultDatetimeFormat;

    protected $guarded = ['id'];
    protected $table = 'thresholds';
    protected $casts = ['speeds'=>'json'];
}
