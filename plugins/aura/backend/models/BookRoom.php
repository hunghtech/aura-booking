<?php namespace Aura\Backend\Models;

use Model;
use Aura\Backend\Models\Room;
use RainLab\User\Models\User;

/**
 * Model
 */
class BookRoom extends Model
{
    use \October\Rain\Database\Traits\Validation;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'aura_backend_book_room';

    /**
     * @var array Validation rules
     */
    public $rules = [];

    /**
     * @var array Relations
     */
    public $hasOne = [];
    public $hasMany = [];
    public $belongsTo = [
        'user' => ['RainLab\User\Models\User', 'key' => 'user_id'],
        'building' => ['Aura\Backend\Models\Room', 'key' => 'building_id']
    ];
    public $belongsToMany = [];
    public $morphTo = [];
    public $morphOne = [];
    public $morphMany = [];
    public $attachOne = [];
    public $attachMany = [];
    protected $appends = ['userInfo','buildingInfo'];

    public function getUserIdOptions() {
        $users = User::lists('name', 'id');
        return $users;
    }

    public function getBuildingIdOptions() {
        $users = Room::lists('name', 'id');
        return $users;
    }

    /**
     * @return mixed
     */
    public function getUserInfoAttribute() {
        $users = User::where('id', $this->user_id)->get()->toArray();
        return $users;
    }

    /**
     * @return mixed
     */
    public function getBuildingInfoAttribute() {
        $buildings = Room::where('id', $this->building_id)->get()->toArray();
        return $buildings;
    }
}
