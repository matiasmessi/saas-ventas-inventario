<?php

namespace App\Providers;

use App\Models\Empresa;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\URL; // <-- Agregado

class AppServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        //
    }

    public function boot(): void
    {
        // Forzar HTTPS en entorno de producción (Railway)
        if (config('app.env') === 'production') {
            URL::forceScheme('https');
        }

        // Evita errores de longitud de índice en MySQL < 5.7.7
        Schema::defaultStringLength(191);

        // Paginación con markup Bootstrap (compatible con el CSS del proyecto)
        Paginator::useBootstrapFour();

        // Comparte la configuración de la empresa con todas las vistas.
        // Protegido con try/catch para no romper antes de migrar la BD.
        View::composer('*', function ($view) {
            try {
                $view->with('empresa', Empresa::actual());
            } catch (\Throwable $e) {
                $view->with('empresa', null);
            }
        });
    }
}