@extends('layouts.app')

@section('content')
<div class="max-w-3xl mx-auto">
    <div class="flex items-center justify-between mb-5">
        <h1 class="text-2xl font-bold text-white mt-2">Edit Comment</h1>
        <a href="{{ route('posts.show', $comment->post_id) }}" class="px-4 py-2 mt-2 bg-gray-500 text-white rounded">Back</a>
    </div>

    <form action="{{ route('comments.update', $comment) }}" method="POST">
        @csrf
        @method('PUT')

        <textarea name="body" rows="5" class="w-full border p-3 rounded">{{ $comment->body }}</textarea>

        <button class="px-4 py-2 bg-blue-600 text-white rounded mt-4">Update</button>
    </form>

    
    </form>

</div>
@endsection
