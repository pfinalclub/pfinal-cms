<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableModules extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create(
            'modules',
            function (Blueprint $table) {
                $table->bigIncrements('id');
                $table->string('title')->comment('模块名称');
                $table->string('name')->unique()->comment('模块标识');
                $table->string('version')->comment('版本号');
                $table->tinyInteger('local')->comment('本地模块');
                $table->tinyInteger('is_nav')->default(0)->comment('是否显示导航');
                $table->tinyInteger('status')->default(0)->comment('是否上线');
                $table->text('package')->comment('模块配置');
                $table->timestamps();
            }
        );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('table_modules');
    }
}
