<?php


namespace App\Admin\Controllers;

use App\Models\Hero;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Http\Request;
use App\Models\User;

class TestController
{
    protected $title = 'Test';

    public function Grid(){
        $grid = new Grid(new Test());

        $grid->fixColumns();
        $grid->filter(function ($filter) {

            // 去掉默认的id过滤器
            $filter->disableIdFilter();

            // 在这里添加字段过滤器
            $filter->like('occupation', '英雄职业');
        });
    }
}
