<?php namespace Aura\Backend\Models;

use Model;

/**
 * Model
 */
class RoomType extends Model
{
    use \October\Rain\Database\Traits\Validation;

    public $implement = ['RainLab.Translate.Behaviors.TranslatableModel'];
    public $translatable = ['title'];


    /**
     * @var string The database table used by the model.
     */
    public $table = 'aura_backend_room_type';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
