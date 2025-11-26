<div class="flex min-h-screen">
    <aside class="w-64 bg-gray-800 text-white p-6">
        <h2 class="text-xl font-bold mb-6">Admin Menu</h2>
        <nav class="flex flex-col space-y-4">
            <a href="{{ route('admin.users.index') }}" class="hover:bg-gray-700 px-4 py-2 rounded">Manage Users</a>
            <a href="{{ route('admin.posts.index') }}" class="hover:bg-gray-700 px-4 py-2 rounded">Manage Posts</a>
        </nav>
    </aside>
    <div class="flex-1 p-8">
        @yield('admin-content')
    </div>
</div>
