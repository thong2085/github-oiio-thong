@extends('privacy.user.layout.layout')

@section('content')

    <x-card>
        <x-slot name="header">
        <span class="text-white">
            <i class="fa-solid fa-newspaper"></i> Trợ Giúp
        </span>
        </x-slot>
        <div class="card-body">
            <div class="row">
                @foreach($privacy as $value)
                    <div class="col-6">
                        <a href="{{ route('privacy.detail', $value->slug) }}">
                            <x-card>
                                <div class="card-body">
                                    {{ $value->title }}
                                </div>
                            </x-card>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </x-card>

@endsection
