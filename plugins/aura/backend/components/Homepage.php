<?php

namespace Aura\Backend\Components;

use Cms\Classes\ComponentBase;
use RainLab\Translate\Classes\Translator;
use Aura\Backend\Models\AuraDistrictInfo;
use Aura\Backend\Models\AuraLife;
use Aura\Backend\Models\Banner;

class Homepage extends ComponentBase {

    public function componentDetails() {
        return [
            'name' => 'Homepage Component',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties() {
        return [];
    }

    public function onRun() {
        $translator = Translator::instance();
        $activeLocale = $translator->getLocale();
        $this->page['language'] = $activeLocale;
        $this->page['auraDistricts'] = AuraDistrictInfo::all();
        $this->page['auraLifes'] = AuraLife::all();
        $this->page['banners'] = Banner::all();
    }

}
