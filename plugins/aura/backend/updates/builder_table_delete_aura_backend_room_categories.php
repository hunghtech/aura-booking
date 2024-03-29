<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableDeleteAuraBackendRoomCategories extends Migration
{
    public function up()
    {
        Schema::dropIfExists('aura_backend_room_categories');
    }
    
    public function down()
    {
        Schema::create('aura_backend_room_categories', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('room_id');
            $table->integer('category_id');
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
}
