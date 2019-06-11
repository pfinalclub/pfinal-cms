<?php

namespace App\Http\Controllers;

use App\Model\SystemConfig;

class CommonController extends Controller
{
    protected $temple = 'local.';
    protected $config;
    public function __construct(SystemConfig $systemConfig)
    {
        if ($systemConfig->template_id) {

        } else {
            $this->temple = 'local.';
        }
    }
}
