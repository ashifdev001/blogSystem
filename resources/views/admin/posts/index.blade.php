@extends('layouts.app-loggedin')

@section('sidebar-content')
<div class="max-w-6xl mx-auto text-white">
    <h1 class="text-2xl font-bold mb-4">Manage Posts</h1>
    <table class="w-full border-collapse">
        <thead>
            <tr class="bg-gray-800 text-left">
                <th class="p-3">Title</th>
                <th class="p-3">Author</th>
                <th class="p-3">Created</th>
                <th class="p-3">Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($posts as $post)
            <tr class="border-b">
                <td class="p-3">{{ $post->title }}</td>
                <td class="p-3">{{ $post->user ? $post->user->name : '' }}</td>
                <td class="p-3">{{ $post->created_at->format('d M Y') }}</td>
                <td class="p-3">
                    <a href="{{ route('admin.posts.edit', $post) }}" class="text-white ml-2">Edit</a>
                    <form action="{{ route('admin.posts.destroy', $post) }}" method="POST"
                          class="inline-block ml-2">
                        @csrf @method('DELETE')
                        <button class="text-white" onclick="return confirm('Delete post?')">Delete</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{ $posts->links() }}
</div>
@endsection
