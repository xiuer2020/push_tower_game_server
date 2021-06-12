<?php

namespace App\Http\Controllers;

use App\Models\Equipment;
use App\Models\Hero;
use App\Models\Threshold;
use App\Models\User;
use Illuminate\Http\Request;
use function Illuminate\Events\queueable;

class UserController extends Controller
{
    public function test(Request $request)
    {
        $records = Hero::all();

        foreach ($records as $value){
            $x = ($value->physical_defense-$value->min_physical_defense)/14;
            $res = Hero::where('id', $value->id)->update([
                'growth_physical_defense'=>floor($x)
            ]);
//            $res =  ;
        }


        $res = Hero::select('growth_physical_defense')->get();

      //        $res = 'res';
        return success_json($res);

    }
}


