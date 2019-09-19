<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateAuraBackendRoom extends Migration
{
    public function up()
    {
        Schema::table('aura_backend_room', function($table)
        {
            $table->dropColumn('category_id');
        });
    }
    
    public function down()
    {
        Schema::table('aura_backend_room', function($table)
        {
            $table->integer('category_id');
        });
    }
}
