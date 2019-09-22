<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateAuraBackendRoom3 extends Migration
{
    public function up()
    {
        Schema::table('aura_backend_room', function($table)
        {
            $table->integer('is_co_living');
            $table->integer('is_co_working');
        });
    }
    
    public function down()
    {
        Schema::table('aura_backend_room', function($table)
        {
            $table->dropColumn('is_co_living');
            $table->dropColumn('is_co_working');
        });
    }
}
