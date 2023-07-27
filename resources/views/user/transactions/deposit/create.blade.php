@extends('layout')

@section('content')
<style>
    a {
        text-decoration: none !important;
    }
</style>
<x-form type="post" action="{{ route('transaction.deposit.store') }}" :validate="true">
    <x-card>
        <x-slot name="header">
            <span class="text-white" style="color: #000;font-family: Lato;font-size: 20px;font-style: normal;font-weight: 700;line-height: normal;"><span class="">Tạo lệnh nạp tiền</span></span>
        </x-slot>
        <div class="card-body" style="border-radius:10px;">
            {{-- <x-input type="hidden" name="user_id" value="{{ $user->id }}" />--}}
            {{-- <div class="mb-3 price_input__form">--}}
            {{-- <label class="form-label">{{ __('Nhập số tiền cần nạp') }}</label>--}}
            {{-- <x-input class="w-100 " name="amount" placeholder="Nhập số tiền cần nạp" min="100000"--}}
            {{-- :required="true" onchange="this.value = formatPrice(this.value)"/>--}}
            {{-- --}}
            {{-- </div>--}}
            {{-- <hr>--}}
            {{-- <div class="mb-3">--}}
            {{-- <label for="">Chọn phương thức thanh toán</label>--}}
            {{-- <div class="mb-1">--}}
            {{-- <input type="radio" id="bankCodeQR" name="bank_code" value="VNPAYQR" checked>--}}
            {{-- <label for="bankCodeQR">Thanh toán bằng ứng dụng hỗ trợ VNPAYQR</label>--}}
            {{-- </div>--}}
            {{-- <div class="mb-1">--}}
            {{-- <input type="radio" id="bankCodeATM" name="bank_code" value="VNBANK">--}}
            {{-- <label for="bankCodeATM">Thanh toán qua thẻ ATM/Tài khoản nội địa</label>--}}
            {{-- </div>--}}
            {{-- <div class="mb-1">--}}
            {{-- <input type="radio" id="bankCodeQT" name="bank_code" value="INTCARD">--}}
            {{-- <label for="bankCodeQT">Thanh toán qua thẻ quốc tế</label>--}}
            {{-- </div>--}}
            {{-- </div>--}}
            {{-- <x-button type="submit" class="btn-orange w-100">Tạo lệnh nạp tiền</x-button>--}}
            <div class="card-grid">
                <div class="card-list">
                    <div class="card-content">
                        <div class="card-item">
                            <button type="button" class="btn btn-orange" data-toggle="modal" data-target="#qrModal" data-qr="{{ asset('icon/QR-50.svg') }}" style="background: linear-gradient(180deg, #FFF 0%, #FCFEFB 23.96%, #F4FBF3 50%, #F1FBF2 76.04%, #ECFAEB 100%);">
                                <svg class="item-logo" xmlns="http://www.w3.org/2000/svg" width="108" height="68" viewBox="0 0 108 68" fill="none" style="position: absolute;margin-top: 12px;margin-left:-180px">
                                    <g clip-path="url(#clip0_1264_668)">
                                        <path d="M36.4875 44.7965C49.4109 44.7965 59.8875 34.716 59.8875 22.2811C59.8875 9.84614 49.4109 -0.234375 36.4875 -0.234375C23.564 -0.234375 13.0875 9.84614 13.0875 22.2811C13.0875 34.716 23.564 44.7965 36.4875 44.7965Z" fill="#C3C3C3" fill-opacity="0.15" />
                                        <path d="M36.5434 57.3896H36.5059C16.3872 57.3896 0.0184326 41.6396 0.0184326 22.2813L0.0184326 14.4514C0.0184326 12.3226 1.81844 10.5906 4.03094 10.5906C6.24344 10.5906 8.04344 12.3226 8.04344 14.4514V22.2813C8.04344 37.3819 20.8122 49.6499 36.4872 49.6499H36.5247C52.2184 49.6499 64.9684 37.3638 64.9684 22.2813C64.9684 9.95917 75.3747 -0.0537109 88.1809 -0.0537109L98.0622 -0.0537109C100.275 -0.0537109 102.075 1.67825 102.075 3.80711C102.075 5.93598 100.275 7.66794 98.0622 7.66794L88.1809 7.66794C79.8184 7.66794 72.9934 14.2169 72.9934 22.2813C73.0309 41.6396 56.6622 57.3896 36.5434 57.3896Z" fill="#C3C3C3" fill-opacity="0.15" />
                                        <path d="M14.1561 70.0718C17.8633 70.0718 20.8686 67.1801 20.8686 63.6131C20.8686 60.046 17.8633 57.1543 14.1561 57.1543C10.4489 57.1543 7.4436 60.046 7.4436 63.6131C7.4436 67.1801 10.4489 70.0718 14.1561 70.0718Z" fill="#C3C3C3" fill-opacity="0.15" />
                                        <path d="M58.8374 70.0718C62.5446 70.0718 65.5499 67.1801 65.5499 63.6131C65.5499 60.046 62.5446 57.1543 58.8374 57.1543C55.1302 57.1543 52.1249 60.046 52.1249 63.6131C52.1249 67.1801 55.1302 70.0718 58.8374 70.0718Z" fill="#C3C3C3" fill-opacity="0.15" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_1264_668">
                                            <rect width="108" height="70" fill="white" />
                                        </clipPath>
                                    </defs>
                                </svg>
                                <span>50.000đ</span>
                                <div class="tick">
                                    <img src="{{ asset('viewsCustom/assets/images/tick-money.svg') }}" alt="">
                                </div>
                            </button>
                        </div>

                        <div class="card-item">
                            <button type="button" class="btn btn-orange" data-toggle="modal" data-target="#qrModal" data-qr="{{ asset('icon/QR-200.svg') }}" style="background: linear-gradient(180deg, #FFF 0%, #FBFEFE 23.96%, #F3F6FB 50%, #EDF5FF 76.04%, #E9F8FF 100%);">
                                <svg class="item-logo" xmlns="http://www.w3.org/2000/svg" width="108" height="68" viewBox="0 0 108 68" fill="none" style="position: absolute;margin-top: 12px;margin-left:-180px">
                                    <g clip-path="url(#clip0_1264_668)">
                                        <path d="M36.4875 44.7965C49.4109 44.7965 59.8875 34.716 59.8875 22.2811C59.8875 9.84614 49.4109 -0.234375 36.4875 -0.234375C23.564 -0.234375 13.0875 9.84614 13.0875 22.2811C13.0875 34.716 23.564 44.7965 36.4875 44.7965Z" fill="#C3C3C3" fill-opacity="0.15" />
                                        <path d="M36.5434 57.3896H36.5059C16.3872 57.3896 0.0184326 41.6396 0.0184326 22.2813L0.0184326 14.4514C0.0184326 12.3226 1.81844 10.5906 4.03094 10.5906C6.24344 10.5906 8.04344 12.3226 8.04344 14.4514V22.2813C8.04344 37.3819 20.8122 49.6499 36.4872 49.6499H36.5247C52.2184 49.6499 64.9684 37.3638 64.9684 22.2813C64.9684 9.95917 75.3747 -0.0537109 88.1809 -0.0537109L98.0622 -0.0537109C100.275 -0.0537109 102.075 1.67825 102.075 3.80711C102.075 5.93598 100.275 7.66794 98.0622 7.66794L88.1809 7.66794C79.8184 7.66794 72.9934 14.2169 72.9934 22.2813C73.0309 41.6396 56.6622 57.3896 36.5434 57.3896Z" fill="#C3C3C3" fill-opacity="0.15" />
                                        <path d="M14.1561 70.0718C17.8633 70.0718 20.8686 67.1801 20.8686 63.6131C20.8686 60.046 17.8633 57.1543 14.1561 57.1543C10.4489 57.1543 7.4436 60.046 7.4436 63.6131C7.4436 67.1801 10.4489 70.0718 14.1561 70.0718Z" fill="#C3C3C3" fill-opacity="0.15" />
                                        <path d="M58.8374 70.0718C62.5446 70.0718 65.5499 67.1801 65.5499 63.6131C65.5499 60.046 62.5446 57.1543 58.8374 57.1543C55.1302 57.1543 52.1249 60.046 52.1249 63.6131C52.1249 67.1801 55.1302 70.0718 58.8374 70.0718Z" fill="#C3C3C3" fill-opacity="0.15" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_1264_668">
                                            <rect width="108" height="70" fill="white" />
                                        </clipPath>
                                    </defs>
                                </svg>
                                <span>200.000đ</span>
                                <div class="tick">
                                    <img src="{{ asset('viewsCustom/assets/images/tick-money.svg') }}" alt="">
                                </div>
                            </button>
                        </div>

                        <div class="card-item">
                            <button type="button" class="btn btn-orange" data-toggle="modal" data-target="#qrModal" data-qr="{{ asset('icon/QR-500.svg') }}" style="background: linear-gradient(180deg, #FFF 0%, #FEFBFE 23.96%, #FDF2FF 50%, #FBF1FB 76.04%, #FAEBFA 100%);">
                                <svg class="item-logo" xmlns="http://www.w3.org/2000/svg" width="108" height="68" viewBox="0 0 108 68" fill="none" style="position: absolute;margin-top: 12px;margin-left:-180px">
                                    <g clip-path="url(#clip0_1264_668)">
                                        <path d="M36.4875 44.7965C49.4109 44.7965 59.8875 34.716 59.8875 22.2811C59.8875 9.84614 49.4109 -0.234375 36.4875 -0.234375C23.564 -0.234375 13.0875 9.84614 13.0875 22.2811C13.0875 34.716 23.564 44.7965 36.4875 44.7965Z" fill="#C3C3C3" fill-opacity="0.15" />
                                        <path d="M36.5434 57.3896H36.5059C16.3872 57.3896 0.0184326 41.6396 0.0184326 22.2813L0.0184326 14.4514C0.0184326 12.3226 1.81844 10.5906 4.03094 10.5906C6.24344 10.5906 8.04344 12.3226 8.04344 14.4514V22.2813C8.04344 37.3819 20.8122 49.6499 36.4872 49.6499H36.5247C52.2184 49.6499 64.9684 37.3638 64.9684 22.2813C64.9684 9.95917 75.3747 -0.0537109 88.1809 -0.0537109L98.0622 -0.0537109C100.275 -0.0537109 102.075 1.67825 102.075 3.80711C102.075 5.93598 100.275 7.66794 98.0622 7.66794L88.1809 7.66794C79.8184 7.66794 72.9934 14.2169 72.9934 22.2813C73.0309 41.6396 56.6622 57.3896 36.5434 57.3896Z" fill="#C3C3C3" fill-opacity="0.15" />
                                        <path d="M14.1561 70.0718C17.8633 70.0718 20.8686 67.1801 20.8686 63.6131C20.8686 60.046 17.8633 57.1543 14.1561 57.1543C10.4489 57.1543 7.4436 60.046 7.4436 63.6131C7.4436 67.1801 10.4489 70.0718 14.1561 70.0718Z" fill="#C3C3C3" fill-opacity="0.15" />
                                        <path d="M58.8374 70.0718C62.5446 70.0718 65.5499 67.1801 65.5499 63.6131C65.5499 60.046 62.5446 57.1543 58.8374 57.1543C55.1302 57.1543 52.1249 60.046 52.1249 63.6131C52.1249 67.1801 55.1302 70.0718 58.8374 70.0718Z" fill="#C3C3C3" fill-opacity="0.15" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_1264_668">
                                            <rect width="108" height="70" fill="white" />
                                        </clipPath>
                                    </defs>
                                </svg>
                                <span>500.000đ</span>
                                <div class="tick">
                                    <img src="{{ asset('viewsCustom/assets/images/tick-money.svg') }}" alt="">
                                </div>
                            </button>
                        </div>

                        <div class="card-item">
                            <button type="button" class="btn btn-orange" data-toggle="modal" data-target="#qrModal" data-qr="{{ asset('icon/QR-1000.svg') }}" style="background: linear-gradient(180deg, #FFF 0%, #FEFEFB 23.96%, #FFFCE4 50%, #FFFADE 76.04%, #FDF0D0 100%);">
                                <svg class="item-logo" xmlns="http://www.w3.org/2000/svg" width="108" height="68" viewBox="0 0 108 68" fill="none" style="position: absolute;margin-top: 12px;margin-left:-180px">
                                    <g clip-path="url(#clip0_1264_668)">
                                        <path d="M36.4875 44.7965C49.4109 44.7965 59.8875 34.716 59.8875 22.2811C59.8875 9.84614 49.4109 -0.234375 36.4875 -0.234375C23.564 -0.234375 13.0875 9.84614 13.0875 22.2811C13.0875 34.716 23.564 44.7965 36.4875 44.7965Z" fill="#C3C3C3" fill-opacity="0.15" />
                                        <path d="M36.5434 57.3896H36.5059C16.3872 57.3896 0.0184326 41.6396 0.0184326 22.2813L0.0184326 14.4514C0.0184326 12.3226 1.81844 10.5906 4.03094 10.5906C6.24344 10.5906 8.04344 12.3226 8.04344 14.4514V22.2813C8.04344 37.3819 20.8122 49.6499 36.4872 49.6499H36.5247C52.2184 49.6499 64.9684 37.3638 64.9684 22.2813C64.9684 9.95917 75.3747 -0.0537109 88.1809 -0.0537109L98.0622 -0.0537109C100.275 -0.0537109 102.075 1.67825 102.075 3.80711C102.075 5.93598 100.275 7.66794 98.0622 7.66794L88.1809 7.66794C79.8184 7.66794 72.9934 14.2169 72.9934 22.2813C73.0309 41.6396 56.6622 57.3896 36.5434 57.3896Z" fill="#C3C3C3" fill-opacity="0.15" />
                                        <path d="M14.1561 70.0718C17.8633 70.0718 20.8686 67.1801 20.8686 63.6131C20.8686 60.046 17.8633 57.1543 14.1561 57.1543C10.4489 57.1543 7.4436 60.046 7.4436 63.6131C7.4436 67.1801 10.4489 70.0718 14.1561 70.0718Z" fill="#C3C3C3" fill-opacity="0.15" />
                                        <path d="M58.8374 70.0718C62.5446 70.0718 65.5499 67.1801 65.5499 63.6131C65.5499 60.046 62.5446 57.1543 58.8374 57.1543C55.1302 57.1543 52.1249 60.046 52.1249 63.6131C52.1249 67.1801 55.1302 70.0718 58.8374 70.0718Z" fill="#C3C3C3" fill-opacity="0.15" />
                                    </g>
                                    <defs>
                                        <clipPath id="clip0_1264_668">
                                            <rect width="108" height="70" fill="white" />
                                        </clipPath>
                                    </defs>
                                </svg>
                                <span>1.000.000đ</span>
                                <div class="tick">
                                    <img src="{{ asset('viewsCustom/assets/images/tick-money.svg') }}" alt="">
                                </div>
                            </button>
                        </div>
                    </div>
                    <div class="card-warning">
                        <img src="{{ asset('viewsCustom/assets/images/info-circle.svg') }}" alt="">
                        <div style="display: flex;align-items: center;justify-content:flex-start;">
                            <p style="width:688px;height:auto;color: #A6A4A4; font-size: 16px; font-family: 'Lato' sans-serif; font-style: italic; font-weight: 700; word-wrap: break-word;">
                                Lưu ý: Vui lòng ghi đúng nội dung chuyển khoản ĐÚNG NỘI DUNG TRONG THẺ CHUYỂN KHOẢN. Nếu không hệ thống sẽ không thể cộng tiền vào tài khoản của bạn.<br />
                                <br />*Trong trường hợp ghi nhầm Username của người khác, OIIO.vn sẽ không chịu trách nhiệm!<br />
                                <br />Nên chuyển cùng ngân hàng để nhận được tiền nhanh nhất. Nếu chuyển khác ngân hàng bạn chọn hình thức chuyển tiền nhanh 24/7
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Nested Modal -->
            @include('user.transactions.deposit.modal.modalQR')

            <!-- JavaScript để xử lý việc hiển thị hình ảnh QR tương ứng -->
            <script>
                $('#qrModal').on('show.bs.modal', function(event) {
                    var button = $(event.relatedTarget);
                    var qrImage = button.data('qr');
                    $('#qrImage').attr('src', qrImage);
                });

                $('#qrModal').on('keydown', function(event) {
                    if (event.keyCode === 27) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                });
            </script>

            {{-- Style --}}
            <style>
                .card-list {
                    display: block;
                    align-items: center;
                    justify-content: center;
                    width: 807px;
                    height: 495px;
                    flex-shrink: 0;
                }

                .card-content {
                    display: grid;
                    grid-template-columns: 50% 50%;
                    justify-content: center;
                    align-items: center;
                    margin-bottom: 35px;
                    margin-left: 75px;
                }

                .card-item {
                    width: 100%;
                    margin-top: 2vh;
                    margin-bottom: 2vh;
                }

                .card-item button {
                    cursor: pointer;
                    color: #E0793F;
                    font-family: Lato;
                    font-size: 32px;
                    font-style: normal;
                    font-weight: 700;
                    line-height: normal;
                    letter-spacing: 3.2px;
                    align-items: center;
                    justify-content: center;
                    display: flex;
                    width: 290px;
                    height: 80px;
                    border-radius: 8px;
                    border: 1px solid rgba(48, 48, 48, 0.20);
                }

                .card-item button:hover {
                    opacity: 0.8;
                    border: 2px solid #269300;
                }

                .card-item button:focus {
                    color: #E0793F !important;
                    border: 2px solid #269300 !important;
                }

                .card-item button:hover .tick {
                    opacity: 1 !important;
                }

                .card-warning {
                    display: inline-flex;
                    align-items: flex-start;
                    gap: 20px;
                    margin-left: 25px;
                }

                .tick {
                    transition: .5s ease;
                    /* opacity: 0; */
                    opacity: 0;
                    position: absolute;
                    margin-left: 290px;
                    margin-top: -35px;
                    transform: translate(-50%, -50%);
                    -ms-transform: translate(-50%, -50%);
                    text-align: center;
                }

                .item-logo {
                    width: 108px;
                    height: 70px;
                    flex-shrink: 0;
                }
            </style>
        </div>
    </x-card>
</x-form>
<x-form type="post" action="{{ route('transaction.withdrawn.store') }}" :validate="true">
    <x-card>
        <x-slot name="header">
            <span class="text-white" style="color: #000;font-family: Lato;font-size: 20px;font-style: normal;font-weight: 700;line-height: normal;"><span class="">Tạo lệnh rút tiền</span></span>
        </x-slot>
        <div class="card-body">
            <x-input type="hidden" name="user_id" value="{{ $user->id }}" />
            <div class="mb-3">
                <label class="form-label"><span style="margin-right:210px;color: #000;font-family: 'Lato' sans-serif;font-size: 16px;font-style: normal;font-weight: 500;line-height: normal;">{{ __('Số dư: ') }}</span><b class="price__color">{{ format_price($user->wallet->amount) }}</b></label>
            </div>
            <div class="mb-3 price_input__form d-flex align-items-center">
                <label class="form-label" style="margin-right:109px;color: #000;font-family: 'Lato' sans-serif;font-size: 16px;font-style: normal;font-weight: 500;line-height: normal;">{{ __('Nhập số tiền cần rút') }}</label>
                <x-input style="width: 387px;height: 46px;flex-shrink: 0;" name="amount" placeholder="VD: 50.000 đ" min="100000" max="{{ $user->wallet->amount }}" :required="true" onchange="this.value = formatPrice(this.value)" />

            </div>
            <div class="mb-3 d-flex align-items-center">
                <label for="" style="margin-right:67px;color: #000;font-family: 'Lato' sans-serif;font-size: 16px;font-style: normal;font-weight: 500;line-height: normal;">Chọn tài khoản ngân hàng</label>
                <select style="width: 387px;height: 46px;flex-shrink: 0;border-radius: 5px;border: 1px solid rgba(48, 48, 48, 0.21);">
                    <option value="">Chọn tài khoản ngân hàng</option>
                </select>
                <!-- @each('user.transactions.withdrawn.include.bank-row', $user->bankAccount, 'item') -->
            </div>
            <x-button type="submit" class="btn-orang" style="display: inline-flex;padding: 10px 20px;justify-content:center;align-items: center;border-radius: 5px;background: #E0793F;color:#FFF;margin-left:610px;">
                Tạo lệnh rút tiền</x-button>
        </div>
    </x-card>
    <div style="width: 100%;height:68px;background-color:#e9e9e9;">
        <div style="height: 68px;"></div>
    </div>
</x-form>
@endsection

<!-- CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>