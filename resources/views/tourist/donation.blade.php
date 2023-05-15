@extends('layouts.master')

@section('title', 'Bandhavgarh Tiger Reserve - Donation')

@section('content')
    <!-- Intro Section -->
    <div class="page-header parallax">
        <div class="container">
            <h1 class="title">{{ trans('navbar.donation') }}</h1>
        </div>

        <div class="breadcrumb-box">
            <div class="container">
                <nav aria-label="breadcrumb" role="navigation">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('btr.index') }}">{{ trans('navbar.home') }}</a>
                        </li>

                        <li class="breadcrumb-item active" aria-current="page">
                            {{ trans('navbar.tourist-information') }}
                        </li>

                        <li class="breadcrumb-item active" aria-current="page">
                            {{ trans('navbar.donation') }}
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
                    <x-tourist-sidebar />
                </div>

                <div class="col-lg-8 col-md-7">
                    <div class="box-title mb-20">
                        <h2>{{ trans('navbar.donation') }}</h2>
                    </div>

                    <div class="full-pic">
                        <figure>
                            <img src="{{ asset('public/assets/images/btr_actual_image/btr_image35.jpeg') }}" alt="">
                        </figure>
                    </div>

                    <div class="text-box mt-40">
                        <div class="text-content text-justify">
                            <h3 class="text-center">{{ trans('tourist.donation-heading') }}</h3>

                            <p class="text-center">{{ trans('tourist.donation-p1') }}</p>
                            <p class="text-center">{{ trans('tourist.donation-p2') }}</p>
                            <p class="text-center">{{ trans('tourist.donation-p3') }}</p>
                            <h4 class="text-center">{{ trans('tourist.donation-p4') }}</h4>
                            <p class="text-center"><b>{{ trans('tourist.donation-p5') }}</b></p>
                            <p class="text-center"><b>{{ trans('tourist.donation-p6') }}</b></p>

                            <p class="text-center" style="font-size: 18px;"><b>{{ trans('tourist.donation-p7') }}</b>
                            </p>
                            <p class="text-center">
                                <a href="https://mptiger.mponline.gov.in/" class="btn btn-md btn-color-line" target="_blank"
                                    style="background: #c30000!important; color: #fff; font-size: 16px; font-weight:600; border-radius: 20px;">{{ trans('tourist.donation-btn') }}</a>
                            </p>
                            <p class="text-center" style="font-size: 18px;"><b>{{ trans('tourist.donation-p8') }}</b>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
