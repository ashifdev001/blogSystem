<div class="flex min-h-screen">
    <aside class="w-64 bg-gray-800 text-white p-6 flex flex-col">
        <nav class="flex flex-col space-y-4">
            @if(Auth::user()->role == 'admin')
                <a href="{{ route('dashboard') }}" class="hover:bg-gray-700 px-4 py-2 rounded">Dashboard</a>
                <a href="{{ route('admin.users.index') }}" class="hover:bg-gray-700 px-4 py-2 rounded">Manage Users</a>
            @endif
            <a href="{{Auth::user()->role == 'admin'? route('admin.posts.index'):route('posts.loggedinUserPosts') }}" class="hover:bg-gray-700 px-4 py-2 rounded">Manage Posts</a>
            <a href="{{ route('profile.edit') }}" class="hover:bg-gray-700 px-4 py-2 rounded">Profile</a>
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <button class="w-full text-left hover:bg-gray-700 px-4 py-2 rounded">Logout</button>
            </form>
        </nav>
    </aside>
    <div class="flex-1 p-8">
        @yield('sidebar-content')
    </div>
</div>