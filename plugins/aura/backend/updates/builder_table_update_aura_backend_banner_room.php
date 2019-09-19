<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateAuraBackendBannerRoom extends Migration
{
    public function up()
    {
        Schema::rename('aura_backend_banner_store', 'aura_backend_banner_room');
        Schema::table('aura_backend_banner_room', function($table)
        {
            $table->renameColumn('store_id', 'room_id');
        });
    }
    
    public function down()
    {
        Schema::rename('aura_backend_banner_room', 'aura_backend_banner_store');
        Schema::table('aura_backend_banner_store', function($table)
        {
            $table->renameColumn('room_id', 'store_id');
        });
    }
}
