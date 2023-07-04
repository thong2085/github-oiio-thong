
<x-card>
    <x-slot name="header">
        <span class="text-white"><i class="fa-solid fa-magnifying-glass"></i> Tìm kiêm</span>
    </x-slot>
    <x-slot name="footer">
        <a href="{{ route('info.search_shop') }}">
            <div class="card-option border-dotted">
                Tìm kiếm cửa hàng <i class="fa-solid fa-right float-end"></i>
            </div>
        </a>
        <a href="{{ route('info.search_user') }}">
            <div class="card-option">
                Tìm kiếm cộng tác viên <i class="fa-solid fa-right float-end"></i>
            </div>
        </a>
    </x-slot>
</x-card>
<x-card>
    <x-slot name="header">
        <span class="text-white fs-14"><i class="fa-regular fa-box-open"></i> {{ __('Shop có nhiều đơn hàng') }}</span>
    </x-slot>
    <div class="card-body p-0">
        @foreach($users as $user)
        <a href="{{ route('info.shop_detail', $user->slug) }}">
            <div @class([
                "p-2",
                "border-dotted" => !$loop->last
            ])>
                <p class="m-0 text-orange">
                    <i class="fa-regular fa-{{ $loop->iteration }}"></i> {{ $user->getNameShop() }}
                    @if($user->isReputable())
                        <i class="fa-regular fa-circle-check text-primary"></i>
                    @endif
                </p>
            </div>
        </a>
        @endforeach
    </div>
</x-card>
@if (auth()->check())
<x-card>
    <x-slot name="header">
        <span class="text-white fs-14"><i class="fa-regular fa-box-open"></i> {{ __('Đã nhận gần đây') }}</span>
    </x-slot>
    <div class="card-body">
        @foreach ($jobs as $job)
            <x-link :href="route('job.show', $job->slug)">
                <div class="order-list mb-2">
                    <p class="m-0 fw-bold">{{ __('Đơn gần đây') }}</p>
                    <p class="m-0 text-orange"> {{ __('Xem chi tiết') }} <i class="fa-solid fa-right float-end"></i></p>
                </div>
            </x-link>
        @endforeach
    </div>
</x-card>
@endif