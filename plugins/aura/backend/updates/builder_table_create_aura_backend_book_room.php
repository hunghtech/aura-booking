<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateAuraBackendBookRoom extends Migration
{
    public function up()
    {
        Schema::create('aura_backend_book_room', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('user_id');
            $table->integer('building_id');
            $table->dateTime('from_date');
            $table->dateTime('to_date');
            $table->boolean('is_unknown_date');
            $table->timestamp('created_at');
            $table->timestamp('updated_at')->nullable();
            $table->integer('status');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('aura_backend_book_room');
    }
}
