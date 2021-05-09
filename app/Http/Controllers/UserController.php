<?php

namespace App\Http\Controllers;

use App\Models\Hero;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function test(Request $request){
        $res = Hero::all();
        return $res;
    }
}
