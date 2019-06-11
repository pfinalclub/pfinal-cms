<?php

namespace App\Providers;

use App\Model\Modules;
use App\Model\SystemConfig;
use function foo\func;
use Illuminate\Support\ServiceProvider;

class ComposerServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        // 网站信息配置
        view()->composer('base.layout',function ($view) {
            $config = SystemConfig::first();
            $view->with('config',$config);
        });
        // 网站导航模块
        view()->composer('base.layout',function($view) {
            $modules = Modules::select('title','name','status')->where('status',1)->get();
            $view->with('modules',$modules);
        });
    }
}
