<?php

namespace App\Providers;

use App\Model\Modules;
use App\Model\SystemConfig;
use App\Modules\PFBanner\PFBanner;
use function foo\func;
use Illuminate\Support\ServiceProvider;
use pf\arr\PFarr;

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
            if($config) {
                $config->template_name = 'demo';
            } else {
                $config = '';
            }
            $view->with('config',$config);
        });
        // 网站导航模块
        view()->composer('base.layout',function($view) {
            $modules = Modules::select('title','name','status','is_nav')->where('status',1)->get();
            $view->with('modules',$modules);
        });
    }
}
