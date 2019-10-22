<?php namespace Aura\Backend\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateAuraBackendAuraDistrictInfo extends Migration
{
    public function up()
    {
        Schema::table('aura_backend_aura_district_info', function($table)
        {
            $table->string('title');
        });
    }
    
    public function down()
    {
        Schema::table('aura_backend_aura_district_info', function($table)
        {
            $table->dropColumn('title');
        });
    }
}
