<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('heros', HeroController::class);
    $router->resource('equipments', EquipmentController::class);
    $router->resource('thresholds', ThresholdController::class);

    $router->resource('temps', TempController::class);

});
