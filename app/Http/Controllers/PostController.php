<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth'])->except(['index', 'show']);
        $this->middleware('activity.log')->only(['store', 'update', 'destroy']);
    }

    public function index()
    {
        // cache for 2 minutes
        $posts = Cache::remember('posts.index', 120, function () {
            return Post::with(['user', 'comments.user'])->latest()->paginate(10);
        });
        

        return view('posts.index', compact('posts'));
    }

    public function loggedinUserPosts()
    {
        $user = Auth::user();
        $posts = Post::where('user_id', $user->id)
            ->with(['user', 'comments.user'])
            ->latest()
            ->paginate(10);
            
        return view('posts.userPost', compact('posts'));
    }

    public function create()
    {
        return view('posts.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
        ]);

        $post = Post::create([
            ...$request->only(['title', 'content']),
            'user_id' => Auth::id(),
        ]);

        Cache::forget('posts.index');

        return redirect()->route('posts.show', $post)->with('success', 'Post created.');
    }

    public function show(Post $post)
    {
        $post->load(['user', 'comments.user']);
        return view('posts.show', compact('post'));
    }

    public function edit(Post $post)
    {
        $this->authorize('update', $post);
        return view('posts.edit', compact('post'));
    }

    public function update(Request $request, Post $post)
    {
        $this->authorize('update', $post);
        $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
        ]);

        $post->update($request->only(['title', 'content']));
        Cache::forget('posts.index');

        return redirect()->route('posts.show', $post)->with('success', 'Post updated.');
    }

    public function destroy(Post $post)
    {
        $this->authorize('delete', $post);
        $post->delete();
        Cache::forget('posts.index');

        return redirect()->route('posts.index')->with('success', 'Post deleted.');
    }
}
