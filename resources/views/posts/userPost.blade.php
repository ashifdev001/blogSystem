@extends('layouts.app-loggedin')

@section('sidebar-content')
<div class="max-w-4xl mx-auto">

    <div class="flex justify-between items-center mb-6">
        <h1 class="text-2xl font-bold text-white">All Posts</h1>

        @auth
        <a href="{{ route('posts.create') }}" class="px-4 py-2 bg-blue-600 text-white rounded mt-2">
            + New Post
        </a>
        @endauth
    </div>

    @foreach($posts as $post)
    <div class="bg-white p-5 rounded shadow mb-5">
        <h2 class="text-xl font-bold">
            <a href="{{ route('posts.show', $post) }}" class="text-blue-700">
                {{ $post->title }}
            </a>
        </h2>

        <p class="text-gray-700 mt-2">{{ Str::limit($post->content, 150) }}</p>

        <div class="text-gray-500 text-sm mt-3">
            By {{ $post->user->name }} • {{ $post->created_at->diffForHumans() }}
        </div>
    </div>
    @endforeach

    {{ $posts->links() }}

</div>
@endsection
