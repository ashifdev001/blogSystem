@extends('layouts.app-loggedin')

@section('sidebar-content')
<div class="max-w-5xl mx-auto text-white">
    <h1 class="text-2xl font-bold mb-4">Manage Users</h1>
    <table class="w-full border-collapse">
        <thead>
            <tr class="bg-gray-800 text-left">
                <th class="p-3">Name</th>
                <th class="p-3">Email</th>
                <th class="p-3">Role</th>
                <th class="p-3">Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($users as $user)
            <tr class="border-b">
                <td class="p-3">{{ $user->name }}</td>
                <td class="p-3">{{ $user->email }}</td>
                <td class="p-3">{{ ucfirst($user->role) }}</td>
                <td class="p-3">
                    <a href="{{ route('admin.users.edit', $user) }}" class="text-white">Edit</a>
                    <form action="{{ route('admin.users.destroy', $user) }}"
                          method="POST"
                          class="inline-block ml-2">
                        @csrf @method('DELETE')
                        <button class="text-white" onclick="return confirm('Delete user?')">Delete</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{ $users->links() }}
</div>
@endsection
