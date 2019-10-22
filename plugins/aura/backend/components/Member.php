<?php namespace Aura\Backend\Components;

use Aura\Backend\Models\Faq;
use Cms\Classes\ComponentBase;
use Aura\Backend\Models\BookRoom;
use Auth;

class Member extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Member Component',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public function onRun(){
        $user = Auth::getUser();
        $this->page['faps'] = Faq::all();
        if($user){
            //print_r(BookRoom::where('user_id',$user->id)->get());die;
            $this->page['bookRooms'] = BookRoom::where('user_id',$user->id)->get();
        }
    }
}
