<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateAuraBackendCoLivingAura2 extends Migration
{
    public function up()
    {
        Schema::table('aura_backend_co_living_aura', function($table)
        {
            $table->string('title', 200)->change();
        });
    }
    
    public function down()
    {
        Schema::table('aura_backend_co_living_aura', function($table)
        {
            $table->string('title', 10)->change();
        });
    }
}
