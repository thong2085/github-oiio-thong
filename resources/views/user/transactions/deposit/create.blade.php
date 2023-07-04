@extends('layout')

@section('content')
    <x-form type="post" action="{{ route('transaction.deposit.store') }}" :validate="true">
        <x-card>
            <x-slot name="header">
                <span class="text-white"><i class="fa-solid fa-building-columns me-2" aria-hidden="true"></i><span
                        class="">Tạo lệnh nạp tiền</span></span>
            </x-slot>
            <div class="card-body">
                <x-input type="hidden" name="user_id" value="{{ $user->id }}" />
                <div class="mb-3 price_input__form">
                    <label class="form-label">{{ __('Nhập số tiền cần nạp') }}</label>
                    <x-input class="w-100 " name="amount" placeholder="Nhập số tiền cần nạp" min="100000"
                         :required="true" onchange="this.value = formatPrice(this.value)"/>
                   
                </div>
                <hr>
                <div class="mb-3">
                    <label for="">Chọn phương thức thanh toán</label>
                    <div class="mb-1">
                        <input type="radio" id="bankCodeQR" name="bank_code" value="VNPAYQR" checked>
                        <label for="bankCodeQR">Thanh toán bằng ứng dụng hỗ trợ VNPAYQR</label>
                    </div>
                    <div class="mb-1">
                        <input type="radio" id="bankCodeATM" name="bank_code" value="VNBANK">
                        <label for="bankCodeATM">Thanh toán qua thẻ ATM/Tài khoản nội địa</label>
                    </div>
                    <div class="mb-1">
                        <input type="radio" id="bankCodeQT" name="bank_code" value="INTCARD">
                        <label for="bankCodeQT">Thanh toán qua thẻ quốc tế</label>
                    </div>
                </div>
                <x-button type="submit" class="btn-orange w-100">Tạo lệnh nạp tiền</x-button>
            </div>
        </x-card>
    </x-form>
@endsection
