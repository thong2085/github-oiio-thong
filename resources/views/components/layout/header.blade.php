<nav class="navbar navbar-expand-lg bg-body-tertiary shadow-sm bg-body-tertiary" style="width: 100%; height: 80px; border-bottom: 1px solid rgba(0, 0, 0, 0.30); box-shadow: 0px 2px 8px 0px rgba(0, 0, 0, 0.15);">
    <div class="container">
        <div class="">
            <a class="navbar-brand me-2" href="{{ route('homepage') }}">
                <img src="{{ asset('icon/logoHeader.png') }}"
                     style="display: flex; width: 157px; height: 78px; justify-content: center; align-items: center; flex-shrink: 0; margin-top: 40px; margin-bottom: 12px; margin-left: 65px;"/>
            </a>
        </div>
{{--        <div class="d-flex align-items-center gap-2">--}}
{{--            <x-link class="fs-14 d-flex align-items-center gap-1 text-orange p-2" :href="'tel:'.$settings['hotline']">--}}
{{--                <i class="fa-duotone fa-phone"></i>--}}
{{--                <span class="d-none d-md-block">{{ $settings['hotline'] }}</span>--}}
{{--            </x-link>--}}
{{--            <x-link class="d-flex align-items-center gap-1 fs-14 text-orange ms-2 p-2" :href="$settings['admin_facebook_link']" target="_blank">--}}
{{--                <i class="fa-brands fa-facebook"></i>--}}
{{--                <span class="d-none d-md-block">{{ $settings['admin_facebook_name'] }}</span>--}}
{{--            </x-link>--}}
{{--        </div>--}}
        {{-- <form class="d-flex d-mobi-none" role="search">
            <input class="form-control me-2" type="search" placeholder="Tìm kiếm công việc">
            <button class="btn btn-orange" type="submit">Tìm kiếm</button>
        </form> --}}
        <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <form class="d-flex d-desktop-none" role="search" style="width: 93%">
                        <input class="form-control me-2" type="search" placeholder="Tìm kiếm công việc">
                        <button class="btn btn-orange" type="submit">Tìm kiếm</button>
                    </form>
                </li>

                @if (auth()->guard('web')->check())
                    <li class="nav-item me-2">
                        <a class="nav-link border-0 rounded bg-white text-dark" href="{{route('wallet.show')}}">Ví tiền: {{format_price(auth()->user()->wallet()->value('amount'))}}</a>
                    </li>
                    <li class="nav-item me-2">
    {{--                    <a class="nav-link border-0 rounded bg-white text-dark" href="{{route('wallet.show')}}">Ví tiền: {{format_price(auth()->user()->wallet()->value('amount'))}}</a>--}}
                        <a class="nav-link border-0 rounded text-dark" href="">
                            <img src="{{ asset('icon/settings.svg') }}"
                                 style="display: flex;
                                        width: 24px;
                                        height: 24px;
                                        padding: 1px;
                                        justify-content: center;
                                        align-items: center;
                                        flex-shrink: 0;">
                        </a>
                    </li>

                    <li class="nav-item me-2">
                        <a class="nav-link border-0 rounded text-dark" href="">
                            <img src="{{ asset('icon/bell.svg') }}"
                                 style="display: flex;
                                        width: 24px;
                                        height: 24px;
                                        padding: 1px;
                                        justify-content: center;
                                        align-items: center;
                                        flex-shrink: 0;">
                        </a>
                    </li>
                @else
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('login.index') }}">Đăng nhập</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('register.index') }}">Đăng ký</a>
                </li>
                @endif
            </ul>
        </div>

        <!-- Side bar on mobile devices -->
        @include('components.layout.nav-mobile')
        <!-- End Side bar on mobile devices -->

        @if (auth()->check())
        <div class="d-flex gap-2 align-items-center d-mobi-none">
            <a class="" href="{{ route('user.index') }}">
                <span>
                    <img class="rounded-circle shadow-sm bg-body-tertiary rounded"
                        src="{{asset(auth()->user()->getAvatar())}}" width="35px" height="35px" style="border: 2px solid #ed6237;"/>
                </span>
                <span>{{ auth()->user()->username }}</span>
            </a>
            <span class="">|</span>
            <x-form class="" :action="route('logout')" type="post">
                <button type="submit" class="border-0" style="background: transparent !important">{{ __('Đăng xuất') }}</button>
            </x-form>
        </div>
        @endif
    </div>
</nav>
