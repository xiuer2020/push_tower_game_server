<?php

namespace App\Admin\Controllers;

use App\Models\Equipment;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class EquipmentController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Equipment';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Equipment());

        $grid->filter(function($filter){
            $filter->disableIdFilter();
            $filter->equal('type', '装备类型');
        });

        $grid->column('id', __('装备Id'));
        $grid->column('name', __('装备名称'));
        $grid->column('price', __('装备价格'));
        $grid->column('type', __('装备类型'));
        $grid->column('picture', __('装备图片'))->image();
        $grid->column('created_at', __('创建时间'));
        $grid->column('updated_at', __('更新时间'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Equipment::findOrFail($id));

        $show->field('id', __('装备Id'));
        $show->field('name', __('装备名称'));
        $show->field('price', __('装备价格'));
        $show->field('type', __('装备类型'));
        $show->field('picture', __('装备图片'));
        $show->field('created_at', __('创建时间'));
        $show->field('updated_at', __('更新时间'));


        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Equipment());

        $type_options = ["攻击" => "攻击",
            "法术" => "法术",
            "防御" => "防御",
            "移动" => "移动",
            "打野" => "打野",
            "游走" => "游走"];


        $form->text('name', __('装备名称'))->default('name');
        $form->number('price', __('装备价格'))->default('1');
        $form->radio('type', __('装备类型'))->options($type_options)->default('攻击');
        $form->image('picture', __('装备图片'));

        return $form;
    }
}
