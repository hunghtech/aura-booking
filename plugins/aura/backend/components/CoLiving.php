<?php namespace Aura\Backend\Components;

use Cms\Classes\ComponentBase;
use Aura\Backend\Models\Room;
use Aura\Backend\Models\FAQ;
use Aura\Backend\Models\CoLivingAura;

class CoLiving extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'CoLiving Component',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public function onRun()
    {
        $this->page['stores'] = Room::getListByService('is_co_living');
        $this->page['faps'] = FAQ::all();
        $this->page['tabs'] = CoLivingAura::all();
    }
}