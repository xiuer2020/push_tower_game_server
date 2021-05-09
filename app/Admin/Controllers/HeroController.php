<?php

namespace App\Admin\Controllers;

use App\Models\Hero;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class HeroController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Hero';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Hero());

        $grid->column('id', __('英雄Id'));
        $grid->column('name', __('英雄名称'));
        $grid->column('occupation', __('英雄职业'));
        $grid->column('proficiency', __('英雄熟练度'));
        $grid->column('launch_time', __('英雄上架时间'));
        $grid->column('combat_power', __('英雄战力值'));
        $grid->column('area_code', __('英雄区号'));
        $grid->column('out_loading', __('英雄出装'));
        $grid->column('poster', __('英雄海报'));
        $grid->column('full_body_video', __('英雄全身视频'));
        $grid->column('specialty', __('英雄特长'));
        $grid->column('output', __('英雄输出'));
        $grid->column('difficulty', __('英雄难度'));
        $grid->column('shunt', __('英雄分路'));
        $grid->column('race', __('英雄种族'));
        $grid->column('height', __('英雄身高'));
        $grid->column('energy', __('英雄能量'));
        $grid->column('power', __('英雄势力'));
        $grid->column('identity', __('英雄身份'));
        $grid->column('relevant', __('相关英雄'));
        $grid->column('maximum_health', __('英雄最大生命值'));
        $grid->column('maximum_mana', __('英雄最大法力值'));
        $grid->column('magic_attack', __('法术攻击'));
        $grid->column('physical_attack', __('物理攻击'));
        $grid->column('spell_defense', __('法术防御'));
        $grid->column('physical_defense', __('物理防御'));
        $grid->column('moving_speed', __('移速'));
        $grid->column('physical_penetration', __('物理穿透'));
        $grid->column('spell_penetration', __('法术穿透'));
        $grid->column('attack_speed', __('移速加成'));
        $grid->column('critical_hit_probability', __('暴击几率'));
        $grid->column('critical_hit_effect', __('暴击效果'));
        $grid->column('physical_blood_sucking', __('物理吸血'));
        $grid->column('sorcery_sucks_blood', __('法术吸血'));
        $grid->column('cooling_reduction', __('冷却缩减'));
        $grid->column('attack_range', __('攻击范围'));
        $grid->column('toughness', __('韧性'));
        $grid->column('return_blood', __('每5秒回血'));
        $grid->column('return_to_blue', __('每5秒回蓝'));
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
        $show = new Show(Hero::findOrFail($id));

        $show->field('id', __('英雄Id'));
        $show->field('name', __('英雄名称'));
        $show->field('occupation', __('英雄职业'));
        $show->field('proficiency', __('英雄熟练度'));
        $show->field('launch_time', __('英雄上架时间'));
        $show->field('combat_power', __('英雄战力值'));
        $show->field('area_code', __('英雄区号'));
        $show->field('out_loading', __('英雄出装'));
        $show->field('poster', __('英雄海报'));
        $show->field('full_body_video', __('英雄全身视频'));
        $show->field('specialty', __('英雄特长'));
        $show->field('output', __('英雄输出'));
        $show->field('difficulty', __('英雄难度'));
        $show->field('shunt', __('英雄分路'));
        $show->field('race', __('英雄种族'));
        $show->field('height', __('英雄身高'));
        $show->field('energy', __('英雄能量'));
        $show->field('power', __('英雄势力'));
        $show->field('identity', __('英雄身份'));
        $show->field('relevant', __('相关英雄'));
        $show->field('maximum_health', __('英雄最大生命值'));
        $show->field('maximum_mana', __('英雄最大法力值'));
        $show->field('magic_attack', __('法术攻击'));
        $show->field('physical_attack', __('物理攻击'));
        $show->field('spell_defense', __('法术防御'));
        $show->field('physical_defense', __('物理防御'));
        $show->field('moving_speed', __('移速'));
        $show->field('physical_penetration', __('物理穿透'));
        $show->field('spell_penetration', __('法术穿透'));
        $show->field('attack_speed', __('移速加成'));
        $show->field('critical_hit_probability', __('暴击几率'));
        $show->field('critical_hit_effect', __('暴击效果'));
        $show->field('physical_blood_sucking', __('物理吸血'));
        $show->field('sorcery_sucks_blood', __('法术吸血'));
        $show->field('cooling_reduction', __('冷却缩减'));
        $show->field('attack_range', __('攻击范围'));
        $show->field('toughness', __('韧性'));
        $show->field('return_blood', __('每5秒回血'));
        $show->field('return_to_blue', __('每5秒回蓝'));
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
        $form = new Form(new Hero());

        $form->text('id', __('英雄Id'));
        $form->text('name', __('英雄名称'));
//        $form->text('occupation', __('英雄职业'));
        $form->list('occupation', __('英雄职业'));
        $form->text('proficiency', __('英雄熟练度'));
        $form->datetime('launch_time', __('英雄上架时间'));
        $form->text('combat_power', __('英雄战力值'));
        $form->text('area_code', __('英雄区号'));

//        $form->text('out_loading', __('英雄出装'));
        $form->list('out_loading', __('英雄出装'));
        $form->image('poster', __('英雄海报'));
        $form->file('full_body_video', __('英雄全身视频'));
//        $form->text('specialty', __('英雄特长'));
        $form->list('specialty', __('英雄特长'));
        $form->text('output', __('英雄输出'));
        $form->text('difficulty', __('英雄难度'));
        $form->text('shunt', __('英雄分路'));
        $form->text('race', __('英雄种族'));
        $form->text('height', __('英雄身高'));
        $form->text('energy', __('英雄能量'));
        $form->text('power', __('英雄势力'));
        $form->text('identity', __('英雄身份'));
        $form->text('relevant', __('相关英雄'));
        $form->text('maximum_health', __('英雄最大生命值'));
        $form->text('maximum_mana', __('英雄最大法力值'));
        $form->text('magic_attack', __('法术攻击'));
        $form->text('physical_attack', __('物理攻击'));
        $form->text('spell_defense', __('法术防御'));
        $form->text('physical_defense', __('物理防御'));
        $form->text('moving_speed', __('移速'));
        $form->text('physical_penetration', __('物理穿透'));
        $form->text('spell_penetration', __('法术穿透'));
        $form->text('attack_speed', __('移速加成'));
        $form->text('critical_hit_probability', __('暴击几率'));
        $form->text('critical_hit_effect', __('暴击效果'));
        $form->text('physical_blood_sucking', __('物理吸血'));
        $form->text('sorcery_sucks_blood', __('法术吸血'));
        $form->text('cooling_reduction', __('冷却缩减'));
        $form->text('attack_range', __('攻击范围'));
        $form->text('toughness', __('韧性'));
        $form->text('return_blood', __('每5秒回血'));
        $form->text('return_to_blue', __('每5秒回蓝'));
        $form->text('created_at', __('创建时间'));
        $form->text('updated_at', __('更新时间'));

        return $form;
    }
}
