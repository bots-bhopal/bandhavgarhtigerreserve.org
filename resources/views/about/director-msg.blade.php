@extends('layouts.master')

@section('title', 'Bandhavgarh Tiger Reserve - Director\'s Message')

@push('css')
    <style>
        :root {
            --minimum-width: 300px;
            --ratio: 16/9;
        }

        .image-box {
            height: 250px;
            position: relative;
        }

        .image-box img {
            height: 250px;
        }

        img.lazy-image.loaded {
            background-image: none;
        }

        .image-box img {
            background: rgba(231, 255, 186, 1);
            border-radius: 16px;
            /* box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1); */
            backdrop-filter: blur(2.7px);
            -webkit-backdrop-filter: blur(2.7px);
            border: 1px solid rgba(231, 255, 186, 1);
            aspect-ratio: var(--ratio);
            object-fit: contain;
            width: 100%;
        }

    </style>
@endpush

@section('content')
    <!-- Intro Section -->
    <div class="page-header parallax">
        <div class="container">
            <h1 class="title">{{ trans('navbar.director-msg') }}</h1>
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

                        <li class="breadcrumb-item active" aria-current="page">
                            {{ trans('navbar.director-msg') }}
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
                        <h2>{{ trans('navbar.director-msg') }}</h2>
                    </div>

                    <div class="full-pic">
                        <div class="image-box">
                            <figure class="image">
                                <img src="{{ asset('public/assets/images/director.jpg') }}" alt="">
                            </figure>
                        </div>
                    </div>

                    <div class="text-box mt-40">
                        <div class="text-content text-justify">
                            <p>{{ trans('about.msg-p1') }}</p>
                            <p>{{ trans('about.msg-p2') }}</p>
                            <p>{{ trans('about.msg-p3') }}</p>
                            <p class="text-center font-weight-bold">{{ trans('about.msg-p4') }}</p>
                            <p class="text-center">{{ trans('about.msg-p5') }}</p>
                            <p class="text-center">{{ trans('about.msg-p6') }}</p>
                            <b>
                                <p class="text-right">{{ trans('about.director-name') }}</p>
                            </b>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
