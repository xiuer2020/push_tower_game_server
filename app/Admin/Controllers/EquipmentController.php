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

        $grid->column('id', __('装备Id'));
        $grid->column('name', __('装备名称'));
        $grid->column('price', __('装备价格'));
        $grid->column('type', __('装备类型'));
        $grid->column('picture', __('装备图片'));
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

        $form->text('name', __('装备名称'));
        $form->number('price', __('装备价格'));
        $form->text('type', __('装备类型'));
//        $form->image('picture', __('装备图片'));
        $form->text('picture', __('装备图片'));

        return $form;
    }
}
