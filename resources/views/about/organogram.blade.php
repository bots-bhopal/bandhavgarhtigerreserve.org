@extends('layouts.master')

@section('title', 'Bandhavgarh Tiger Reserve - Organogram')

@section('content')
    <!-- Intro Section -->
    <div class="page-header parallax">
        <div class="container">
            <h1 class="title">{{ trans('navbar.organogram') }}</h1>
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
                            {{ trans('navbar.organogram') }}
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
                        <h2>{{ trans('navbar.organogram') }}</h2>
                    </div>

                    <div class="full-pic">
                        <figure>
                            <img src="{{ asset('public/assets/images/team/Organisation-chart-BTR.png') }}" alt="">
                        </figure>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
