@extends('layouts.master')

@section('title', 'Bandhavgarh Tiger Reserve - Who(s)-Who')

@section('content')
    <!-- Intro Section -->
    <div class="page-header parallax">
        <div class="container">
            <h1 class="title" style="text-transform: none!important;">{{ trans('navbar.whos') }}</h1>
        </div>

        <div class="breadcrumb-box">
            <div class="container">
                <nav aria-label="breadcrumb" role="navigation">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('btr.index') }}">{{ trans('navbar.home') }}</a>
                        </li>

                        <li class="breadcrumb-item active" aria-current="page">
                            {{ trans('navbar.about') }}
                        </li>

                        <li class="breadcrumb-item active" aria-current="page" style="text-transform: none!important;">
                            {{ trans('navbar.whos') }}
                        </li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <!-- Intro Section -->

    <!-- Service Section -->
    <div id="services-section" class="padding pt-xs-60">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sx-12">
                    <x-about-sidebar />
                </div>

                <div class="col-lg-8 col-md-7">
                    <div class="box-title mb-20">
                        <h2 style="text-transform: none!important;">{{ trans('navbar.whos') }}</h2>
                    </div>

                    <div class="full-pic">
                        <figure>
                            <img src="{{ asset('public/assets/images/team/Organisation-chart-BTR.png') }}" alt="">
                        </figure>
                    </div>

                    <div class="text-box mt-40">
                        <div class="text-content text-justify">
                            {{-- <h4>
                                {{ trans('about.whos-heading') }}
                            </h4> --}}
                            <ul>
                                <li class="mb-3">{{ trans('about.whos-li1') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li2') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li3') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li4') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li5') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li6') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li7') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li8') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li9') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li10') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li11') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li12') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li13') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li14') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li15') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li16') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li17') }}</li>
                                <li class="mb-3">{{ trans('about.whos-li18') }}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
