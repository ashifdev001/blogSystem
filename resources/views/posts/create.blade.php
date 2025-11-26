@extends('layouts.app')

@section('content')
<div class="max-w-3xl mx-auto">

    <h1 class="text-2xl font-bold mb-5 text-white">Create New Post</h1>

    <form action="{{ route('posts.store') }}" method="POST">
        @csrf

        <label class="block mb-2 font-semibold text-white">Title</label>
        <input type="text" name="title" class="w-full border p-3 rounded" required>

        <label class="block mt-4 mb-2 font-semibold text-white">Content</label>
        <textarea name="content" rows="10" class="w-full border p-3 rounded" required></textarea>

        <button class="px-4 py-2 bg-blue-600 text-white rounded mt-4">Save</button>
    </form>
</div>
@endsection
