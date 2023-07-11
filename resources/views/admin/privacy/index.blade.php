@extends('admin.layouts.master')

@section('content')
    <div class="page-header d-print-none">
        <div class="container-xl">
            <div class="row g-2 align-items-center">
                <div class="col">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}"
                                    class="text-muted">{{ __('Dashboard') }}</a></li>
                            <li class="breadcrumb-item active" aria-current="page">{{ __('Chính sách quyền riêng tư') }}</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <div class="page-body">
        <div class="container-xl">
            <div class="card">
                <div class="card-header justify-content-between">
                    <h2 class="mb-0">{{ __('Danh sách tin tức') }}</h2>
                    <x-link :href="route('admin.news.create')" class="btn btn-primary"><i class="ti ti-plus"></i>{{ __('Thêm tin tức') }}</x-link>
                </div>
                <div class="card-body">
                    <div class="table-responsive position-relative">
                        {{ $dataTable->table(['class' => 'table table-bordered', 'style' => 'min-width: 900px;'], true) }}
                    </div>
                </div>
        </div>
    </div>
@endsection

@push('libs-js')
<!-- button in datatable -->
<script src="{{ asset('/public/vendor/datatables/buttons.server-side.js') }}"></script>
<script src="https://cdn.datatables.net/select/1.6.2/js/dataTables.select.min.js"></script>
@endpush

@push('custom-js')

{{ $dataTable->scripts() }}

@include('admin.news.scripts.datatable')
<script>
$(document).ready(function(){
    // define columns for the datatables
    columns = window.LaravelDataTables["userTable"].columns();
    toggleColumnsDatatable(columns);
});
</script>
@endpush
