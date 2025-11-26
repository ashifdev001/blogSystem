<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Symfony\Component\HttpFoundation\Response;

class ActivityLog
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
     public function handle(Request $request, Closure $next)
    {
        $response = $next($request);

        $userId = optional($request->user())->id ?? null;
        Log::info('activity', [
            'user_id' => $userId,
            'method' => $request->method(),
            'path' => $request->path(),
            'ip' => $request->ip(),
            'input' => $request->except(['password','_token']),
        ]);

        return $response;
    }
}
