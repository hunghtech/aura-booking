<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateAuraBackendBannerStore extends Migration
{
    public function up()
    {
        Schema::create('aura_backend_banner_store', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('store_id');
            $table->string('title');
            $table->string('content');
            $table->string('image');
            $table->timestamp('created_at');
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('aura_backend_banner_store');
    }
}
