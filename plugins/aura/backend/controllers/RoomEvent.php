<?php namespace Aura\Backend\Controllers;

use BackendMenu;
use Backend\Classes\Controller;

/**
 * Room Event Back-end Controller
 */
class RoomEvent extends Controller
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

        BackendMenu::setContext('Aura.Backend', 'backend', 'roomevent');
    }
}
