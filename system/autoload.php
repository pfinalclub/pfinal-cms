<?php
	/**
	 * ----------------------------------------
	 * | Created By pfinal-cms                 |
	 * | User: pfinal <lampxiezi@163.com>     |
	 * | Date: 2019/10/12                      |
	 * | Time: 下午4:59                        |
	 * ----------------------------------------
	 * |    _____  ______ _             _     |
	 * |   |  __ \|  ____(_)           | |    |
	 * |   | |__) | |__   _ _ __   __ _| |    |
	 * |   |  ___/|  __| | | '_ \ / _` | |    |
	 * |   | |    | |    | | | | | (_| | |    |
	 * |   |_|    |_|    |_|_| |_|\__,_|_|    |
	 * ----------------------------------------
	 */
	
	/*--------------------------------------------------------------------------
| PHP版本检测
|--------------------------------------------------------------------------*/
	define('HDPHP_START', microtime(true));
	if (version_compare(phpversion(), '7.0.0', '<')) {
		die('<h1 style=\'margin:20px;color:#535353;font:36px/1.5 Helvetica, Arial\'><span style="font-size:150px;">:( </span><br/>Please upgrade to PHP7.0 above</h1>');
	}
	require __DIR__.'/../vendor/autoload.php';