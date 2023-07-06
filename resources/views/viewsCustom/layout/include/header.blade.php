<div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center" style="background: #FFFFF0">
    {{-- Logo --}}
    <a class="navbar-brand brand-logo" href="{{ route('homepage') }}" style="background: #FFFDF6">
        <img src="{{ asset('icon/logoHeader.png') }}" alt="logo"
             style="display: flex;
                    width: 140px;
                    height: 60px;
                    justify-content: center;
                    align-items: center;
                    flex-shrink: 0;"/>
    </a>
    {{-- Logo Mobile --}}
    <a class="navbar-brand brand-logo-mini" href="{{ route('homepage') }}">
        <img src="{{ asset('viewsCustom/assets/images/logo-mini.svg') }}" alt="logo" />
    </a>
</div>
<div class="navbar-menu-wrapper d-flex align-items-center justify-content-center">
    {{-- Tìm kiếm --}}
    <div class="search-field d-none d-md-block">
        <form class="d-flex align-items-center h-100" action="#">
            <div class="input-group">
                <div class="input-group-prepend bg-transparent">
                    <i class="input-group-text border-0 mdi mdi-magnify"></i>
                </div>
                <input type="text" class="form-control bg-transparent border-2" placeholder="Tìm kiếm của hàng, CTV..."
                        style="width: 500px;">
            </div>
        </form>
    </div>

    <ul class="navbar-nav navbar-nav-right">
        {{-- Thông báo --}}
        <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-bs-toggle="dropdown">
                <img src="{{ asset('icon/bell.svg') }}"
                     style="display: flex;
                                        width: 24px;
                                        height: 24px;
                                        padding: 1px;
                                        justify-content: center;
                                        align-items: center;
                                        flex-shrink: 0;">
                <span class="count-symbol bg-danger"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                <h6 class="p-3 mb-0">Notifications</h6>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                        <div class="preview-icon bg-success">
                            <i class="mdi mdi-calendar"></i>
                        </div>
                    </div>
                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                        <h6 class="preview-subject font-weight-normal mb-1">Event today</h6>
                        <p class="text-gray ellipsis mb-0"> Just a reminder that you have an event today </p>
                    </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                        <div class="preview-icon bg-warning">
                            <i class="mdi mdi-settings"></i>
                        </div>
                    </div>
                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                        <h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
                        <p class="text-gray ellipsis mb-0"> Update dashboard </p>
                    </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                        <div class="preview-icon bg-info">
                            <i class="mdi mdi-link-variant"></i>
                        </div>
                    </div>
                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                        <h6 class="preview-subject font-weight-normal mb-1">Launch Admin</h6>
                        <p class="text-gray ellipsis mb-0"> New admin wow! </p>
                    </div>
                </a>
                <div class="dropdown-divider"></div>
                <h6 class="p-3 mb-0 text-center">See all notifications</h6>
            </div>
        </li>

        {{-- Thông tin người dùng --}}
        <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                @if (auth()->check())
                    <div class="nav-profile-img">
                        <img src="{{asset(auth()->user()->getAvatar())}}" width="35px" height="35px"
                             style="display: flex;
                                    align-items: flex-end;
                                    gap: 10px;"
                             alt="image">
                        <span class="availability-status online"></span>
                    </div>
                    <div class="nav-profile-text">
                        <p class="mb-1 text-black">{{ auth()->user()->username }}</p>
                    </div>
                @endif
            </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                <a class="dropdown-item" href="{{ route('user.index') }}">
                    <i class="mdi mdi-cached me-2 text-success"></i> Thông tin tài khoản </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">
                    <i class="mdi mdi-cached me-2 text-success"></i> Tài khoản ngân hàng </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{ route('logout') }}">
                    <i class="mdi mdi-logout me-2 text-primary"></i> Đăng xuất </a>
            </div>
        </li>
    </ul>
    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
        <span class="mdi mdi-menu"></span>
    </button>
</div>