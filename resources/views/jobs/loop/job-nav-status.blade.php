<div class="card-body p-0" style="background: #E9E9E9;">
<div style="color: black; font-size: 22px; font-family: 'Lato' sans-serif; font-weight: 700; word-wrap: break-word">Đơn hàng cần xử lý</div>
    <div class="wrap-control-tab pb-2 pt-3">
        <div class="job-status-nav-tabs d-flex border-b">
                <div class="nav-item">
                    <span>Tất cả đơn</span>
                    <span class="job-status-number">0</span>
                </div>
            @foreach ($job_status[$type] as $key => $value)
                <div @class([
                        'nav-item', 
                        'position-relative',
                        'active' => $key == $current_status
                    ]) 
                    role="button"
                    data-route="{{ route($route_name, $key) }}">
                    {{ $value['text'] }}
                    <span class="job-status-number">{{ $value['number'] }}</span>
                    <!-- @if($value['number'])
                        <span class="job-status-number position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                            {{ $value['number'] }}
                            <span class="visually-hidden">unread messages</span>
                        </span>
                    @endif -->
                </div>
            @endforeach
        </div>
    </div>
    <div style="width: 1150px; height: 80px; background: white; border-radius: 10px;margin-top:10px;display:flex;">
            {{-- Tìm kiếm --}}
                <div class="search-field-s d-none d-md-block" style="border-radius: 10px;">
                    <form class="d-flex align-items-center h-100" action="#">
                        <div class="input-group-s" style="margin-top: 25px;margin-left:32px;border-radius:5px;">
                            <input type="text" class="form-control-s" placeholder="Tìm kiếm mã đơn, v.v"style="margin:17px 30px 16px 0;color: rgba(86, 86, 86, 0.50);font-family: Lato;font-size: 14px;font-style: normal;font-weight: 400;line-height: normal;padding:0 0.75rem;">
                            <div style="position: relative;border-left: 1px solid #3333;align-items: center;justify-content: center;display: flex;width: 20%;margin-left: auto;" class="input-group-prepend-s bg-transparent">
                                <img src="{{ asset('icon/search.svg') }}" alt="logo">
                            </div>
                        </div>
                    </form>
                </div>
            {{-- Ngày giờ --}}
            <div class="date d-flex" style="margin-left:auto;margin-right:23px;">
                <div class="date-start d-flex justify-content-center align-items-center">
                    <div class="date-content" style="margin-right:20px;">
                        <label>Từ ngày:</label>
                    </div>
                    <div class="date-input">
                        <input type="date">
                    </div>
                </div>
                <div class="date-end d-flex justify-content-center align-items-center">
                    <div class="date-content"style="margin-left:20px;margin-right:20px;">
                        <label>Đến ngày:</label>
                    </div>
                    <div class="date-input">
                        <input type="date">
                    </div>
                </div>
            </div>
    </div>

    
    </div>


</div>
<style>
    @media (min-width: 768px){
    .col-md-9 {
        flex: 0 0 auto;
        width: 1150px;
        }
    }
    .date-content label{
        color: #000;
        font-family: 'Lato' sans-serif;
        font-size: 16px;
        font-style: normal;
        font-weight: 500;
        line-height: normal;
    }
    .date-input input[type='date']{
        width: 184px;
        height: 50px;
        flex-shrink: 0;
        border-radius: 5px;
        border: 1px solid #A6A4A4;
        padding-left:10px;
        padding-right: 10px;
    }
</style>