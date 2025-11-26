<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index()
    {
        $users = \App\Models\User::count();
        $posts = \App\Models\Post::count();
        $comments = \App\Models\Comment::count();
        if(Auth::user()->role == 'admin'){
            return view('admin.dashboard', compact('users', 'posts', 'comments'));
        }else{
            return redirect()->route('posts.loggedinUserPosts');
        }
    }
}
