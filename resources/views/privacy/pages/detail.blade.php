@extends('privacy.layout.privacy')

@section('content')
    <style>
        * {
            font-family: 'Lato', sans-serif;
        }

        @import url('https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap');
        @media (max-width: 1980px) {
            .column-right__title {
                padding-top: 6px;
            }

            .title-HSD__icons {
                padding-top: 5px;
            }
        }

        @media (max-width: 1281px) {
            .column-right__title {
                padding-top: 6px;
            }

            .title-HSD__icons {
                padding-top: 0px;
            }

            .title-HSD h1 {
                font-size: 22px;
            }

            .column-right__title h1 {
                font-size: 22px;
            }

            .title-HSD__icons img {
                width: 20px;
                height: 20px;
            }
        }

        @media (max-width: 1024px) {
            .title-HSD h1 {
                font-size: 22px;
            }

            .column-right__title h1 {
                font-size: 22px;
            }

            .title-HSD__icons img {
                width: 20px;
                height: 20px;
            }

        }

        @media (max-width: 415px) {
            .title-HSD h1 {
                font-size: 20px;
            }

            .column-right__title h1 {
                font-size: 20px;
            }

            .title-HSD__icons img {
                width: 16px;
                height: 16px;
            }

            .column-right__title {
                padding-top: 10px;
            }

            .title-HSD__icons {
                padding-top: 0px;
            }
        }

        @media (max-width: 400px) {
            .title-HSD h1 {
                font-size: 18px;
            }

            .column-right__title h1 {
                font-size: 18px;
            }

            .title-HSD__icons img {
                width: 15px;
                height: 15px;
            }
        }

        @media (max-width: 281px) {
            .title-HSD h1 {
                font-size: 14px;
            }

            .column-right__title h1 {
                font-size: 14px;
            }

            .title-HSD__icons img {
                width: 12px;
                height: 12px;
            }

            .title-HSD__text {
                padding-top: 0px;
            }

            .title-HSD__icons {
                padding-top: 0px;
            }
        }
    </style>

    <!-- Start Sidebar -->
    <div class="sidebar" style="overflow-y: auto; position: sticky; top: 0;">
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                @foreach($listPrivacy as $key => $privacy)
                    <li class="nav-item">
                        <a class="nav-link sidebar-link" href="{{ route('privacy.detail', ['slug' => $privacy->slug]) }}">
                            <span class="menu-title">{{ $privacy->title }}</span>
                        </a>
                    </li>
                @endforeach
            </ul>
        </nav>
    </div>
    <!-- End Sidebar -->

    <!-- Start main-panel -->
    <div class="main-panel">
        <!-- Start Content -->
        <div class="content-wrapper" style="overflow-y: auto; overflow-x: hidden; padding: 10px; ">
            <div class="content-wrapper" style="padding: 1rem 1rem; font-family: 'Lato', sans-serif;">
                <div class="column-right__text">

                    <div class="title-HSD" style="display:flex;">
                        <div class="title-HSD__icons">
                            <a href="{{ route('privacy.index') }}" style="display:flex;">
                                <img src="{{ asset('icon/backButton.svg') }}" width="30px" height="30px"/>
                                <h1 style="text-decoration: none; color: #303030; font-family: Lato; font-size: 28px; font-style: normal; font-weight: 700; line-height: normal;">
                                    Chính sách & Điều khoản
                                </h1>
                            </a>
                        </div>
                    </div>

                    <div class="column-right__title">
                        <h1>
                            {{ $privacy->title }}
                        </h1>
                    </div>

                </div>
                <p style="font-family: 'Lato', sans-serif;">
                    {!! $privacy->content !!}
                </p>
            </div>
        </div>
        <!-- End Content -->

        <!-- Start Footer -->
        <footer class="footer" style="border-top: none; width: 100%; margin-top: 0px; background: #F3F3ED">
            @include('layout.include.footer')
        </footer>
        <!-- End Footer -->
    </div>
    <!-- End main-panel -->

    <!-- Trong phần đầu của layout -->
    <script>
        // Xử lý khi nhấp vào sidebar
        document.addEventListener('click', function(e) {
            var target = e.target;

            // Kiểm tra nếu nhấp vào một sidebar link
            if (target && target.matches('.sidebar-link')) {
                e.preventDefault();

                var slug = target.dataset.slug;
                var url = '{{ route("privacy.detail", ":slug") }}'.replace(':slug', slug);

                // Thay đổi URL và load lại trang
                window.history.pushState({}, '', url);
                window.location.reload();
            }
        });
    </script>

@endsection
