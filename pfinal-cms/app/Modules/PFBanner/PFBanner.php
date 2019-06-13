<?php
/**
 * Created by PhpStorm.
 * User: 南丞
 * Date: 2019/6/13
 * Time: 17:10
 *
 *
 *                      _ooOoo_
 *                     o8888888o
 *                     88" . "88
 *                     (| ^_^ |)
 *                     O\  =  /O
 *                  ____/`---'\____
 *                .'  \\|     |//  `.
 *               /  \\|||  :  |||//  \
 *              /  _||||| -:- |||||-  \
 *              |   | \\\  -  /// |   |
 *              | \_|  ''\---/''  |   |
 *              \  .-\__  `-`  ___/-. /
 *            ___`. .'  /--.--\  `. . ___
 *          ."" '<  `.___\_<|>_/___.'  >'"".
 *        | | :  `- \`.;`\ _ /`;.`/ - ` : | |
 *        \  \ `-.   \_ __\ /__ _/   .-` /  /
 *  ========`-.____`-.___\_____/___.-`____.-'========
 *                       `=---='
 *  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 *           佛祖保佑       永无BUG     永不修改
 *
 */

namespace App\Modules\PFBanner;


class PFBanner
{
    public static function routes()
    {
        $attributes = [
            'prefix'     => 'pfbanner',
            'middleware' => config('admin.route.middleware'),
            'namespace'=>'PFBanner\Http\Controllers\Admin'
        ];
        app('router')->group($attributes, function ($router) {
            $router->get('/','PFBannerController@index');
        });
    }
}