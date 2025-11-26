@extends('layouts.app')

@section('content')
<div class="max-w-3xl mx-auto">

    <h1 class="text-2xl font-bold mb-5 text-white">Edit Post</h1>

    <form action="{{ route('posts.update', $post) }}" method="POST">
        @csrf
        @method('PUT')

        <label class="block mb-2 font-semibold text-white">Title</label>
        <input type="text" name="title" value="{{ $post->title }}" class="w-full border p-3 rounded">

        <label class="block mt-4 mb-2 font-semibold text-white">Content</label>
        <textarea name="content" rows="10" class="w-full border p-3 rounded">{{ $post->content }}</textarea>

        <button class="px-4 py-2 bg-blue-600 text-white rounded mt-4">Update</button>
    </form>
</div>
@endsection
