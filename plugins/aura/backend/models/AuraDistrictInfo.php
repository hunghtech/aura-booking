<?php namespace Aura\Backend\Models;

use Model;

/**
 * Model
 */
class AuraDistrictInfo extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'aura_backend_aura_district_info';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
