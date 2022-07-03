<?php

use App\Http\Controllers\DashboardPostController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', function () {
    return view('home',[
        'title' => 'home',
        'active'=>'home'
    ]);
});

Route::get('/about', function () {
    return view('about',[
        'title' => 'about',
        'active'=>'about',
        'name' => 'febri gilang pra',
        'jobs' => 'programer'
    ]);
});


Route::get('/posts',[PostController::class, 'index'] );
// Halaman single route
Route::get('posts/{post:slug}',[PostController::class,'show']);

Route::get('/categories',function(){
    return view('categories', [
        'title'=> 'Post Categories',
        'active'=> 'categories',
        'categories' => Category::all()
    ]);
});



// Route::get('categories/{category:slug}',function(Category $category){
//     return view('posts',[
//         'title'=>"Post by Category : $category->name",
//         'active'=> 'categories',
//         // * load digunakan untuk lazy eager loading untuk mengatasi n+1 dan meningkat kan perfomance web, test perfomace dengan menggunakan clockwork
//         'posts'=> $category->posts->load('category','author'),
//     ]);
// });


// Route::get('/authors/{author:username}', function(User $author){
//     return view('posts',[
//         'title'=>"Post By Author : $author->name",
//         'active'=> 'posts',

//         // * load digunakan untuk lazy eager loading untuk mengatasi n+1 dan meningkat kan perfomance web, test perfomace dengan menggunakan clockwork

//         'posts'=> $author->posts->load('category','author'),

//     ]);
// });


 Route::get('/login',[LoginController::class, 'index'])->name('login')->middleware('guest');
 Route::post('/login',[LoginController::class, 'authenticate']);
 Route::post('/logout',[LoginController::class, 'logout']);
 

 Route::get('/register',[RegisterController::class, 'index'])->middleware('guest');
 Route::post('/register',[RegisterController::class, 'store']);

 Route::get('/dashboard', fn()=> view('dashboard.index'))->middleware('auth');

 Route::get('/dashboard/posts/checkSlug',[DashboardPostController::class,'checkSlug'])->middleware('auth');
 
 Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');