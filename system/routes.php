<?php
	/**
	 * ----------------------------------------
	 * | Created By pfinal-cms                 |
	 * | User: pfinal <lampxiezi@163.com>     |
	 * | Date: 2019/10/12                      |
	 * | Time: 下午5:21                        |
	 * ----------------------------------------
	 * |    _____  ______ _             _     |
	 * |   |  __ \|  ____(_)           | |    |
	 * |   | |__) | |__   _ _ __   __ _| |    |
	 * |   |  ___/|  __| | | '_ \ / _` | |    |
	 * |   | |    | |    | | | | | (_| | |    |
	 * |   |_|    |_|    |_|_| |_|\__,_|_|    |
	 * ----------------------------------------
	 */
	
	use pf\route\Route;
	
	Route::get(
		'/',
		function () {
			return view('view/welcome');
		}
	);
	Route::get('home', 'app\home\controller\Index@index');
	Route::get('login', 'app\home\controller\Index@login');
	
	Route::group(
		['prefix' => 'admin'],
		function () {
			Route::get(
				'add',
				function () {
					echo 'add';
				}
			);
			Route::get(
				'delete',
				function () {
					echo '123';
				}
			);
		}
	);