<?php

namespace Aura\Backend\Models;

use Model;

/**
 * Model
 */
class Menu extends Model {

    use \October\Rain\Database\Traits\SimpleTree;
    use \October\Rain\Database\Traits\Validation;

    /**
     * @var string The database table used by the model.
     */
    public $table = 'aura_backend_menu';
    public $implement = ['RainLab.Translate.Behaviors.TranslatableModel'];
    public $translatable = ['title', 'parent_id'];

    /**
     * @var array Validation rules
     */
    public $rules = [];
    public $hasOne = [];
    public $hasMany = ['children' => ['Aura\Backend\Models\Menu', 'key' => 'parent_id']];
    public $belongsTo = ['parent' => ['Aura\Backend\Models\Menu', 'key' => 'parent_id']];
    public $belongsToMany = [];
    public $morphTo = [];
    public $morphOne = [];
    public $morphMany = [];
    public $attachOne = [];
    public $attachMany = [];

    public function getParentIdOptions() {
        $array_parent = array('0' => '------  Please Select Parent  --------');
        $parent = self::lists('title', 'id');
        $result = $array_parent + $parent;
        return $result;
    }

    public function scopeIsRootCategory($query) {
        return $query->where('parent_id', 0);
    }

}
