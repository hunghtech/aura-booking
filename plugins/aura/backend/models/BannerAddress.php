<?php namespace Aura\Backend\Models;

use Model;

/**
 * Model
 */
class BannerAddress extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'aura_backend_slide_dia_diem';
    
    public $implement = ['RainLab.Translate.Behaviors.TranslatableModel'];
    public $translatable = ['title','content'];

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
