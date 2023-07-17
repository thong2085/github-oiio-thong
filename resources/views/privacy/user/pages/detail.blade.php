@extends('layout')

@section('content')

    <x-card>
        <x-slot name="header">
        <span class="text-white">
            <i class="fa-solid fa-newspaper"></i> {{ $privacy->title }}
        </span>
        </x-slot>
        <div class="card-body">
            {!! $privacy->content !!}
        </div>
    </x-card>

@endsection
