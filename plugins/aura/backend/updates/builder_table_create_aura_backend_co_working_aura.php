<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateAuraBackendCoWorkingAura extends Migration
{
    public function up()
    {
        Schema::create('aura_backend_co_working_aura', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('title');
            $table->text('content');
            $table->timestamp('created_at');
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('aura_backend_co_working_aura');
    }
}
