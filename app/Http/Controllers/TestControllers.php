<?php


namespace App\Http\Controllers;


class TestController extends Controller
{
    public function index(){
        $res = 'res';

        return success_json($res);
    }
}
