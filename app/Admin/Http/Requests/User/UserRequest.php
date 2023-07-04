<?php

namespace App\Admin\Http\Requests\User;

use App\Admin\Http\Requests\BaseRequest;
use Illuminate\Validation\Rules\Enum;
use App\Enums\User\{UserVip, UserGender};
use Illuminate\Validation\Rule;

class UserRequest extends BaseRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    protected function methodPost()
    {
        return [
            'username' => [
                'required', 
                'string', 'min:6', 'max:50',
                'unique:App\Models\User,username', 
                'regex:/^[A-Za-z0-9_-]+$/',
                function ($attribute, $value, $fail) {
                    if (in_array(strtolower($value), ['admin', 'user', 'password'])) {
                        $fail('The '.$attribute.' cannot be a common keyword.');
                    }
                },
            ],
            'fullname' => ['required', 'string'],
            'email' => ['required', 'email', 'unique:App\Models\User,email'],
            'phone' => ['required', 'regex:/((09|03|07|08|05)+([0-9]{8})\b)/', 'unique:App\Models\User,phone'],
            'gender' => ['required', new Enum(UserGender::class)],
            'password' => ['required', 'string', 'confirmed'],
            'province_id' => ['nullable'],
            'district_id' => ['nullable'],
            'ward_id' => ['nullable'],
            // 'vip' => ['required', new Enum(UserVip::class)]
        ];
    }

    protected function methodPut()
    {
        return [
            'id' => ['required', 'exists:App\Models\User,id'],
            'username' => [
                'required', 
                'string', 'min:6', 'max:50',
                'unique:App\Models\User,username,'.$this->id, 
                'regex:/^[A-Za-z0-9_-]+$/',
                function ($attribute, $value, $fail) {
                    if (in_array(strtolower($value), ['admin', 'user', 'password'])) {
                        $fail('The '.$attribute.' cannot be a common keyword.');
                    }
                },
            ],
            'fullname' => ['required', 'string'],
            'email' => ['required', 'email', 'unique:App\Models\User,email,'.$this->id],
            'phone' => ['required', 'regex:/((09|03|07|08|05)+([0-9]{8})\b)/', 'unique:App\Models\User,phone,'.$this->id],
            'gender' => ['required', new Enum(UserGender::class)],
            'password' => ['nullable', 'string', 'confirmed'],
            'province_id' => ['nullable'],
            'district_id' => ['nullable'],
            'ward_id' => ['nullable'],
            // 'vip' => ['required', new Enum(UserVip::class)]
        ];
    }
}