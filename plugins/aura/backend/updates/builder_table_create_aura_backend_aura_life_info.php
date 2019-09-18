<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateAuraBackendAuraLifeInfo extends Migration
{
    public function up()
    {
        Schema::create('aura_backend_aura_life_info', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('aura_life_id');
            $table->string('title');
            $table->string('icon');
            $table->timestamp('created_at');
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('aura_backend_aura_life_info');
    }
}
