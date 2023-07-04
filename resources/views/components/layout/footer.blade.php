<div class="container pt-5 pb-5">
    <div class="row">
        <div class="col-12 col-md-4">
            <img class="mb-3" src="{{ asset('assets/images/logo.png') }}" width="100"/>
            <div class="navbar-nav">
                <li class="nav-item">
                    <x-link class="header-icon nav-link text-orange" :href="'mailto:'.$settings['email']">
                        <i class="fa-solid fa-envelope"></i>
                    </x-link>
                </li>

                <li class="nav-item">
                    <x-link class="header-icon nav-link text-primary" :href="$settings['group_facebook']">
                        <i class="fa-brands fa-facebook"></i>
                    </x-link>
                </li>

                <li class="nav-item">
                    <x-link class="header-icon nav-link text-orange" :href="'http://zalo.me/'.$settings['zalo']">
                        <img src="{{ asset('assets/image/zalo.png') }}" width="13px" />
                    </x-link>
                </li>
            </div>
        </div>
        <div class="col-12 col-md-4 mb-mobi">
            <p class="mb-2 fs-6 fw-bold">{{ __('THÔNG TIN LIÊN HỆ') }}</p>
            <p class="">
                <i class="fa-sharp fa-solid fa-location-crosshairs"></i>
                {{ __('Địa chỉ: :address', ['address' => $settings['address']]) }}
            </p>
            <p class="">
                <i class="fa-duotone fa-phone"></i>
                <x-link :href="'tel:'.$settings['hotline']">
                    {{ __('Điện thoại: :hotline', ['hotline' => $settings['hotline']]) }}
                </x-link>
            </p>
            <p class="">
                <i class="fa-sharp fa-solid fa-envelopes-bulk"></i>
                <x-link :href="'mailto:'.$settings['email']">
                    {{ __('Email: :email', ['email' => $settings['email']]) }}
                </x-link>
            </p>
        </div>
        <div class="col-12 col-md-4">
            <p class="mb-2 fs-6 fw-bold">VỀ CHÚNG TÔI</p>
            <p class="">
                <a href="#">Nhận việc làm ngay</a>
            </p>
            <p class="">
                <a href="#">Đăng việc tìm người</a>
            </p>
            <p class="">
                <a href="#">Tin tức </a>
            </p>
        </div>
    </div>
</div>
