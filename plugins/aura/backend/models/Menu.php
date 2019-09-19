<?php

namespace Aura\Backend\Models;

use Model;
use October\Rain\Database\Traits\NestedTree;

/**
 * Model
 */
class Menu extends Model {

    use \October\Rain\Database\Traits\Validation;

    /**
     * @var string The database table used by the model.
     */
    public $table = 'aura_backend_menu';
    
    public $implement = ['RainLab.Translate.Behaviors.TranslatableModel'];

    public $translatable = ['title','parent_id'];

    /**
     * @var array Validation rules
     */
    public $rules = [];
    public $hasOne = [];
    public $hasMany = [];
    public $belongsTo = [];
    public $belongsToMany = [];
    public $morphTo = [];
    public $morphOne = [];
    public $morphMany = [];
    public $attachOne = [];
    public $attachMany = [];

    public function getParentIdOptions() {
        return Menu::where('parent_id',0)->lists('title','id');
    }
    
    public function getChildren(){
        return Menu::where('parent_id','>',0)->lists('title','id');
    }

}
