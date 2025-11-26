@extends('layouts.app')

@section('content')
<div class="max-w-4xl mx-auto">

    <h1 class="text-3xl font-bold mb-3 text-white">{{ $post->title }}</h1>

    <div class="text-gray-500 mb-6">
        By {{ $post->user->name }} • {{ $post->created_at->diffForHumans() }}
    </div>

    <div class="bg-white p-6 rounded shadow mb-6">
        {!! nl2br(e($post->content)) !!}
    </div>

    @can('update', $post)
    <div class="flex gap-3 mb-6">
        <a href="{{ route('posts.edit', $post) }}" class="px-4 py-2 bg-yellow-500 text-white rounded">Edit</a>

        <form action="{{ route('posts.destroy', $post) }}" method="POST">
            @csrf
            @method('DELETE')
            <button class="px-4 py-2 bg-red-600 text-white rounded">Delete</button>
        </form>
    </div>
    @endcan

    <h2 class="text-xl font-bold mb-4 text-white">Comments</h2>

    @foreach ($post->comments as $comment)
    <div class="bg-gray-100 p-4 rounded mb-3">
        <div class="font-semibold">{{ $comment->user->name }}</div>
        <div class="text-gray-700">{{ $comment->body }}</div>
        <div class="text-sm text-gray-500">{{ $comment->created_at->diffForHumans() }}</div>

        @can('update', $comment)
        <a href="{{ route('comments.edit', $comment) }}" class="text-blue-600 text-sm">Edit</a>
        @endcan

        @can('delete', $comment)
        <form action="{{ route('comments.destroy', $comment) }}" method="POST" class="inline-block ml-2">
            @csrf @method('DELETE')
            <button class="text-red-600 text-sm">Delete</button>
        </form>
        @endcan
    </div>
    @endforeach

    @auth
    <form action="{{ route('comments.store', $post) }}" method="POST" class="mt-5">
        @csrf
        <textarea name="body" rows="3" class="w-full border p-3 rounded" placeholder="Write a comment..."></textarea>
        <button class="px-4 py-2 bg-blue-600 text-white rounded mt-2">Post Comment</button>
    </form>
    @endauth

</div>
@endsection
