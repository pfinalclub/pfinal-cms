<?php
/**
 * Created by PhpStorm.
 * User: 南丞
 * Date: 2019/6/12
 * Time: 16:49
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

namespace App\Admin\Controllers;


use App\Http\Controllers\Controller;
use App\Model\Modules;
use Illuminate\Http\Request;


class ModuleManageController extends Controller
{
    protected $modules;
    public function __construct(Modules $modules)
    {
        $this->modules = $modules;
    }

    public function index(Request $request)
    {
        $controller = $request->route('module');
        $namespace = 'App\Modules\News\Http\Controllers\Admin\\';
        $className = $namespace . ucfirst($controller . "Controller");
        $action = $request->route('action')??'index';
        $tempObj = new $className();
        return call_user_func(array($tempObj, $action));
    }
}