<?php
/**
 * Created by PhpStorm.
 * User: 南丞
 * Date: 2019/6/13
 * Time: 17:14
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

namespace App\Modules\PFBanner\Http\Controllers\Admin;


use App\Model\PFBanner;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Grid;

class PFBannerController extends AdminController
{
    protected $title = '广告管理';
    protected $description = [
        'index'=>'广告列表'
    ];

    public function grid()
    {
        $grid = new Grid(new PFBanner());
        $grid->column('id', 'ID')->sortable();
        $grid->column('name','广告名称');
        $grid->column('url','广告缩略图');
        $grid->column('position','广告位置');
        return $grid;
    }
}