<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\KayuController;
use App\Http\Controllers\PembeliController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LoginController;




/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/',function(){
    return view('dashboard',[
        "title"=>"Dashboard"
    ]);
});
Route::resource('kayu',KayuController::class);

Route::resource('user',UserController::class)->except('destroy','create','show','update',"edit");

Route::resource('pembeli',PembeliController::class)->except('destroy');

Route::get('login',[LoginController::class,'loginView'])->name('login');

Route::post('login',[LoginController::class,'authenticate']);


