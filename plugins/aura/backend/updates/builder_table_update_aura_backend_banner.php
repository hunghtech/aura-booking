<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateAuraBackendBanner extends Migration
{
    public function up()
    {
        Schema::table('aura_backend_banner', function($table)
        {
            $table->renameColumn('time_time', 'title_time');
        });
    }
    
    public function down()
    {
        Schema::table('aura_backend_banner', function($table)
        {
            $table->renameColumn('title_time', 'time_time');
        });
    }
}
