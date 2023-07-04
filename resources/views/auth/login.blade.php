@extends('layout')

@section('content')
<x-card>
    <x-slot name="header">
        <span class="text-white"><i class="fa-solid fa-right-to-bracket"></i> Đăng nhập</span>
    </x-slot>
    <div class="card-body">
        <x-form type="post" :validate="true">
            <div class="mb-3">
                <label class="form-label">{{ __('Email') }}</label>
                <x-input-email class="w-100" name="email" :required="true" />
            </div>
            <div class="mb-3">
                <label class="form-label">{{ __('Mật khẩu') }}</label>
                <x-input-password class="w-100" name="password" :required="true" />
            </div>
            <div class="mb-3">
                <x-link href="{{ route('register.index') }}">Chưa có tài khoản? Đăng ký ngay!</x-link>
                <br><x-link href="{{ route('password.get') }}">Quên mật khẩu?</x-link>
            </div>
            <x-button type="submit" class="btn-orange w-100">Đăng nhập</x-button>
        </x-form>
    </div>
</x-card>
@endsection