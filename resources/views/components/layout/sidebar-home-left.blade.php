@if (auth()->guard('web')->check())

<x-link :href="route('homepage')" class="mb-3 btn btn-orange w-100" >{{ __('Trang chủ') }}</x-link>

<x-form class="mb-3 d-desktop-none" :action="route('logout')" type="post">
    <button type="submit" class="btn btn-orange w-100">{{ __('Đăng xuất') }}</button>
</x-form>

<x-card>
    <x-slot name="header">
        <div class="text-center">
            <a href="{{ route('user.index') }}">
                <img src="{{asset(auth()->user()->getAvatar())}}" class="rounded-circle mb-2 border border-white border-5" width="100px" height="100px" />
                <p class="mb-0 text-white fs-6 text-uppercase">
                    {{ $user->fullname ?? $user->username }}
                </p>
            </a>
        </div>
    </x-slot>
    <div class="card-body">
        <ul>
            <li class="fs-14">Giới tính: {{auth()->user()->getGender() ?? __('Giới tính: chưa cập nhật')}}</li>
            <li class="fs-14">Email: {{ $user->email }}</li>
            <li class="fs-14">Phone: {{ $user->phone }}</li>
        </ul>
        <p class="mb-0 text-orange share-icon text-center">
            <span class="me-1">
                <a href="mailto:{{ $user->email }}" target="_blank"><i class="fa-solid fa-envelope"></i></a>
            </span>
            <span class="me-1">
                <a href="{{ Str::startsWith($user->contact->facebook, 'https://') ? $user->contact->facebook : 'https://' . $user->contact->facebook }}" target="_blank">
                    <i class="fa-brands fa-facebook text-primary"></i>
                </a>
            </span>
            <span class="me-1">
                <a href="http://zalo.me/{{ $user->contact->zalo ?? $user->phone }}" target="_blank">
                    <img src="{{ asset('assets/image/zalo.png') }}" style="width: 12px; margin-top: -3px;" />
                </a>
            </span>
        </p>
    </div>
</x-card>

<x-card>
    <x-slot name="header">
        <span class="text-white"><i class="fa-duotone fa-gear"></i> Cài đặt</span>
    </x-slot>
    <x-slot name="footer">
        <a href="{{ route('wallet.show') }}">
            <div class="card-option border-dotted">
                Số dư <i class="fa-solid fa-right float-end"></i>
            </div>
        </a>
        <a href="{{ route('transaction.deposit.create') }}">
            <div class="card-option border-dotted">
                Nạp tiền <i class="fa-solid fa-right float-end"></i>
            </div>
        </a>
        <a href="{{ route('transaction.withdrawn.create') }}">
            <div class="card-option border-dotted">
                Rút tiền <i class="fa-solid fa-right float-end"></i>
            </div>
        </a>
        <a href="{{ route('transaction.history.deposit') }}">
            <div class="card-option border-dotted">
                Lịch sử nạp tiền <i class="fa-solid fa-right float-end"></i>
            </div>
        </a>
        <a href="{{ route('transaction.history.withdrawn') }}">
            <div class="card-option border-dotted">
                Lịch sử rút tiền <i class="fa-solid fa-right float-end"></i>
            </div>
        </a>
        <a href="{{ route('transaction.index') }}">
            <div class="card-option border-dotted">
                Lịch sử giao dịch <i class="fa-solid fa-right float-end"></i>
            </div>
        </a>
        <a href="{{ route('user.bank.index') }}">
            <div class="card-option border-dotted">
                Tài khoản ngân hàng <i class="fa-solid fa-right float-end"></i>
            </div>
        </a>
        <a href="{{ route('user.index') }}">
            <div class="card-option border-dotted">
                Thông tin tài khoản <i class="fa-solid fa-right float-end"></i>
            </div>
        </a>
        @if(auth()->user()->isMember())
            <a href="{{ route('user.create_shop') }}">
                <div class="card-option">
                    Tạo shop bán hàng <i class="fa-solid fa-right float-end"></i>
                </div>
            </a>
        @endif
        @if(auth()->user()->isShop())
            <a href="{{ route('user.update_shop') }}">
                <div class="card-option">
                    Sửa tên cửa hàng <i class="fa-solid fa-right float-end"></i>
                </div>
            </a>
        @endif
    </x-slot>
</x-card>
@if(auth()->user()->isShop())
    <x-card>
        <x-slot name="header">
            <span class="text-white"><i class="fa-brands fa-jedi-order"></i> {{ __('Quản lý shop') }}</span>
        </x-slot>
        <x-slot name="footer">
            <x-link :href="route('user.contact.index')">
                <div class="card-option border-dotted">
                    {{ __('Thông tin shop') }} <i class="fa-solid fa-right float-end"></i>
                </div>
            </x-link>
            <x-link :href="route('job.manager.create')">
                <div class="card-option border-dotted">
                    {{ __('Tạo đơn') }} <i class="fa-solid fa-right float-end"></i>
                </div>
            </x-link>
            @foreach ($job_status['shop'] as $key => $item)
                <x-link :href="route('job.manager.index', $key)">
                    <div @class([
                    "card-option d-flex justify-content-between align-items-center",
                    "border-dotted"=> !$loop->last
                ])>
                    <div class="d-flex align-items-center gap-1">
                        <span>{{ $item['text'] }}</span>
                        @if($item['number'])
                            <span class="job-status-number badge rounded-pill bg-danger">
                                {{ $item['number'] }}
                            </span>
                        @endif
                    </div>
                    <i class="fa-solid fa-right float-end"></i>
                </div>
                </x-link>
            @endforeach
        </x-slot>
    </x-card>
@endif
<x-card>
    <x-slot name="header">
        <span class="text-white"><i class="fa-brands fa-jedi-order"></i> {{ __('Quản lý đặt đơn') }}</span>
    </x-slot>
    <x-slot name="footer">
        @foreach ($job_status['member'] as $key => $item)
            <x-link class="" :href="route('job.received.index', $key)">
                <div @class([
                    "card-option d-flex justify-content-between align-items-center",
                    "border-dotted"=> !$loop->last
                ])>
                    <div class="d-flex align-items-center gap-1">
                        <span>{{ $item['text'] }}</span>
                        @if($item['number'])
                            <span class="job-status-number badge rounded-pill bg-danger">
                                {{ $item['number'] }}
                            </span>
                        @endif
                    </div>
                    <i class="fa-solid fa-right float-end"></i>
                </div>
            </x-link>
        @endforeach
    </x-slot>
</x-card>
@else
<x-link class="btn btn-orange w-100 mb-3" href="{{ route('login.index') }}">Đăng nhập</x-link>
<x-link class="btn btn-orange w-100 mb-3" href="{{ route('register.index') }}">Đăng ký</x-link>
@endif
<x-card>
    <x-slot name="header">
        <span class="text-white"><i class="fa-solid fa-newspaper"></i> Tin tức
            <a class="float-end text-white" href="{{ route('news.index')}}">
                <i class="fa-solid fa-arrow-right"></i>
            </a>
        </span>
    </x-slot>
    <x-slot name="footer">
        <div class="row">
            @foreach($news as $value)
                @if($loop->iteration <= 2)
                    <div class="col-6 col-md-12">
                        <a href="{{ route('news.detail', $value->slug) }}">
                            <div @class([
                                "card-option" ,
                                "border-dotted"=> !$loop->last
                            ])>
                                <div class="blog-avatar mb-3">
                                    <img src="{{ asset($value->avatar) }}" />
                                </div>
                                <p class="lh-base mb-2">{{ $value->title }}</p>
                                <p class="text-orange mb-0 fs-12" href="#">{{ __('Xem thêm') }}</p>
                            </div>
                        </a>
                    </div>
                @endif
            @endforeach
        </div>
    </x-slot>
</x-card>
<p class="d-mobi-none" style="padding-bottom: 100px"></p>
