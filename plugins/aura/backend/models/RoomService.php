<?php namespace Aura\Backend\Models;

use Model;

/**
 * Model
 */
class RoomService extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'aura_backend_room_service';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
