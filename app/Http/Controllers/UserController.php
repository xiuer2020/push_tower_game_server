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
        $res = Hero::select('power')->get();

//        $res = 'res';
        return success_json($res);

    }
}


