<?php

namespace App\Modules\PFBanner\Http\Controllers;

use Illuminate\Routing\Controller;
use stdClass;

class PFBannerController extends Controller
{
    protected static $stdClass = null;

    public static function driver()
    {
        self::$stdClass = new StdClass();
    }

    public static function banner_list()
    {
        self::driver();
        // 获取一下 当前的banners
        self::get_banners();
        
        return self::$stdClass;
    }

    protected static function get_banners()
    {
        self::$stdClass->index_top_banner = 'hi Banner';
    }

}
