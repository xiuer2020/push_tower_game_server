<?php

namespace App\Http\Controllers;

use App\Models\Equipment;
use App\Models\Hero;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function test(Request $request)
    {
//        $res = Equipment::select('name')->get();
//            return success_json($res);
        $num = 1420041600;
        $date = date_create();
        $arr = ["铁剑","匕首","搏击拳套","吸血之镰","风暴巨剑","日冕","狂暴双刃","陨星","雷鸣刀","充能拳套","破魔刀","名刀,司命","寒霜袭侵","速击之枪","碎心锤","穿云弓","制裁之刃","纯净苍穹","末世","泣血之刃","无尽战刃","宗师之力","闪电匕首","影刃","暗影战斧","破军","逐日之弓","破晓","日渊","咒术典籍","蓝宝石","炼金护符","圣者法典","元素杖","大棒","血族之书","光辉之剑","魔道之石","进化水晶","炽热支配者","破碎圣杯","辉月","云灵木","日暮之流","黄金圣剑","梦魇之牙","圣杯","虚无法杖","博学者之怒","回响之杖","凝冰之息","痛苦面具","巫师法杖","时之预言","贤者之书","噬神之书","月神","红玛瑙","布甲","抗魔披风","提神水晶","力量腰带","熔炼之心","神隐斗篷","雪山圆盾","守护者之铠","反伤刺甲","血魔之怒","冰霜冲击","荆棘护手","暗夜小甲","原初遗珠","红莲斗篷","霸者重装","不祥征兆","不死鸟之眼","魔女斗篷","极寒风暴","贤者的庇护","爆烈之甲","永夜守护","怒魂","凛冬","冰痕之握","神速之靴","影忍之足","抵抗之靴","冷静之靴","秘法之靴","急速之靴","疾步之靴","狩猎宽刃","弃鳞短刃","游击弯刀","巡守利斧","追击刀锋","龙鳞利剑","符文大剑","巨人之握","贪婪之噬","浴火之怒","学识宝石","凤鸣指环","风之轻语","风灵文章","鼓舞之盾","极影","救赎之翼","奔狼文章","近卫荣耀"];

        $length = count($arr);
        for($x=0;$x<$length;$x++)
        {
            $date = date_timestamp_set($date, $num);
            $num += 86400;
//            Hero::where('name', $arr[$x])->update(['launch_time'=> $date]);
            $res = 'images/'.$arr[$x].'.jpg';
            Equipment::where('name', $arr[$x])->update(['picture'=> $res]);

        }

//        $userdate = date("Y-m-d H:i:s",time());
        return success_json('images/'.$arr[1].'.jpg');

    }
}


