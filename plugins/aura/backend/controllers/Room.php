<?php namespace Aura\Backend\Controllers;

use BackendMenu;
use Backend\Classes\Controller;

/**
 * Room Back-end Controller
 */
class Room extends Controller
{
    public $implement = [
        'Backend.Behaviors.FormController',
        'Backend.Behaviors.ListController',
        'Backend.Behaviors.RelationController'
    ];

    public $formConfig = 'config_form.yaml';
    public $listConfig = 'config_list.yaml';
    public $relationConfig = 'config_relation.yaml';

    public function __construct()
    {
        parent::__construct();

        BackendMenu::setContext('Aura.Backend', 'backend', 'room');
    }
}
