<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateAuraBackendRoom4 extends Migration
{
    public function up()
    {
        Schema::table('aura_backend_room', function($table)
        {
            $table->string('slug');
        });
    }
    
    public function down()
    {
        Schema::table('aura_backend_room', function($table)
        {
            $table->dropColumn('slug');
        });
    }
}
