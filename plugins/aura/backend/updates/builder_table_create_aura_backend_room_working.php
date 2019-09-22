<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateAuraBackendRoomWorking extends Migration
{
    public function up()
    {
        Schema::create('aura_backend_room_working', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('room_id');
            $table->text('content');
            $table->timestamp('created_at');
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('aura_backend_room_working');
    }
}
