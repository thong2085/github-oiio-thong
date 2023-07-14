{{--<nav class="sidebar sidebar-offcanvas" id="sidebar">--}}
{{--    <ul class="nav">--}}
{{--        <li class="nav-item nav-profile">--}}
{{--            <a href="#" class="nav-link">--}}
{{--                <div class="nav-profile-image">--}}
{{--                    <img src="{{ asset('viewsCustom/assets/images/faces/face1.jpg') }}" alt="profile">--}}
{{--                    <span class="login-status online"></span>--}}
{{--                    <!--change to offline or busy as needed-->--}}
{{--                </div>--}}
{{--                <div class="nav-profile-text d-flex flex-column">--}}
{{--                    <span class="font-weight-bold mb-2">David Grey. H</span>--}}
{{--                </div>--}}
{{--            </a>--}}
{{--        </li>--}}
{{--        <li class="nav-item">--}}
{{--            <a class="nav-link" href="index.html">--}}
{{--                <span class="menu-title">Dashboard</span>--}}
{{--                <i class="mdi mdi-home menu-icon"></i>--}}
{{--            </a>--}}
{{--        </li>--}}
{{--        <li class="nav-item">--}}
{{--            <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">--}}
{{--                <span class="menu-title">Basic UI Elements</span>--}}
{{--                <i class="menu-arrow"></i>--}}
{{--                <i class="mdi mdi-crosshairs-gps menu-icon"></i>--}}
{{--            </a>--}}
{{--            <div class="collapse" id="ui-basic">--}}
{{--                <ul class="nav flex-column sub-menu">--}}
{{--                    <li class="nav-item"> <a class="nav-link" href="{{ asset('viewsCustom/pages/ui-features/buttons.html') }}">Buttons</a></li>--}}
{{--                    <li class="nav-item"> <a class="nav-link" href="{{ asset('viewsCustom/pages/ui-features/typography.html') }}">Typography</a></li>--}}
{{--                </ul>--}}
{{--            </div>--}}
{{--        </li>--}}
{{--        <li class="nav-item">--}}
{{--            <a class="nav-link" href="{{ asset('viewsCustom/pages/icons/mdi.html') }}">--}}
{{--                <span class="menu-title">Icons</span>--}}
{{--                <i class="mdi mdi-contacts menu-icon"></i>--}}
{{--            </a>--}}
{{--        </li>--}}
{{--        <li class="nav-item">--}}
{{--            <a class="nav-link" href="{{ asset('viewsCustom/pages/forms/basic_elements.html') }}">--}}
{{--                <span class="menu-title">Forms</span>--}}
{{--                <i class="mdi mdi-format-list-bulleted menu-icon"></i>--}}
{{--            </a>--}}
{{--        </li>--}}
{{--        <li class="nav-item">--}}
{{--            <a class="nav-link" href="{{ asset('viewsCustom/pages/charts/chartjs.html') }}">--}}
{{--                <span class="menu-title">Charts</span>--}}
{{--                <i class="mdi mdi-chart-bar menu-icon"></i>--}}
{{--            </a>--}}
{{--        </li>--}}
{{--        <li class="nav-item">--}}
{{--            <a class="nav-link" href="{{ asset('pages/tables/basic-table.html') }}">--}}
{{--                <span class="menu-title">Tables</span>--}}
{{--                <i class="mdi mdi-table-large menu-icon"></i>--}}
{{--            </a>--}}
{{--        </li>--}}
{{--        <li class="nav-item">--}}
{{--            <a class="nav-link" data-bs-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">--}}
{{--                <span class="menu-title">Sample Pages</span>--}}
{{--                <i class="menu-arrow"></i>--}}
{{--                <i class="mdi mdi-medical-bag menu-icon"></i>--}}
{{--            </a>--}}
{{--            <div class="collapse" id="general-pages">--}}
{{--                <ul class="nav flex-column sub-menu">--}}
{{--                    <li class="nav-item"> <a class="nav-link" href="#"> Blank Page </a></li>--}}
{{--                    <li class="nav-item"> <a class="nav-link" href="#"> Login </a></li>--}}
{{--                    <li class="nav-item"> <a class="nav-link" href="#"> Register </a></li>--}}
{{--                    <li class="nav-item"> <a class="nav-link" href="#"> 404 </a></li>--}}
{{--                    <li class="nav-item"> <a class="nav-link" href="#"> 500 </a></li>--}}
{{--                </ul>--}}
{{--            </div>--}}
{{--        </li>--}}
{{--        <li class="nav-item sidebar-actions">--}}
{{--              <span class="nav-link">--}}
{{--                <div class="border-bottom">--}}
{{--                  <h6 class="font-weight-normal mb-3">Projects</h6>--}}
{{--                </div>--}}
{{--                <button class="btn btn-block btn-lg btn-gradient-primary mt-4">+ Add a project</button>--}}
{{--                <div class="mt-4">--}}
{{--                  <div class="border-bottom">--}}
{{--                    <p class="text-secondary">Categories</p>--}}
{{--                  </div>--}}
{{--                  <ul class="gradient-bullet-list mt-4">--}}
{{--                    <li>Free</li>--}}
{{--                    <li>Pro</li>--}}
{{--                  </ul>--}}
{{--                </div>--}}
{{--              </span>--}}
{{--        </li>--}}
{{--    </ul>--}}
{{--</nav>--}}
<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item">
            <a style="border-bottom: 1px solid #CBCBC6;" class="nav-link" href="index.html">
                @if (auth()->guard('web')->check())
                    <span class="menu-title-wallet" href="{{route('wallet.show')}}">Ví tiền: </span><span style="padding-left:10px;"class="menu-title-wallet"> {{format_price(auth()->user()->wallet()->value('amount'))}} </span>
                    <img style="border-radius: 34px;background: #E0793F;height:20px;margin-left: auto;" src="{{ asset('icon/plus-circle.svg') }}" alt="">
                @endif
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <img src="{{ asset('icon/dichvu.svg') }}" alt="">
                <span class="menu-title"> Dịch vụ</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="#">Lên Shopee Mall</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Lên Lazada Mall</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Mở thông tin khách hàng Shopee</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Setup gian hàng chuẩn SEO</a></li>

                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic1" aria-expanded="false" aria-controls="ui-basic1">
                <img src="{{ asset('icon/quanlyshop.svg') }}" alt="">
                <span class="menu-title"> Quản lý shop</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic1">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="#">Thông tin shop</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Tạo đơn</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Đơn chưa nhận</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Đơn đã nhận</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Đơn đã đặt</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Đơn xác nhận đã đặt</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Đơn đã đánh giá</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Đơn đã hoàn thành</a></li>
                    <li class="nav-item"> <a class="nav-link" href="#">Đơn đã huỷ</a></li>
                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic2" aria-expanded="false" aria-controls="ui-basic2">
                <img src="{{ asset('icon/quanlydon.svg') }}" alt="">
                <span class="menu-title"> Quản lý đặt đơn</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic2">
                <ul class="nav flex-column sub-menu">
                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic3" aria-expanded="false" aria-controls="ui-basic3">
                <img src="{{ asset('icon/help.svg') }}" alt="">
                <span class="menu-title"> Trợ giúp</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic3">
                <ul class="nav flex-column sub-menu">
                </ul>
            </div>
        </li>

    </ul>
</nav>


