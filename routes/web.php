<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\Admin\UserController as AdminUserController;
use App\Http\Controllers\Admin\DashboardController;


Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('user-posts', [PostController::class,'loggedinUserPosts'])->name('posts.loggedinUserPosts');
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';


/*
| Web Routes
*/

Route::get('/', [PostController::class, 'index'])->name('home');
Route::resource('posts', PostController::class);

Route::post('posts/{post}/comments', [CommentController::class, 'store'])->name('comments.store');
Route::resource('comments', CommentController::class)->only(['edit','update','destroy']);

// Admin group
Route::prefix('admin')->name('admin.')->middleware(['auth','admin'])->group(function(){
    Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
    Route::resource('users', AdminUserController::class);
    Route::resource('posts', \App\Http\Controllers\Admin\PostController::class);
});

Route::fallback(function () {
    return response()->view('errors.404', [], 404);
});