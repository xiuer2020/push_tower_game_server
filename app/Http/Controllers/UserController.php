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
        $res = Threshold::all();

//        $res = 'res';
        return success_json($res);

    }
}


