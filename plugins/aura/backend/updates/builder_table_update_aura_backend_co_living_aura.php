<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateAuraBackendCoLivingAura extends Migration
{
    public function up()
    {
        Schema::table('aura_backend_co_living_aura', function($table)
        {
            $table->string('title', 10)->nullable(false)->unsigned(false)->default(null)->change();
            $table->text('content')->nullable(false)->unsigned(false)->default(null)->change();
        });
    }
    
    public function down()
    {
        Schema::table('aura_backend_co_living_aura', function($table)
        {
            $table->integer('title')->nullable(false)->unsigned(false)->default(null)->change();
            $table->integer('content')->nullable(false)->unsigned(false)->default(null)->change();
        });
    }
}
