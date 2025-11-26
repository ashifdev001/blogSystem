# Laravel Blog Assignment

## Quick start

1. `composer install`
2. `cp .env.example .env` and set DB 
3. `php artisan key:generate`
4. `php artisan migrate --seed`
5. `npm install && npm run build`
6. `php artisan serve`

Admin user seeded:
- email: admin@example.com
- password: password

## Features
- User registration & login (Laravel Breeze)
- Roles: admin, user
- CRUD for posts and comments
- Admin panel for user/post management
- Soft deletes, caching, eager-loading
- Custom middleware for activity logging


# Laravel Blog — REST API & Web App

This repository is a Laravel 12 blog application with:
- Web frontend (Breeze + Tailwind)
- REST API (Sanctum token-based)
- Social login (Socialite: Google/Facebook)
- Roles: admin & user
- Posts (CRUD) with soft deletes
- Comments (CRUD)
- Admin panel
- Caching & eager loading optimizations

