<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\PostController as ApiPostController;
use App\Http\Controllers\Api\CommentController as ApiCommentController;
use App\Http\Controllers\Api\Admin\UserController as AdminUserApiController;

Route::prefix('v1')->group(function () {
    // Public
    Route::post('register', [AuthController::class, 'register']);
    Route::post('login',    [AuthController::class, 'login']);
    Route::post('logout',   [AuthController::class, 'logout'])->middleware('auth:sanctum');

    Route::get('posts', [ApiPostController::class, 'index']);
    Route::get('posts/{post}', [ApiPostController::class, 'show']);

    // Protected - authenticated users
    Route::middleware('auth:sanctum')->group(function () {
        Route::post('posts', [ApiPostController::class, 'store']);
        Route::put('posts/{post}', [ApiPostController::class, 'update']);
        Route::delete('posts/{post}', [ApiPostController::class, 'destroy']);

        Route::post('posts/{post}/comments', [ApiCommentController::class, 'store']);
        Route::put('comments/{comment}', [ApiCommentController::class, 'update']);
        Route::delete('comments/{comment}', [ApiCommentController::class, 'destroy']);

        // Admin-only endpoints
        Route::middleware('admin')->prefix('admin')->group(function () {
            Route::get('users', [AdminUserApiController::class, 'index']);
            Route::put('users/{user}', [AdminUserApiController::class, 'update']);
            Route::delete('users/{user}', [AdminUserApiController::class, 'destroy']);
            Route::get('posts', [ApiPostController::class, 'adminIndex']);
            Route::put('posts/{post}/restore', [ApiPostController::class, 'restore']);
            Route::delete('posts/{post}/force', [ApiPostController::class, 'forceDelete']);
        });
    });
});
