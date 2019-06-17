<?php

namespace App\Http\Controllers;

use App\Model\SystemConfig;
use App\Modules\PFBanner\Http\Controllers\PFBannerController;
use pf\arr\PFarr;

class HomeController extends CommonController
{
    public function __construct(SystemConfig $systemConfig)
    {
        parent::__construct($systemConfig);
    }

    public function index()
    {
        $modules = $this->modules;
        //判断是否有配置广告
        if (in_array('PFBanner', PFarr::pf_array_col($this->modules->toArray(), 'name'))) {
            $index_banners = PFBannerController::banner_list();
        }

        return view($this->temple.'.index', compact('modules','index_banners'));
    }

    public function about_me()
    {
        return view($this->temple.'.index');
    }
}
