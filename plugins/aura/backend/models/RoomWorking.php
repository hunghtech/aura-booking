<?php namespace Aura\Backend\Models;

use Model;

/**
 * Model
 */
class RoomWorking extends Model
{
    use \October\Rain\Database\Traits\Validation;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'aura_backend_room_working';

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
