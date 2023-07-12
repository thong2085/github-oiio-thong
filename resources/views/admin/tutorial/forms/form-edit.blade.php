<div class="col-12 col-md-9">
    <div class="card mb-3">
        <div class="card-header justify-content-center">
            <h2 class="mb-0">{{ __('Thông tin hướng dẫn người dùng') }}</h2>
        </div>
        <div class="row card-body">
            <!-- title -->
            <div class="col-12">
                <div class="mb-3">
                    <label class="control-label">{{ __('Tên tiêu đề hướng dẫn người dùng') }}:</label>
                    <x-input name="title" :value="$tutorial->title" :required="true" :placeholder="__('Tên tin tức')" />
                </div>
            </div>

            <!-- nội dung -->
            <div class="col-12">
                <div class="mb-3">
                    <label class="control-label">{{ __('Nội dung') }}:</label>
                    <x-textarea name="content" class="ckeditor">{{ $tutorial->content }}</x-textarea>
                </div>
            </div>

            <div class="col-12">
                <div class="form-group">
                    <label for="">{{ __('Link Youtube hướng dẫn') }}</label>
                    <x-input name="link" :value="$tutorial->link" :required="true" :placeholder="__('Link Youtube hướng dẫn')" />
                </div>
            </div>
        </div>
    </div>
</div>

<div class="col-12 col-md-3">
    <div class="card mb-3">
        <div class="card-header">
            {{ __('Đăng') }}
        </div>
        <div class="card-body p-2 d-flex justify-content-between">
            <x-button.submit :title="__('Cập nhật')" />
            <x-button.modal-delete data-route="{{ route('admin.tutorial.delete', $tutorial->id) }}" :title="__('Xóa')" />
        </div>
    </div>
</div>
