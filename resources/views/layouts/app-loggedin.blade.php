<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="font-sans antialiased">
        <div class="min-h-screen bg-gray-100 dark:bg-gray-900">
            @if(Auth::check())
                @include('layouts.navigation')
                 @include('layouts.sidebar')
            @else
                <div class="flex justify-end p-6">
                    <a href="{{ route('login') }}" class="px-4 py-2 bg-blue-600 text-white rounded mr-2">Login</a>
                    <a href="{{ route('register') }}" class="px-4 py-2 bg-green-600 text-white rounded">Register</a>
                </div>
                <main>
                    @yield('content')
                </main>
            @endif
        </div>
    </body>
</html>
