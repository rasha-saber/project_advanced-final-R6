<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\topicsController;
 use App\Http\Controllers\admin\contactsController;
use App\Http\Controllers\publicController;
use App\Http\Controllers\admin\categoryController;
use App\Http\Controllers\admin\MessagesController;
use App\Http\Controllers\admin\testimonialsController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\admin\usersController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Auth\Events\Verified;


Route::get('/', function () {
    return view('welcome');
});
///{id}

Route::get('/index', [publicController::class, 'index'])->name('index');
Route::get('/contact', [publicController::class, 'contact'])->name('contact');
Route::get('/testimonial', [publicController::class, 'testimonial'])->name('testimonial');
Route::get('/topicdetail/{id}', [publicController::class, 'topicdetail'])->name('topicdetail');
Route::get('/topiclist', [publicController::class, 'topiclist'])->name('topiclist');
Route::get('/error', [publicController::class, 'error'])->name('error');
Route::get('/latest-topics', [publicController::class, 'index'])->name('latestTopics');
Route::get('/topics/increase-views/{id}', [PublicController::class, 'increaseViews'])->name('increaseViews');
Route::post('/topics/{id}/save', [PublicController::class, 'saveTopic'])->name('saveTopic');








 Route::prefix('topics')->middleware('verified')->group(function(){
Route::get('/', [topicsController::class, 'index'])->name('topics.index');
Route::get('/create', [topicsController::class, 'create'])->name('topics.create');
Route::post('/', [topicsController::class, 'store'])->name('topics.store');
Route::get('//{id}', [topicsController::class, 'show'])->name('topics.show');
Route::get('/{id}/edit', [topicsController::class, 'edit'])->name('topics.edit');
Route::put('/{id}', [topicsController::class, 'update'])->name('topics.update');
Route::delete('/{id}', [topicsController::class, 'destroy'])->name('topics.destroy');
// Route::patch('/{id}/restore', [topicsController::class, 'restore'])->name('topics.restore');
// Route::delete('/{id}/forcedelete', [topicsController::class, 'forceDelete'])->name('topics.forcedelete');
});






Route::prefix('categories')->middleware('verified')->group(function(){
//->middleware('verified');
Route::get('/', [categoryController::class, 'index'])->name('categories.index')->middleware('verified');
Route::get('/create', [categoryController::class, 'create'])->name('categories.create')->middleware('verified');
Route::post('/', [categoryController::class, 'store'])->name('categories.store')->middleware('verified');
Route::get('/{id}', [categoryController::class, 'show'])->name('categories.show')->middleware('verified');
Route::get('/{id}/edit', [categoryController::class, 'edit'])->name('categories.edit')->middleware('verified');
Route::put('/{id}', [categoryController::class, 'update'])->name('categories.update')->middleware('verified');
Route::delete('/{id}', [categoryController::class, 'destroy'])->name('categories.destroy')->middleware('verified');
});



Route::prefix('testimonials')->middleware('verified')->group(function(){
Route::get('/', [testimonialsController::class, 'index'])->name('testimonials.index')->middleware('verified');
Route::get('/create', [testimonialsController::class, 'create'])->name('testimonials.create')->middleware('verified');
Route::post('/', [testimonialsController::class, 'store'])->name('testimonials.store')->middleware('verified');
Route::get('/{id}', [testimonialsController::class, 'show'])->name('testimonials.show')->middleware('verified');
Route::get('/{id}/edit', [testimonialsController::class, 'edit'])->name('testimonials.edit')->middleware('verified');
Route::put('/{id}', [testimonialsController::class, 'update'])->name('testimonials.update')->middleware('verified');
Route::delete('/{id}', [testimonialsController::class, 'destroy'])->name('testimonials.destroy')->middleware('verified');
// Route::patch('/{id}/restore', [testimonialsController::class, 'restore'])->name('testimonials.restore')->middleware('verified');
// Route::delete('/{id}/forcedelete', [testimonialsController::class, 'forceDelete'])->name('testimonials.forcedelete')->middleware('verified');
});



Route::prefix('messages')->middleware('verified')->group(function(){
Route::get('/', [MessagesController::class, 'index'])->name('messages.index')->middleware('verified');
Route::post('/', [MessagesController::class, 'store'])->name('messages.store')->middleware('verified');
Route::get('/{id}', [MessagesController::class, 'show'])->name('messages.show')->middleware('verified');
Route::delete('/{id}', [MessagesController::class, 'destroy'])->name('messages.destroy')->middleware('verified');
});



Route::prefix('users')->middleware('verified')->group(function(){
Route::get('/', [usersController::class, 'index'])->name('users.index')->middleware('verified');
Route::get('/create', [usersController::class, 'create'])->name('users.create')->middleware('verified');
Route::post('/', [usersController::class, 'store'])->name('users.store')->middleware('verified');
Route::get('/{id}/edit', [usersController::class, 'edit'])->name('users.edit')->middleware('verified');
Route::put('/{id}', [usersController::class, 'update'])->name('users.update')->middleware('verified');
Route::delete('/{id}', [topicsController::class, 'destroy'])->name('users.destroy')->middleware('verified');
});











Auth::routes(['verify' => true]);
Route::post('/register', [RegisterController::class, 'store'])->name('register');
Route::post('/login', [LoginController::class, 'login'])->name('login');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home')->middleware('verified');
// require base_path('routes/custom_routes.php');