<?php
/**
 * Created by PhpStorm.
 * User: 南丞
 * Date: 2019/6/12
 * Time: 14:38
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

use App\Model\Modules;
use Encore\Admin\Controllers\AdminController;

use Encore\Admin\Form;
use Encore\Admin\Grid;

class ModuleController extends AdminController
{
    protected $title = '模块管理';
    protected $description = [
        'index' => '模块列表',
    ];

    protected function form()
    {
        $form = new Form(new Modules());
        $form->display('id', 'ID');
        $form->text('title', '模块名称')->rules('required');
        $form->text('name', '模块标识')
            ->creationRules(['required', "unique:modules"])
            ->updateRules(['required', "unique:modules,name,{{id}}"]);
        $form->text('version', '版本号')->rules('required');
        $form->textarea('package', '模块配置')->rules('required');
        $form->hidden('local')->value(1);
        return $form;
    }


    protected function grid()
    {
        $status = [
            'on'  => ['value' => 1, 'text' => '上线', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => '下线', 'color' => 'danger'],
        ];
        $grid = new Grid(new Modules());

        $grid->column('id', 'ID')->sortable();
        $grid->column('title', '模块名');
        $grid->column('name', '模块标识');
        $grid->column('version', '版本号')->label();
        $grid->column('status', '状态')->switch($status);
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));
        $grid->actions(function (Grid\Displayers\Actions $actions) {
            $actions->disableView();
        });
        return $grid;
    }
}