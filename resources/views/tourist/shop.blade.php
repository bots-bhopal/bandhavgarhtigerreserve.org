@extends('layouts.master')

@section('title', 'Bandhavgarh Tiger Reserve - Shop')

@section('content')
    <!-- Intro Section -->
    <div class="page-header parallax">
        <div class="container">
            <h1 class="title">{{ trans('navbar.shop') }}</h1>
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
                            {{ trans('navbar.shop') }}
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
                        <h2>{{ trans('navbar.shop') }}</h2>
                    </div>

                    <div class="full-pic">
                        <figure>
                            <img src="{{ asset('public/assets/images/shop/shop-1.jpg') }}" alt="">
                        </figure>
                    </div>

                    <div class="text-box mt-40">
                        <div class="text-content text-justify">
                            <h3 class="text-center">{{ trans('tourist.shop-heading') }}</h3>

                            <p class="text-center">{!! trans('tourist.shop-p1') !!}</p>
                            <p class="text-center">{!! trans('tourist.shop-p2') !!}</p>
                            <p class="text-center">{!! trans('tourist.shop-p3') !!}</p>
                            <p class="text-center">{{ trans('tourist.shop-p4') }}</p>
                            {{-- <p class="text-center"><b>{{ trans('tourist.shop-p5') }}</b></p> --}}
                        </div>
                    </div>

                    <div class="full-pic">
                        <figure>
                            <img src="{{ asset('public/assets/images/shop/shop-4.jpg') }}" alt="">
                        </figure>
                    </div>

                    <div class="full-pic">
                        <figure>
                            <img src="{{ asset('public/assets/images/shop/shop-7.jpg') }}" alt="">
                        </figure>
                    </div>

                    <div class="full-pic">
                        <figure>
                            <img src="{{ asset('public/assets/images/shop/shop-9.jpg') }}" alt="">
                        </figure>
                    </div>

                    <div class="full-pic">
                        <figure>
                            <img src="{{ asset('public/assets/images/shop/shop-10.jpg') }}" alt="">
                        </figure>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
