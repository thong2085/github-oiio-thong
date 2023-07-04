@extends('layout')

@section('content')

<x-card>
    <x-slot name="header">
        <span class="text-white"><i class="fa-solid fa-registered"></i> Đăng ký</span>
    </x-slot>
    <div class="card-body">
        <x-form type="post" :validate="true">
            <div class="mb-3">
                <label class="form-label">{{ __('Họ và tên') }}</label>
                <x-input class="w-100" type="text" name="fullname" placeholder="Họ và tên" required />
            </div>

            <div class="mb-3">
                <label class="form-label">{{ __('Tên đăng nhập') }}</label>
                <x-input class="w-100" type="text" name="username" placeholder="Tên đăng nhập" />
                <p id="errorName" class="text-left text-danger mb-2"></p>
            </div>

            <div class="mb-3">
                <label class="form-label">{{ __('Số điện thoại') }}</label>
                <x-input class="w-100" type="text" name="phone" placeholder="Số điện thoại" />
                <p id="errorPhone" class="text-danger text-left mb-2"></p>
            </div>

            <div class="mb-3">
                <label class="form-label">{{ __('Email') }}</label>
                <x-input id="email" class="w-100 email" type="email" name="email" placeholder="Email" />
                <p id="errorEmail" class="text-danger text-left mb-2"></p>
            </div>

            <div class="mb-3">
                <label class="form-label">{{ __('Mật khẩu') }}</label>
                <x-input id="password" class="w-100" type="password" name="password" placeholder="Mật khẩu" />
                <p id="errorPassword" class="text-danger text-left mb-2"></p>
            </div>

            <div class="mb-3">
                <label class="form-label">{{ __('Nhập lại mật khẩu') }}</label>
                <x-input id="password-confirm" class="w-100" type="password" name="confirm-password" placeholder="Nhập lại mật khẩu" />
                <p id="errorConfirm" class="text-danger text-left mb-2"></p>
            </div>

            <div class="mb-3">
                <label class="anim">
                    <input type="checkbox" class="checkbox" required="" />
                    <span>Tôi đồng ý với điều khoản sử dụng.</span>
                </label>
                <div class="clear"> </div>
            </div>
            <x-button type="submit" class="btn-orange w-100 mb-3">Đăng ký</x-button>
            <p class="mb-0">Bạn đã có tài khoản <a href="#"> Đăng nhập ngay!</a></p>
        </x-form>
    </div>
</x-card>
@include('auth.include.scriptReg')
@endsection