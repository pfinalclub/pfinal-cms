<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;

class HomeController extends Controller
{
    public function index(Content $content)
    {
        return $content
            ->title('PFinal-cms管理系统')
            ->description('PFinal-cms 系统是由衿若工作室开发的一款cms系统')
            ->row(Dashboard::title())
            ->row(function (Row $row) {
                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::environment());
                });
                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::system_developer());
                });
            });
    }
}
