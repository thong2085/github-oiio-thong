<div class="col-12 col-md-9">
    <div class="card">
        <div class="card-header justify-content-between">
            <h2 class="mb-0">{{ __('Thông tin thuộc tính') }}</h2>
            <x-link :href="route('admin.attribute.option.index', $attribute->id)" :title="__('Các tùy chọn')" />
        </div>
        <div class="row card-body">
            <!-- name -->
            <div class="col-12">
                <div class="mb-3">
                    <label class="control-label">{{ __('Tên thuộc tính') }}:</label>
                    <x-input name="name" :value="$attribute->name" :required="true"
                        placeholder="{{ __('Tên thuộc tính') }}" />
                </div>
            </div>
            <!-- type -->
            <div class="col-12 col-md-6">
                <div class="mb-3">
                    <label class="control-label">{{ __('Loại') }}:</label>
                    <x-select name="type" :required="true">
                        @foreach ($type as $key => $value)
                            <x-select-option :option="$attribute->type->value" :value="$key" :title="$value" />
                        @endforeach
                    </x-select>
                </div>
            </div>
            <!-- position -->
            <div class="col-12 col-md-6">
                <div class="mb-3">
                    <label class="control-label">{{ __('Vị trí') }}:</label>
                    <x-input type="number" name="position" :value="$attribute->position" :required="true" />
                </div>
            </div>
            <!-- desc -->
            <div class="col-12">
                <div class="mb-3">
                    <label class="control-label">{{ __('Mô tả') }}:</label>
                    <textarea class="form-control" name="desc">{{ $attribute->desc }}</textarea>
                </div>
            </div>
        </div>
    </div>
</div>