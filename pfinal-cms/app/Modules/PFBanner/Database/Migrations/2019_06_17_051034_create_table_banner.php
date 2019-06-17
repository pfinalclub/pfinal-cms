<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableBanner extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('banner', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title')->comment('广告名称');
            $table->string('url')->comment('广告标识');
            $table->integer('position')->index('position_id')->comment('广告位置');
            $table->tinyInteger('status')->comment('广告状态');
            $table->string('redirect_url')->comment('跳转连接');
            $table->string('desc')->comment('广告描述');
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
        Schema::dropIfExists('banner');
    }
}
