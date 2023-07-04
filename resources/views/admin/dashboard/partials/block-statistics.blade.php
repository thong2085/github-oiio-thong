<div class="col-sm-6 col-lg-3">
    <div class="card card-sm">
        <div class="card-body">
            <div class="row align-items-center">
                <div class="col-auto">
                    <span @class([
                        $bg_color, "text-white avatar" 
                    ])>
                        {!! $icon !!}
                    </span>
                  </div>
                  <div class="col">
                    <div class="font-weight-medium">
                      {{ $title }}
                    </div>
                    <div class="text-muted">
                        {{ $value }}
                    </div>
                  </div>
            </div>
        </div>
    </div>
</div>