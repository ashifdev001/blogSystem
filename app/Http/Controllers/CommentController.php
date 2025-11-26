<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;

class CommentController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth']);
        $this->middleware('activity.log')->only(['store','update','destroy']);
    }

    public function store(Request $request, Post $post)
    {
        $request->validate(['body'=>'required|string']);
        $comment = $post->comments()->create([
            'body' => $request->body,
            'user_id' => Auth::id(),
        ]);
        Cache::forget("post.{$post->id}.comments");
        return back()->with('success','Comment added.');
    }

    public function edit(Comment $comment)
    {
        $this->authorize('update', $comment);
        return view('comments.edit', compact('comment'));
    }

    public function update(Request $request, Comment $comment)
    {
        $this->authorize('update', $comment);
        $request->validate(['body'=>'required|string']);
        $comment->update(['body'=>$request->body]);
        Cache::forget("post.{$comment->post_id}.comments");
        return redirect()->route('posts.show', $comment->post_id)->with('success','Comment updated.');
    }

    public function destroy(Comment $comment)
    {
        $this->authorize('delete', $comment);
        $comment->delete();
        Cache::forget("post.{$comment->post_id}.comments");
        return back()->with('success','Comment removed.');
    }
}
