<!DOCTYPE html>
<html lang="en">

<head>
    <x-layout.head />
</head>

<body>
    <header>
        <x-layout.header />
    </header>
    <main>
        <div class="container pt-3">
            <div class="row">
                <div class="col-12 col-md-3 sidebar-left-right d-mobi-none position-relative" id="sidebar-left">
                    <div @class([
                            'd-none' => Route::is('login.index', 'register.index')
                        ]) id="sidebar-left-child">
                        <x-sidebar_home_left />
                    </div>
                </div>
                <div class="col-12 col-md-9 main-sec-content">
                    @yield('top-section')

                    <div class="row">
                        <div class="col-12 col-md-9 main-content">
                            @yield('content')
                        </div>
                        <div class="col-12 col-md-3 sidebar-left-right d-mobi-none " id="sidebarRight">
                            <div @class([
                                    'd-none' => Route::is('login.index', 'register.index'),
                                    'sidebar-right-child' => !Route::is('homepage')
                                ])>
                                <x-sidebar_home_right />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <x-layout.footer />
    </footer>
    <x-layout.script />
    <x-alert />
</body>

</html>