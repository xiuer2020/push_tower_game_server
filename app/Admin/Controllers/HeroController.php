<?php

namespace App\Admin\Controllers;

use App\Models\Hero;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Http\Request;
use App\Models\User;

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

        $grid->filter(function ($filter) {

            // 去掉默认的id过滤器
            $filter->disableIdFilter();

            // 在这里添加字段过滤器
            $filter->like('occupation', '英雄职业');
        });
//        $grid->fixColumns(1,-3);


        $grid->quickSearch('name');
        $grid->model()->orderBy('add_time', 'asc');

        $grid->column('name', __('英雄名称'));
//        $grid->column('id', 'id');
        $grid->column('proficiency', __('英雄熟练度'));
        $grid->column('add_time', __('英雄上架时间'));
        $grid->column('combat_power', __('英雄战力值'));
        $grid->column('area_code', __('英雄区号'));
        $grid->column('out_loading', __('英雄出装'))->display(function ($arr) {
            $newArr = $arr[0];
            if (count($arr) > 1) {
                array_shift($arr);
                foreach ($arr as $index => $value) {
                    $newArr = $newArr . ',' . $value;
                }
                return $newArr;
            } else {
                return $newArr;
            }
        });
        $grid->column('poster', __('英雄海报'));
        $grid->column('full_body_video', __('英雄全身视频'));
        $grid->column('occupation', __('英雄职业'))->display(function ($arr) {
            $newArr = $arr[0];
            if (count($arr) > 1) {
                array_shift($arr);
                foreach ($arr as $index => $value) {
                    $newArr = $newArr . ',' . $value;
                }
                return $newArr;
            } else {
                return $newArr;
            }
        });
        $grid->column('location', __('英雄定位'));
        $grid->column('specialty', __('英雄特长'))->display(function ($arr) {
            $newArr = $arr[0];
            if (count($arr) > 1) {
                array_shift($arr);
                foreach ($arr as $index => $value) {
                    $newArr = $newArr . ',' . $value;
                }
                return $newArr;
            } else {
                return $newArr;
            }
        });
        $grid->column('period', __('英雄时期'));
        $grid->column('existence', __('英雄生存'));
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
        $show->field('proficiency', __('英雄熟练度'));
        $show->field('add_time', __('英雄上架时间'));
        $show->field('combat_power', __('英雄战力值'));
        $show->field('area_code', __('英雄区号'));
        $show->field('out_loading', __('英雄出装'));
        $show->field('poster', __('英雄海报'));
        $show->field('full_body_video', __('英雄全身视频'));
        $show->field('occupation', __('英雄职业'));
        $show->field('location', __('英雄定位'));
        $show->field('specialty', __('英雄特长'));
        $show->field('period', __('英雄时期'));
        $show->field('existence', __('英雄生存'));
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

        $occupationOptions = ['坦克' => '坦克', '战士' => '战士', '刺客' => '刺客', '法师' => '法师', '射手' => '射手', '辅助' => '辅助'];
        $locationOptions = [
            "先锋坦克" => "先锋坦克",
            "阵地法师" => "阵地法师",
            "先锋战士" => "先锋战士",
            "进攻辅助" => "进攻辅助",
            "刺杀战士" => "刺杀战士",
            "守护坦克" => "守护坦克",
            "战术辅助" => "战术辅助",
            "重装战士" => "重装战士",
            "守护辅助" => "守护辅助",
            "冲锋战士" => "冲锋战士",
            "狂战士" => "狂战士",
            "控场法师" => "控场法师",
            "游斗刺客" => "游斗刺客",
            "爆发战士" => "爆发战士",
            "爆发刺客" => "爆发刺客",
            "重炮射手" => "重炮射手",
            "突袭法师" => "突袭法师",
            " 炮台法师" => " 炮台法师",
            "炮台法师" => "炮台法师",
            "灵巧射手" => "灵巧射手",
            "连珠射手" => "连珠射手",
            "增益辅助" => "增益辅助"];
        $specialtyOptions = [
            "团控" => "团控",
            "团队增益" => "团队增益",
            "持续输出" => "持续输出",
            "法力护盾" => "法力护盾",
            "单带" => "单带",
            "回复" => "回复",
            "突进" => "突进",
            "持续控制" => "持续控制",
            "格挡" => "格挡",
            "先手" => "先手",
            "支援" => "支援",
            "推进" => "推进",
            "收割" => "收割",
            "远程消耗" => "远程消耗",
            "复活" => "复活",
            "承伤" => "承伤",
            "冲锋" => "冲锋",
            "战士" => "战士",
            "吸血" => "吸血",
            "吸收伤害" => "吸收伤害",
            "爆发" => "爆发",
            "真伤" => "真伤",
            "护盾" => "护盾",
            "治疗" => "治疗",
            "超远视距" => "超远视距",
            "减伤" => "减伤",
            "消耗" => "消耗",
            "传送" => "传送",
            "加速" => "加速",
            "控制" => "控制",
            "冰冻" => "冰冻",
            "全图支援" => "全图支援",
            "距离减伤" => "距离减伤",
            "群伤" => "群伤"];
        $periodOptions = ["前期" => "前期",
            "均衡" => "均衡",
            "后期" => "后期",
            " 后期" => " 后期",
            "中期" => "中期"];
        $shuntOptions = ["对抗路" => "对抗路",
            "打野" => "打野",
            "中路" => "中路",
            "游走" => "游走",
            "发育路" => "发育路"];
        $raceOptions = ["人类" => "人类",
            "人造人" => "人造人",
            "魔种" => "魔种",
            "人魔混血" => "人魔混血",
            "神职者" => "神职者",
            "超智慧体" => "超智慧体",
            "精灵" => "精灵"];
        $powerOptions = ["蜀" => "蜀",
            "玄雍" => "玄雍",
            "日之塔" => "日之塔",
            "长安" => "长安",
            "云梦泽" => "云梦泽",
            "长城守卫军" => "长城守卫军",
            "稷下学院" => "稷下学院",
            "灞上" => "灞上",
            "倒悬天" => "倒悬天",
            "吴" => "吴",
            "魏" => "魏",
            "鸿门" => "鸿门",
            "日落神殿" => "日落神殿",
            "稷下学院" => "稷下学院",
            "扶桑" => "扶桑",
            "海都家族" => "海都家族",
            "海都" => "海都",
            "尧天" => "尧天",
            "日落圣殿" => "日落圣殿",
            "南荒" => "南荒",
            "金庭国" => "金庭国",
            "狼旗" => "狼旗",
            "黄金森林" => "黄金森林",
            "稷下" => "稷下"
        ];


        $form->text('name', __('英雄名称'))->default('name');
        $form->number('proficiency', __('英雄熟练度'))->default('1');
        $form->datetime('add_time', __('英雄上架时间'))->default('2021-05-29 00:00:00');
        $form->number('combat_power', __('英雄战力值'))->default('1');
        $form->number('area_code', __('英雄区号'))->default('1');
        $form->list('out_loading', __('英雄出装'));
        $form->image('poster', __('英雄海报'))->default('images/error.png');
        $form->file('full_body_video', __('英雄全身视频'))->default('files/error.png');
        $form->checkbox('occupation', __('英雄职业'))->options($occupationOptions);
        $form->radio('location', __('英雄定位'))->options($locationOptions)->default('先锋坦克');
        $form->checkbox('specialty', __('英雄特长'))->options($specialtyOptions);
        $form->radio('period', __('英雄时期'))->options($periodOptions)->default('前期');
        $form->slider('existence', __('英雄生存'))->default('30');
        $form->slider('output', __('英雄输出'))->default('1');
        $form->slider('difficulty', __('英雄难度'))->default('1');
        $form->radio('shunt', __('英雄分路'))->options($shuntOptions)->default('对抗路');
        $form->radio('race', __('英雄种族'))->options($raceOptions)->default('人类');
        $form->number('height', __('英雄身高'))->default('1');
        $form->text('energy', __('英雄能量'))->default('energy');
        $form->radio('power', __('英雄势力'))->options($powerOptions)->default('蜀');
        $form->list('identity', __('英雄身份'));
        $form->keyValue('relevant', __('相关英雄'));
        $form->number('maximum_health', __('英雄最大生命值'))->default('1');
        $form->number('maximum_mana', __('英雄最大法力值'))->default('1');
        $form->number('magic_attack', __('法术攻击'))->default('1');
        $form->number('physical_attack', __('物理攻击'))->default('1');
        $form->number('spell_defense', __('法术防御'))->default('1');
        $form->number('physical_defense', __('物理防御'))->default('1');
        $form->number('moving_speed', __('移速'))->default('1');
        $form->number('physical_penetration', __('物理穿透'))->default('1');
        $form->number('spell_penetration', __('法术穿透'))->default('1');
        $form->number('attack_speed', __('移速加成'))->default('1');
        $form->number('critical_hit_probability', __('暴击几率'))->default('1');
        $form->number('critical_hit_effect', __('暴击效果'))->default('1');
        $form->number('physical_blood_sucking', __('物理吸血'))->default('1');
        $form->number('sorcery_sucks_blood', __('法术吸血'))->default('1');
        $form->number('cooling_reduction', __('冷却缩减'))->default('1');
        $form->number('attack_range', __('攻击范围'))->default('1');
        $form->number('toughness', __('韧性'))->default('1');
        $form->number('return_blood', __('每5秒回血'))->default('1');

        return $form;
    }
}
