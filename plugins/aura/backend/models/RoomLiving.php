<?php namespace Aura\Backend\Models;

use Model;

/**
 * Model
 */
class RoomLiving extends Model
{
    use \October\Rain\Database\Traits\Validation;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'aura_backend_room_living';

    public $implement = ['RainLab.Translate.Behaviors.TranslatableModel'];
    public $translatable = ['content'];

    /**
     * @var array Validation rules
     */
    public $rules = [];

    /**
     * @var array Relations
     */
    public $hasOne = [];
    public $hasMany = [];
    public $belongsTo = [];
    public $belongsToMany = [];
    public $morphTo = [];
    public $morphOne = [];
    public $morphMany = [];
    public $attachMany = ['images' => ['System\Models\File', 'order' => 'sort_order']];
}
