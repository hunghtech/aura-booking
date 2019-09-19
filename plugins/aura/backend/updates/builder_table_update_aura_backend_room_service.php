<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateAuraBackendRoomService extends Migration
{
    public function up()
    {
        Schema::table('aura_backend_room_service', function($table)
        {
            $table->integer('type_id');
        });
    }
    
    public function down()
    {
        Schema::table('aura_backend_room_service', function($table)
        {
            $table->dropColumn('type_id');
        });
    }
}
