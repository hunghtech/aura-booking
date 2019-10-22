<?php

namespace Aura\Backend\Components;

use Aura\Backend\Models\Room;
use Cms\Classes\ComponentBase;
use Auth;
use RainLab\Translate\Classes\Translator;
use Redirect;
use DB;

class BookingRoom extends ComponentBase {

    public function componentDetails() {
        return [
            'name' => 'BookingRoom Component',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties() {
        return [
            'slug' => [
                'title' => 'Slug Name',
                'description' => 'For find type post',
                'default' => "0",
            ]
        ];
    }

    public function onRun() {
        $slug = $this->property('slug');
        $this->page['aura'] = $slug;
        $user = Auth::getUser();
        if(!$user){
            $translator = Translator::instance();
            $activeLocale = $translator->getLocale();
            return Redirect::to('/'.$activeLocale.'/member');
        }
    }

    public function onBookRoom()
    {
        $user = Auth::getUser();
        if($user){
            $userID = $user->id;
            $buildingId = post('building_id');
            $from_date = post('from_date');
            $to_date = post('to_date');
            $is_unknow_date = post('is_unknow_date');

            if($from_date){
                $from_date = date("Y-m-d", strtotime($from_date));
            }
            if($to_date){
                $to_date = date("Y-m-d", strtotime($to_date));
            }
            DB::table('aura_backend_book_room')->insert(
                ['building_id' => $buildingId, 'user_id' => $userID,
                    'from_date' => $from_date, 'to_date' => $to_date,
                    'is_unknown_date' => $is_unknow_date
                ]);
            return true;
        }
    }

}
