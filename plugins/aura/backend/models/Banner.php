<?php namespace Aura\Backend\Models;

use Model;

/**
 * Model
 */
class Banner extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;
    
    public $implement = ['RainLab.Translate.Behaviors.TranslatableModel'];

    public $translatable = ['title','content','title_time'];

    /**
     * @var string The database table used by the model.
     */
    public $table = 'aura_backend_banner';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
