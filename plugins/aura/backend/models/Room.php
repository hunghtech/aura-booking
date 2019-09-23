<?php namespace Aura\Backend\Models;

use Model;
use Aura\Backend\Models\RoomEvent;
use Aura\Backend\Models\RoomWorking;
use Aura\Backend\Models\RoomLiving;
use Aura\Backend\Models\BannerRoom;

/**
 * Model
 */
class Room extends Model
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
    public $table = 'aura_backend_room';

    public $implement = ['RainLab.Translate.Behaviors.TranslatableModel'];
    public $translatable = ['name', 'content','address'];

    /**
     * @var array Validation rules
     */
    public $rules = [];

    /**
     * @var array Relations
     */
    public $hasOne = [];
    public $hasMany = [
        /*'room_info' => ['Aura\Backend\Models\RoomInfo'],
        'room_service' => ['Aura\Backend\Models\RoomService'],*/
        'banner_room' => ['Aura\Backend\Models\BannerRoom'],
        'room_living' => ['Aura\Backend\Models\RoomLiving'],
        'room_working' => ['Aura\Backend\Models\RoomWorking'],
        'room_event' => ['Aura\Backend\Models\RoomEvent'],
    ];
    public $belongsTo = [];
    public $belongsToMany = [];
    public $morphTo = [];
    public $morphOne = [];
    public $morphMany = [];
    public $attachOne = ['thumbnail' => ['System\Models\File']];
    public $attachMany = ['images' => ['System\Models\File', 'order' => 'sort_order']];
    
    /**
     * @var array
     */
    protected $appends = ['roomEventInfo', 'roomWorkingInfo','roomLivingInfo','bannerInfo'];

    /**
     * @return mixed
     */
    public function getRoomEventInfoAttribute()
    {
        $roomEvents = RoomEvent::where('room_id', $this->id)->get();
        return $roomEvents;
    }
    
    /**
     * @return mixed
     */
    public function getRoomWorkinginfoAttribute()
    {
        $roomWorkings = RoomWorking::where('room_id', $this->id)->get();
        return $roomWorkings;
    }
    
    /**
     * @return mixed
     */
    public function getRoomLivingInfoAttribute()
    {
        $roomLivings = RoomLiving::where('room_id', $this->id)->get();
        return $roomLivings;
    }
    
    /**
     * @return mixed
     */
    public function getBannerInfoAttribute()
    {
        $banners = BannerRoom::where('room_id', $this->id)->get();
        return $banners;
    }


    public static function getListByService($service)
    {
        return self::where($service,1)->get();
    }
}
