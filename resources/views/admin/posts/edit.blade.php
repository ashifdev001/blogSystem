@extends('layouts.app-loggedin')

@section('sidebar-content')
<div class="max-w-3xl mx-auto">
    <h1 class="text-2xl font-bold mb-5 text-white mt-2">Edit Post (Admin)</h1>
     <form action="{{ route('admin.posts.update', $post) }}" method="POST" class="text-white">
        @csrf
        @method('PUT')

        <label class="block mb-2 font-semibold">Title</label>
         <input type="text" name="title" class="w-full border p-3 rounded bg-gray-800 text-white"
             value="{{ $post->title }}" required>

        <label class="block mt-4 mb-2 font-semibold">Content</label>
         <textarea name="content" rows="12" class="w-full border p-3 rounded bg-gray-800 text-white"
             required>{{ $post->content }}</textarea>

        <label class="block mt-4 mb-2 font-semibold">Author</label>
         <input type="text" disabled class="w-full border p-3 bg-gray-800 text-white rounded"
             value="{{ $post->user ? $post->user->name : '' }}">

        <button class="px-4 py-2 bg-blue-600 text-white rounded mt-5">Update Post</button>
    </form>
</div>
@endsection
