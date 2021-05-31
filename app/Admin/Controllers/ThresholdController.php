<?php

namespace App\Admin\Controllers;

use App\Models\Threshold;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ThresholdController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Threshold';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Threshold());

        $grid->column('id', 'id');
        $grid->column('speeds', 'speeds');
        $grid->column('thumb', 'thumb')->image();
        $grid->column('created_at', 'created_at');

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
        $show = new Show(Threshold::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Threshold());

        $form->list('speeds', __('攻速阈值'));
        $form->image('thumb', __('封面图片'))->uniqueName();


        return $form;
    }
}
