<?php namespace Aura\Backend\Components;

use Cms\Classes\ComponentBase;
use RainLab\Translate\Classes\Translator;

class Lang extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'lang Component',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties()
    {
        return [];
    }
    
    public function onRun() {
        $translator = Translator::instance();
        $activeLocale = $translator->getLocale();
        $this->page['language'] = $activeLocale;
    }
}
