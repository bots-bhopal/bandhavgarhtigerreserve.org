@extends('layouts.master')

@section('title', 'Bandhavgarh Tiger Reserve - Location')

@section('content')
    <!-- Intro Section -->
    <div class="page-header parallax">
        <div class="container">
            <h1 class="title">{{ trans('navbar.tourist-information') }}</h1>
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
                            {{ trans('navbar.location') }}
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
                        <h2>{{ trans('navbar.location') }}</h2>
                    </div>

                    {{-- <div class="full-pic">
                    <figure>
                        <img src="{{ asset('public/assets/images/btr_actual_image/btr_image33.jpg') }}" alt="">
                    </figure>
                </div> --}}

                    <div class="text-box mt-40">
                        <div class="text-content text-justify">
                            <p>{{ trans('tourist.tourist-p1') }}</p>
                            <p>{{ trans('tourist.tourist-p2') }}</p>
                            <p><b>Latitude 23&deg; 27' 00'' to 23&deg; 59' 50" North</b></p>
                            <p><b>Longitude 80&deg; 43' 15" to 81&deg; 15' 45" East</b></p>
                            <p>{{ trans('tourist.tourist-p3') }}</p>
                            <figure>
                                <img src="{{ asset('public/assets/images/team/1 - Location Map.jpg') }}" alt="">
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Map Section -->
        <div class="map">
            <iframe width="100%" height="450" frameborder="0" style="border:0"
                src="https://www.google.com/maps/embed/v1/place?q=Bandhavgarh%20Tiger%20Reserve%20Umaria%20MP.%20-%20484661&key=AIzaSyBoJ7wfOj0UCiNJh4-3YDDEYGqwbNZWs20"
                allowfullscreen></iframe>
        </div>

        <!--Main Contact Section -->
        <div class="container contact-form text-center pt-80 pt-xs-60 mt-up">
            <div class="row">
                <div class="col-sm-12">
                    <div class="headeing pb-4">
                        <h2>{{ trans('navbar.contact') }}</h2>
                        <span class="b-line"></span>
                    </div>
                    <p>
                        {{ trans('navbar.btr') }}
                    </p>
                    <!-- Contact -->
                    <div class="row">
                        <div class="col-sm-12 contact pb-60 pt-30">
                            <div class="row text-center">
                                <div class="col-sm-4 pb-xs-30">
                                    <i class="ion-android-call icon-circle pos-s"></i><a href="#"
                                        class="mt-15 i-block">{{ trans('contact.phone') }}</a>
                                </div>

                                <div class="col-sm-4 pb-xs-30">
                                    <i class="ion-ios-location icon-circle pos-s"></i>
                                    <p class="mt-15">
                                        {{ trans('contact.add1') }}
                                        <br />
                                        {{ trans('contact.add2') }}
                                    </p>
                                </div>

                                <div class="col-sm-4 pb-xs-30">
                                    <i class="ion-ios-email icon-circle pos-s"></i><a href="mailto:business@support.com"
                                        class="mt-15 i-block">{{ trans('contact.email1') }}<br />{{ trans('contact.email2') }}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END Contact  -->
                </div>
            </div>
        </div>
    </div>
@endsection
