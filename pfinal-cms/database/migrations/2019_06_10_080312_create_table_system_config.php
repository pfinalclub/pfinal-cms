<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableSystemConfig extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('system_config', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title')->default('PFinal社区')->comment('网站标题');
            $table->string('keywords')->default('PFinal社区')->comment('网站关键字');
            $table->string('description')->default('pfinalClub 致力于提供优质PHP中文学习资源,Laravel、Yii、ThinkPHP等框架学习资源、中文视频教程、项目实战教程')->comment('站点描述');
            $table->string('logo')->default('logo.jpg')->comment('站点logo');
            $table->unsignedInteger('template_id')->default(0)->index()->comment('模板id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('system_config');
    }
}
