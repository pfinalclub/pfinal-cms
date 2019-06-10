<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableTemplatePack extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('template_pack', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title')->comment('模板名称');
            $table->string('name')->comment('模板标识');
            $table->tinyInteger('local')->comment('本地模板');
            $table->text('package')->comment('模板配置');
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
        Schema::dropIfExists('template_pack');
    }
}
