<?php

namespace Aura\Backend\Components;

use Cms\Classes\ComponentBase;

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
    }

}
