<?php

namespace App\Http\Controllers;

use App\Models\Hero;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function test(Request $request)
    {
//        $res = Hero::select('name')->orderBy('launch_time', 'asc')->get();
//            return success_json($res);
        $num = 1420041600;
        $date = date_create();
        $arr = ["张飞","后羿","牛魔","孙悟空","亚瑟","张良","艾琳","花木兰","王昭君","韩信","姜子牙","露娜","程咬金","安琪拉","貂蝉","老夫子","武则天","项羽","达摩","狄仁杰","宫本武藏","典韦","曹操","甄姬","周瑜","吕布","芈月","白起","扁鹊","孙膑","钟无艳","阿轲","高渐离","刘禅","庄周","鲁班七号","孙尚香","嬴政","妲己","墨子","赵云","小乔","廉颇","刘备","兰陵王","娜可露露","李白","钟馗","李元芳","刘邦","不知火舞","虞姬","关羽","蔡文姬","夏侯惇","雅典娜","马可波罗","橘右京","成吉思汗","杨戬","太乙真人","哪吒","诸葛亮","黄忠","大乔","东皇太一","干将莫邪","伽罗","李信","鬼谷子","铠","百里守约","百里玄策","苏烈","梦奇","女娲","明世隐","公孙离","杨玉环","配擒虎","奕星","狂铁","米莱迪","元歌","孙策","司马懿","盾山","沈梦溪","上官婉儿","嫦娥","猪八戒","盘古","瑶","云中君","曜","马超","西施","鲁班大师","蒙犽","镜","蒙恬","阿古朵","夏洛特","澜","司空震"];

        $length = count($arr);
        for($x=0;$x<$length;$x++)
        {
            $date = date_timestamp_set($date, $num);
            $num += 86400;
//            Hero::where('name', $arr[$x])->update(['launch_time'=> $date]);
            $res = 'images/'.$arr[$x].'.jpg';
            Hero::where('name', $arr[$x])->update(['head_portrait'=> $res]);

        }

//        $userdate = date("Y-m-d H:i:s",time());
        return success_json('images/'.$arr[1].'.jpg');

    }
}


