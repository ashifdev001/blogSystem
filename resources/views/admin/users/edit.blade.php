@extends('layouts.app-loggedin')

@section('sidebar-content')
<div class="max-w-md mx-auto text-white">
    <h1 class="text-2xl font-bold mb-5">Edit User</h1>
    <form action="{{ route('admin.users.update', $user) }}" method="POST">
        @csrf
        @method('PUT')

        <label class="block mb-2">Name</label>
        <input type="text" name="name" class="w-full border p-3 rounded bg-gray-800 text-white"
               value="{{ $user->name }}">

        <label class="block mt-4 mb-2">Role</label>
        <select name="role" class="w-full border p-3 rounded bg-gray-800 text-white">
            <option value="user" {{ $user->role=='user'?'selected':'' }}>User</option>
            <option value="admin" {{ $user->role=='admin'?'selected':'' }}>Admin</option>
        </select>

        <button class="px-4 py-2 mt-4 bg-blue-600 text-white rounded">Update</button>
    </form>
</div>
@endsection
