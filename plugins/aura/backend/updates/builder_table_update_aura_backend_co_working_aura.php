<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateAuraBackendCoWorkingAura extends Migration
{
    public function up()
    {
        Schema::table('aura_backend_co_working_aura', function($table)
        {
            $table->string('title', 200)->nullable(false)->unsigned(false)->default(null)->change();
        });
    }
    
    public function down()
    {
        Schema::table('aura_backend_co_working_aura', function($table)
        {
            $table->integer('title')->nullable(false)->unsigned(false)->default(null)->change();
        });
    }
}
