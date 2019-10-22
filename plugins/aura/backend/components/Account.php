<?php namespace Aura\Backend\Components;

use Cms\Classes\ComponentBase;
use Auth;
use RainLab\User\Models\User;

class Account extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'Account Component',
            'description' => 'No description provided yet...'
        ];
    }

    public function defineProperties()
    {
        return [];
    }

    public function onRun(){

    }

    public function onUpdateUser()
    {
        $user = Auth::getUser();
        $full_name = post('name');
        $gender = post('gender');
        $dob = post('dob');
        $email = post('email');
        if ($user) {
            $user_id = $user->id;
            $userModel = User::find($user_id);
            $userModel->name = $full_name;
            $userModel->gender = $gender;
            $userModel->dob = $dob;
            $userModel->email = $email;
            $userModel->save();
            return \Flash::success('Update User Success');
        }
    }
}
