<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\PostResource;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Validator;

class PostController extends Controller
{
    public function index(Request $request)
    {
        $pageSize = (int) $request->query('per_page', 10);
        $cacheKey = "api:posts:page:{$request->query('page', 1)}:per:{$pageSize}";

        $paginator = Cache::remember($cacheKey, 60, function () use ($pageSize) {
            return Post::with(['user', 'comments'])
                ->latest()
                ->paginate($pageSize);
        });

        return PostResource::collection($paginator)->response();
    }

    public function show(Post $post)
    {
        $post->loadMissing(['user', 'comments.user']);
        return new PostResource($post);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'content' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        $post = Post::create([
            ...$request->only(['title', 'content']),
            'user_id' => $request->user()->id,
        ]);

        Cache::flush();
        return new PostResource($post);
    }

    public function update(Request $request, Post $post)
    {
        $this->authorize('update', $post);

        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'content' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validator->errors(),
            ], 422);
        }

        $post->update($validator->validated());

        Cache::flush();
        return new PostResource($post);
    }

    public function destroy(Request $request, Post $post)
    {
        $this->authorize('delete', $post);

        $post->delete();
        Cache::flush();

        return response()->json([
            'success' => true,
            'message' => 'Deleted'
        ], 200);
    }

    public function adminIndex()
    {
        $posts = Post::withTrashed()->with(['user'])->latest()->paginate(20);
        return PostResource::collection($posts);
    }

    public function restore($postId)
    {
        $post = Post::withTrashed()->findOrFail($postId);
        $post->restore();
        return new PostResource($post);
    }

    public function forceDelete($postId)
    {
        $post = Post::withTrashed()->findOrFail($postId);
        $post->forceDelete();

        return response()->json([
            'success' => true,
            'message' => 'Permanently deleted'
        ]);
    }
}
