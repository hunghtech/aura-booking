<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateAuraBackendRoom2 extends Migration
{
    public function up()
    {
        Schema::table('aura_backend_room', function($table)
        {
            $table->text('content');
            $table->string('address');
            $table->integer('status');
        });
    }
    
    public function down()
    {
        Schema::table('aura_backend_room', function($table)
        {
            $table->dropColumn('content');
            $table->dropColumn('address');
            $table->dropColumn('status');
        });
    }
}
