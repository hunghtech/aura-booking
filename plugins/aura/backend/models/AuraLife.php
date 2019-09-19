<?php

namespace Aura\Backend\Models;

use Model;
use Aura\Backend\Models\AuraLifeInfo;

/**
 * Model
 */
class AuraLife extends Model {

    use \October\Rain\Database\Traits\Validation;

    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */

    public $timestamps = false;

    /**
     * @var string The database table used by the model.
     */
    public $table = 'aura_backend_aura_life';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    /**
     * @var array Relations
     */
    public $hasOne = [];
    public $hasMany = [
        'detail' => ['Aura\Backend\Models\AuraLifeInfo']
    ];
    public $belongsTo = [];
    public $belongsToMany = [];
    public $morphTo = [];
    public $morphOne = [];
    public $morphMany = [];
    public $attachOne = [];
    public $attachMany = [];
    
    protected $appends = ['infos'];
    
    public function getInfosAttribute() {
        $infos = AuraLifeInfo::where('aura_life_id', $this->id)->get()->toArray();
        return $infos;
    }

}
