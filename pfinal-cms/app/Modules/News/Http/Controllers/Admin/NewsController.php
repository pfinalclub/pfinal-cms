<?php
/**
 * Created by PhpStorm.
 * User: 南丞
 * Date: 2019/6/12
 * Time: 17:43
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

namespace App\Modules\News\Http\Controllers\Admin;


use App\Model\Modules;
use Encore\Admin\Controllers\AdminController;

use Encore\Admin\Grid;

class NewsController extends AdminController
{
    protected $title = '公司动态管理';
    protected $description = [
//        'index'  => 'Index',
//        'show'   => 'Show',
//        'edit'   => 'Edit',
//        'create' => 'Create',
    ];
    protected function grid()
    {
        $grid = new Grid(new Modules());

        $grid->column('id', 'ID')->sortable();
        $grid->column('title', '模块名');
        $grid->column('name', '模块标识');
        $grid->column('version', '版本号')->label();
        $grid->column('status', '状态')->switch([1 => 's', 0 => 'e']);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));
        return $grid;
    }
}