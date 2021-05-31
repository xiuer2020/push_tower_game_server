<?php


namespace App\Models;

use Encore\Admin\Traits\DefaultDatetimeFormat;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class Threshold extends Model
{
    use DefaultDatetimeFormat;

    protected $guarded = ['id'];
    protected $table = 'thresholds';
    protected $casts = ['speeds'=>'json'];
    protected $appends = ['url'];

    public function getUrlAttribute()
    {
        return Storage::url($this->thumb);
    }
}
