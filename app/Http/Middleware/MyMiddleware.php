<?php


namespace App\Http\Middleware;
use Closure;
use Fideloper\Proxy\TrustProxies as Middleware;

class MyMiddleware extends Middleware
{
    public function handle($request, Closure $next)
    {
        $request->test = 'test';
        $response = $next($request);
        return $response;
    }
}
