<?php namespace Aura\Backend\Controllers;

use BackendMenu;
use Backend\Classes\Controller;

/**
 * Co Working Aura Back-end Controller
 */
class CoWorkingAura extends Controller
{
    public $implement = [
        'Backend.Behaviors.FormController',
        'Backend.Behaviors.ListController'
    ];

    public $formConfig = 'config_form.yaml';
    public $listConfig = 'config_list.yaml';

    public function __construct()
    {
        parent::__construct();

        BackendMenu::setContext('Aura.Backend', 'backend', 'coworkingaura');
    }
}
