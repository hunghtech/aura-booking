<?php namespace Aura\Backend\Components;

use Cms\Classes\ComponentBase;
use Aura\Backend\Models\Menu AS MenuModel;

class Menu extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Menu Component',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties()
    {
        return [];
    }
    
    public function onRun() {
        $this->page['menuList'] = MenuModel::where('parent_id',0)->get();
    }
}
