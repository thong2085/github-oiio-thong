@extends('help.layout.help')

@section('content')
    <div class="card-body">
        <p class="card-description">Danh Mục </p>
        <div class="template-demo">
            <button type="button" class="btn btn-fw ">
                <div class="icons-center"><i><img src="{{ asset('icon/indexPrivacyTutorial6.svg') }}"
                                                  width="35px" height="35px"/></i></div>
                <a>Giới thiệu</a><a></a></button>
            <button type="button" class="btn btn-fw">
                <div><i><img src="{{ asset('icon/indexPrivacyTutorial5.svg') }}" width="35px" height="35px"/></i>
                </div>
                <a>Chính sách & Điều khoản</a><a></a></button>
            <button type="button" class="btn btn-fw">
                <div><i><img src="{{ asset('icon/indexPrivacyTutorial4.svg') }}" width="35px" height="35px"/></i>
                </div>
                <a>Hướng dẫn sử dụng web</a><a></a></button>
            <button type="button" class="btn btn-fw">
                <div><i><img src="{{ asset('icon/indexPrivacyTutorial3.svg') }}" width="35px" height="35px"/></i>
                </div>
                <a>Khuyến mãi & Ưu đãi</a><a></a></button>
            <button type="button" class="btn btn-fw">
                <div><i><img src="{{ asset('icon/indexPrivacyTutorial2.svg') }}" width="35px" height="35px"/></i>
                </div>
                <a>Thanh toán</a><a></a></button>
            <button type="button" class="btn btn-fw">
                <div><i><img src="{{ asset('icon/indexPrivacyTutorial1.svg') }}" width="35px" height="35px"/></i>
                </div>
                <a>Trả hàng & Hoàn Tiền</a><a></a></button>
        </div>
    </div>
    <style>
        .template-demo i img {
            -webkit-flex-direction: column;
            flex-direction: column;
            float: left;
        }

        @media (max-width: 1990px) {
            .nav-profile-text p {
                font-family: "Lato", sans-serif;
                font-size: 28px;
                font-style: normal;
                padding-top: 15px;
                font-weight: 700;
                line-height: 28.4px;
                background: linear-gradient(
                    90deg,
                    #fbc250 0%,
                    #dea143 24.48%,
                    #f5ae5d 50%,
                    #de8c49 77.08%,
                    #e0793f 100%
                );
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
            }

            .template-demo a {
                font-family: "Lato", sans-serif;
            }

            .template-demo {
                display: grid;
                grid-template-columns: 25% 25% 25% 25%;
                padding-left: 20%;
            }

            .card-body {
                padding-top: 3%;
                width: calc(100% - 260px);
            }

            .card-description {
                color: #303030;
                font-family: Lato;
                font-size: 24px;
                font-style: normal;
                font-weight: 700;
                line-height: normal;
                padding-left: 20%;
            }

            .template-demo a {
                color: #565656;
                font-size: 16px;
                font-style: normal;
                font-weight: 600;
                line-height: normal;
                padding-left: 13px;
                text-align: left;
                float: left;
            }

            .card-body {
                -webkit-box-flex: 1;
                -ms-flex: 1 1 auto;
                flex: 1 1 auto;
                padding: 1rem 1rem;
            }
        }

        @media (max-width: 1290px) {
            .nav-profile-text p {
                font-size: 18px;
            }

            .btn.btn-fw {
                width: 200px;
                height: 72px;
            }

            .content-wrapper {
                width: 105%;
            }
        }

        @media (max-width: 1030px) {
            .content-wrapper {
                width: 122%;
            }

            .template-demo {
                display: grid;
                grid-template-columns: 25% 25% 25% 25%;
                padding-left: 100px;
            }

            .card-body {
                width: calc(100% - 260px);
            }

            .card-description {
                padding-left: 100px;
            }
        }

        @media (max-width: 913px) {
            .content-wrapper {
                width: 121%;
            }

            .template-demo {
                display: grid;
                grid-template-columns: 33% 33% 33%;
                padding-left: 75px;
            }

            .btn.btn-fw {
                width: 230px;
                height: 70px;
            }

            .card-description {
                padding-left: 75px;
            }
        }

        @media (max-width: 830px) {
            .nav__text-supor {
                display: none;
            }

            .content-wrapper {
                width: 121%;
            }

            .template-demo {
                display: grid;
                grid-template-columns: 33% 33% 33%;
                padding-left: 50px;
            }

            .card-body {
                width: calc(100% - 260px);
            }

            .card-description {
                padding-left: 50px;
            }
        }

        @media (max-width: 821px) {
            .content-wrapper {
                width: 130%;
            }

            .template-demo {
                display: grid;
                grid-template-columns: 33% 33% 33%;
                padding-left: 35px;
            }

            .btn.btn-fw {
                width: 230px;
                height: 70px;
            }

            .card-description {
                padding-left: 35px;
            }
        }

        @media (max-width: 780px) {
            .nav__text-supor {
                display: none;
            }

            .content-wrapper {
                width: 128%;
            }

            .template-demo {
                display: grid;
                grid-template-columns: 33% 33% 33%;
                padding-left: 40px;
            }

            .card-body {
                width: calc(100% - 260px);
            }

            .card-description {
                padding-left: 40px;
            }
        }

        @media (max-width: 768px) {
            .content-wrapper {
                width: 135%;
            }

            .template-demo {
                display: grid;
                grid-template-columns: 33% 33% 33%;
                padding-left: 0px;
            }

            .btn.btn-fw {
                width: 230px;
                height: 70px;
            }

            .card-description {
                padding-left: 0px;
            }
        }

        @media (max-width: 570px) {
            .nav-profile-text p {
                font-size: 18px;
            }
        }

        @media (max-width: 541px) {
            .content-wrapper {
                width: 150%;
            }

            .template-demo {
                display: grid;
                grid-template-columns: 50% 50%;
                padding-left: 0px;
            }

            .btn.btn-fw {
                width: 240px;
                height: 70px;
            }

            .card-description {
                padding-left: 0px;
            }
        }

        @media (max-width: 420px) {
            .nav-profile-text p {
                font-size: 14px;
            }

            .content-wrapper {
                width: 170%;
            }

            .template-demo {
                display: grid;
                grid-template-columns: 50% 50%;
                padding-left: 0px;
            }

            .template-demo a {
                font-size: 13px;
            }

            .btn.btn-fw {
                width: 180px;
                height: 50px;
            }

            .template-demo i img {
                width: 25px;
                height: 25px;
            }

            .btn.btn-fw {
                padding: 10px 10px;
            }

            .card-body {
                padding: 0px;
                width: calc(100% - 260px);
            }

            .card-description {
                font-size: 18px;
                padding-left: 0px;
            }
        }

        @media (max-width: 415px) {
            .nav-profile-text p {
                font-size: 14px;
            }

            .content-wrapper {
                width: 165%;
            }

            .template-demo {
                display: grid;
                grid-template-columns: 50% 50%;
                padding-left: 0px;
            }

            .template-demo a {
                font-size: 13px;
            }

            .btn.btn-fw {
                width: 195px;
                height: 50px;
            }

            .template-demo i img {
                width: 25px;
                height: 25px;
            }

            .btn.btn-fw {
                padding: 10px 10px;
            }

            .card-body {
                padding: 0px;
                width: calc(100% - 260px);
            }

            .card-description {
                font-size: 18px;
                padding-left: 0px;
            }
        }

        @media (max-width: 395px) {
            .nav-profile-text p {
                font-size: 14px;
            }

            .content-wrapper {
                width: 168%;
            }

            .template-demo {
                display: grid;
                grid-template-columns: 50% 50%;
                padding-left: 0px;
            }

            .template-demo a {
                font-size: 13px;
            }

            .btn.btn-fw {
                width: 183px;
                height: 50px;
            }

            .template-demo i img {
                width: 25px;
                height: 25px;
            }

            .btn.btn-fw {
                padding: 10px 10px;
            }

            .card-body {
                padding: 0px;
                width: calc(100% - 260px);
            }

            .card-description {
                font-size: 18px;
                padding-left: 0px;
            }
        }

        @media (max-width: 376px) {
            .content-wrapper {
                width: 172%;
            }

            .btn.btn-fw {
                width: 175px;
                height: 50px;
            }
        }

        @media (max-width: 361px) {
            .nav-profile-text p {
                font-size: 12px;
            }

            .content-wrapper {
                width: 175%;
            }

            .btn.btn-fw {
                width: 168px;
                height: 50px;
            }
        }

        @media (max-width: 281px) {
            .nav-profile-text p {
                font-size: 10px;
            }

            .content-wrapper {
                width: 150%;
            }

            .template-demo {
                display: grid;
                grid-template-columns: 100%;
                padding-left: 10px;
            }

            .btn.btn-fw {
                width: 240px;
                height: 70px;
            }

            .card-description {
                padding-left: 10px;
            }
        }
    </style>
@endsection
