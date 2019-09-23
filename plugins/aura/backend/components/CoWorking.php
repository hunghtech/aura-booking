<?php namespace Aura\Backend\Components;

use Cms\Classes\ComponentBase;
use Aura\Backend\Models\Room;
use Aura\Backend\Models\CoWorkingAura;

class CoWorking extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'CoWorking Component',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties()
    {
        return [];
    }
    
    public function onRun(){
        $this->page['stores'] = Room::getListByService('is_co_working');
        $this->page['tabs'] = CoWorkingAura::all();
    }
}
