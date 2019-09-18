<?php namespace Aura\Backend;

use Backend;
use System\Classes\PluginBase;

/**
 * Backend Plugin Information File
 */
class Plugin extends PluginBase
{
    /**
     * Returns information about this plugin.
     *
     * @return array
     */
    public function pluginDetails()
    {
        return [
            'name'        => 'Backend',
            'description' => 'No description provided yet...',
            'author'      => 'Aura',
            'icon'        => 'icon-leaf'
        ];
    }

    /**
     * Register method, called when the plugin is first registered.
     *
     * @return void
     */
    public function register()
    {

    }

    /**
     * Boot method, called right before the request route.
     *
     * @return array
     */
    public function boot()
    {

    }

    /**
     * Registers any front-end components implemented in this plugin.
     *
     * @return array
     */
    public function registerComponents()
    {
        return []; // Remove this line to activate

        return [
            'Aura\Backend\Components\MyComponent' => 'myComponent',
        ];
    }

    /**
     * Registers any back-end permissions used by this plugin.
     *
     * @return array
     */
    public function registerPermissions()
    {
        return []; // Remove this line to activate

        return [
            'aura.backend.some_permission' => [
                'tab' => 'Backend',
                'label' => 'Some permission'
            ],
        ];
    }

    /**
     * Registers back-end navigation items for this plugin.
     *
     * @return array
     */
    public function registerNavigation()
    {
        return [
            'backend' => [
                'label'       => 'Aura Booking',
                'url'         => Backend::url('aura/backend/banner'),
                'icon'        => 'icon-globe',
                'permissions' => ['aura.backend.*'],
                'order'       => 500,
                'sideMenu' => [
                    'banner' => [
                        'label' => 'Banner',
                        'icon' => 'icon-file-image-o',
                        'url' => Backend::url('aura/backend/banner'),
                        'permissions' => ['aura.backend.*']
                    ],
                    'auradistrict' => [
                        'label' => 'Aura District',
                        'icon' => 'icon-smile-o',
                        'url' => Backend::url('aura/backend/auralife'),
                        'permissions' => ['aura.backend.*']
                    ],
                    'auralife' => [
                        'label' => 'Cuộc sống tại Aura',
                        'icon' => 'icon-life-ring',
                        'url' => Backend::url('aura/backend/auralife'),
                        'permissions' => ['aura.backend.*']
                    ]
                ]
            ],
        ];
    }
}
