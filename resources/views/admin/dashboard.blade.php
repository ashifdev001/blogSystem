@extends('layouts.app-loggedin')

@section('sidebar-content')
<div class="max-w-5xl mx-auto text-white">
    <h1 class="text-3xl font-bold mb-6 mt-2">Admin Dashboard</h1>
    <div class="grid grid-cols-3 gap-5">
        <div class="bg-gray-800 p-6 rounded shadow">
            <h2 class="text-xl font-bold">Users</h2>
            <p class="text-3xl font-bold">{{ $users }}</p>
        </div>
        <div class="bg-gray-800 p-6 rounded shadow">
            <h2 class="text-xl font-bold">Posts</h2>
            <p class="text-3xl font-bold">{{ $posts }}</p>
        </div>
        <div class="bg-gray-800 p-6 rounded shadow">
            <h2 class="text-xl font-bold">Comments</h2>
            <p class="text-3xl font-bold">{{ $comments }}</p>
        </div>
    </div>
</div>
@endsection
