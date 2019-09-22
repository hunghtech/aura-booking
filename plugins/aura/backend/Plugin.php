<?php

namespace Aura\Backend;

use Backend;
use System\Classes\PluginBase;
use BackendMenu;

/**
 * Backend Plugin Information File
 */
class Plugin extends PluginBase {

    /**
     * Returns information about this plugin.
     *
     * @return array
     */
    public function pluginDetails() {
        return [
            'name' => 'Backend',
            'description' => 'No description provided yet...',
            'author' => 'Aura',
            'icon' => 'icon-leaf'
        ];
    }

    /**
     * Register method, called when the plugin is first registered.
     *
     * @return void
     */
    public function register() {
        BackendMenu::registerContextSidenavPartial('Aura.Backend', 'backend', '~/plugins/aura/backend/partials/_sidenav.htm');
    }

    /**
     * Boot method, called right before the request route.
     *
     * @return array
     */
    public function boot() {

    }

    /**
     * Registers any front-end components implemented in this plugin.
     *
     * @return array
     */
    public function registerComponents() {
        return [
            'Aura\Backend\Components\Homepage' => 'homepage',
            'Aura\Backend\Components\Lang' => 'lang',
            'Aura\Backend\Components\Menu' => 'menu',
            'Aura\Backend\Components\Diadiem' => 'diadiem',
            'Aura\Backend\Components\CoLiving' => 'co-living',
            'Aura\Backend\Components\CoWorking' => 'co-working',
        ];
    }

    /**
     * Registers any back-end permissions used by this plugin.
     *
     * @return array
     */
    public function registerPermissions() {
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
    public function registerNavigation() {
        return [
            'backend' => [
                'label' => 'Aura Booking',
                'url' => Backend::url('aura/backend/banner'),
                'icon' => 'icon-globe',
                'permissions' => ['aura.backend.*'],
                'order' => 500,
                'sideMenu' => [
                    'banner' => [
                        'label' => 'Banner',
                        'icon' => 'icon-file-image-o',
                        'url' => Backend::url('aura/backend/banner'),
                        'permissions' => ['aura.backend.*'],
                        'group' => 'Thông tin chung',
                    ],
                    'menu' => [
                        'label' => 'Menu',
                        'icon' => 'icon-sitemap',
                        'url' => Backend::url('aura/backend/menu'),
                        'permissions' => ['aura.backend.*'],
                        'group' => 'Thông tin chung',
                    ],
                    'banneraddress' => [
                        'label' => 'Banner Địa điểm',
                        'icon' => 'icon-file-image-o',
                        'url' => Backend::url('aura/backend/banneraddress'),
                        'permissions' => ['aura.backend.*'],
                        'group' => 'Thông tin chung',
                    ],
                    'auradistrict' => [
                        'label' => 'Aura District',
                        'icon' => 'icon-smile-o',
                        'url' => Backend::url('aura/backend/auradistrict'),
                        'permissions' => ['aura.backend.*'],
                        'group' => 'Thông tin Trang chủ',
                    ],
                    'auralife' => [
                        'label' => 'Cuộc sống tại Aura',
                        'icon' => 'icon-life-ring',
                        'url' => Backend::url('aura/backend/auralife'),
                        'permissions' => ['aura.backend.*'],
                        'group' => 'Thông tin Trang chủ',
                    ],
                    'service' => [
                        'label' => 'Dịch vụ',
                        'icon' => 'icon-university',
                        'url' => Backend::url('aura/backend/service'),
                        'permissions' => ['aura.backend.*'],
                        'group' => 'Thông tin Aura',
                    ],
                    'room' => [
                        'label' => 'Aura',
                        'icon' => 'icon-university',
                        'url' => Backend::url('aura/backend/room'),
                        'permissions' => ['aura.backend.*'],
                        'group' => 'Thông tin Aura',
                    ],
                    'faq' => [
                        'label' => 'FAQ',
                        'icon' => 'icon-comments-o',
                        'url' => Backend::url('aura/backend/faq'),
                        'permissions' => ['aura.backend.*'],
                        'group' => 'Thông tin Aura',
                    ]
                ]
            ],
        ];
    }

    public function registerMarkupTags() {
        return [
            'filters' => [
                'getChildrenMenu' => ['Aura\Backend\Classes\HelperClass', 'getChildrenMenu']
            ]
        ];
    }

}
