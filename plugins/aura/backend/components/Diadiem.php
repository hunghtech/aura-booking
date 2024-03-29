<?php namespace Aura\Backend\Components;

use Cms\Classes\ComponentBase;
use Aura\Backend\Models\BannerAddress;
use Aura\Backend\Models\Room;

class Diadiem extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Diadiem Component',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public function onRun()
    {
        $this->page['sliders'] = BannerAddress::all();
        $this->page['stores'] = Room::all();
    }
}
