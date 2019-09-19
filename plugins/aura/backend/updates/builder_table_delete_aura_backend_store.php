<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableDeleteAuraBackendStore extends Migration
{
    public function up()
    {
        Schema::dropIfExists('aura_backend_store');
    }
    
    public function down()
    {
        Schema::create('aura_backend_store', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title', 191);
            $table->integer('service_id');
            $table->string('address', 191);
            $table->string('content', 191);
            $table->timestamp('created_at')->default('CURRENT_TIMESTAMP');
            $table->timestamp('updated_at')->nullable();
        });
    }
}
