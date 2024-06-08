<?php

namespace App\Http\Middleware;

use App\Models\AdminConfigs;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
            if (AdminConfigs::all()) {
            if ($request->user()->isAdmin()) {
                return $next($request);
            }
            return redirect('/l');
        } else {
            return redirect(route('setup'));
        }

    }
}
