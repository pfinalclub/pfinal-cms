<?php

namespace App\Http\Controllers;

use App\Model\SystemConfig;

class HomeController extends CommonController
{
    public function __construct(SystemConfig $systemConfig)
    {
        parent::__construct($systemConfig);
    }

    public function index()
    {
        return view($this->temple.'.index');
    }

    public function about_me()
    {
        return view($this->temple.'.index');
    }
}
