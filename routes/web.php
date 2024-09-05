<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\topicsController;
 use App\Http\Controllers\admin\contactsController;
use App\Http\Controllers\publicController;
use App\Http\Controllers\admin\categoryController;
use App\Http\Controllers\admin\messagesController;
use App\Http\Controllers\admin\testimonialsController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\admin\usersController;
use Illuminate\Auth\Events\Verified;


Route::get('/', function () {
    return view('welcome');
});
///{id}
Route::get('/index', [publicController::class, 'index'])->name('index');
Route::get('/contact', [publicController::class, 'contact'])->name('contact');
Route::get('/testimonial', [publicController::class, 'testimonial'])->name('testimonial');
Route::get('/topic-detail', [publicController::class, 'topicdetail'])->name('topic-detail');
Route::get('/topic-list', [publicController::class, 'topiclist'])->name('topic-list');
Route::get('/error', [publicController::class, 'error'])->name('error');



// ->middleware('verified');
Route::get('/topics', [topicsController::class, 'index'])->name('topics.index')->middleware('verified');
Route::get('/topics/create', [topicsController::class, 'create'])->name('topics.create');
Route::post('/topics', [topicsController::class, 'store'])->name('topics.store');
Route::get('/topics/{id}', [topicsController::class, 'show'])->name('topics.show');
Route::get('/topics/{id}/edit', [topicsController::class, 'edit'])->name('topics.edit');
Route::put('/topics/{id}', [topicsController::class, 'update'])->name('topics.update');
Route::delete('/topics/{id}', [topicsController::class, 'destroy'])->name('topics.destroy');
Route::patch('/topics/{id}/restore', [topicsController::class, 'restore'])->name('topics.restore');
Route::delete('/topics/{id}/forcedelete', [topicsController::class, 'forceDelete'])->name('topics.forcedelete');



//->middleware('verified');
Route::get('/categories', [categoryController::class, 'index'])->name('categories.index');
Route::get('/categories/create', [categoryController::class, 'create'])->name('categories.create');
Route::post('/categories', [categoryController::class, 'store'])->name('categories.store');
Route::get('/categories/{id}', [categoryController::class, 'show'])->name('categories.show');
Route::get('/categories/{id}/edit', [categoryController::class, 'edit'])->name('categories.edit');
Route::put('/categories/{id}', [categoryController::class, 'update'])->name('categories.update');
Route::delete('/categories/{id}', [categoryController::class, 'destroy'])->name('categories.destroy');




Route::get('/testimonials', [testimonialsController::class, 'index'])->name('testimonials.index');
Route::get('/testimonials/create', [testimonialsController::class, 'create'])->name('testimonials.create');
Route::post('/testimonials', [testimonialsController::class, 'store'])->name('testimonials.store');
Route::get('/testimonials/{id}', [testimonialsController::class, 'show'])->name('testimonials.show');
Route::get('/testimonials/{id}/edit', [testimonialsController::class, 'edit'])->name('testimonials.edit');
Route::put('/testimonials/{id}', [testimonialsController::class, 'update'])->name('testimonials.update');
Route::delete('/testimonials/{id}', [testimonialsController::class, 'destroy'])->name('testimonials.destroy');
Route::patch('/testimonials/{id}/restore', [testimonialsController::class, 'restore'])->name('testimonials.restore');
Route::delete('/testimonials/{id}/forcedelete', [testimonialsController::class, 'forceDelete'])->name('testimonials.forcedelete');




Route::get('/messages', [messagesController::class, 'index'])->name('messages.index');
Route::post('/messages', [messagesController::class, 'store'])->name('messages.store');
Route::get('/messages/{id}', [messagesController::class, 'show'])->name('messages.show');
Route::delete('/messages/{id}', [messagesController::class, 'destroy'])->name('messages.destroy');

// Route::get('/messages/create', [messagesController::class, 'create'])->name('messages.create');
//
// Route::get('/messages/{id}/edit', [messagesController::class, 'edit'])->name('messages.edit');
// Route::put('/messages/{id}', [topicsController::class, 'update'])->name('messages.update');
// Route::patch('/messages/{id}/restore', [topicsController::class, 'restore'])->name('messages.restore');
// Route::delete('/messages/{id}/forcedelete', [topicsController::class, 'forceDelete'])->name('messages.forcedelete');



Route::get('/users', [usersController::class, 'index'])->name('users.index');
Route::get('/users/create', [usersController::class, 'create'])->name('users.create');
Route::post('/users', [usersController::class, 'store'])->name('users.store');
Route::get('/users/{id}/edit', [usersController::class, 'edit'])->name('users.edit');
Route::put('/users/{id}', [usersController::class, 'update'])->name('users.update');
Route::delete('/users/{id}', [topicsController::class, 'destroy'])->name('users.destroy');

// Route::patch('/users/{id}/restore', [topicsController::class, 'restore'])->name('users.restore');
// Route::delete('/users/{id}/forcedelete', [topicsController::class, 'forceDelete'])->name('users.forcedelete');
// Route::get('/users/{id}', [usersController::class, 'show'])->name('users.show');




Route::get('/index', [PublicController::class, 'index'])->name('index');
Route::get('/testimonial', [PublicController::class, 'testimonial'])->name('testimonial');
Route::get('/topicdetail', [PublicController::class, 'topicdetail'])->name('topicdetail');
Route::get('/topiclist/{id}', [PublicController::class, 'topiclist'])->name('job-topiclist');
Route::get('/contact', [publicController::class, 'contact'])->name('contact');
Route::get('/error', [PublicController::class, 'error'])->name('error');










Auth::routes(['verify' => true]);
Route::post('/register', [RegisterController::class, 'store'])->name('register');
// Route::post('/login', [LoginController::class, 'login'])->name('login');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
// require base_path('routes/custom_routes.php');