@extends('layouts.master')

@section('title', 'Bandhavgarh Tiger Reserve - Stay')

@push('css')
    <style>
        table.table-bordered {
            border: 1px solid #000;
            margin-top: 20px;
        }

        table.table-bordered>thead>tr>th {
            border: 1px solid #000;
        }

        table.table-bordered>tbody>tr>th {
            border: 1px solid #000;
        }

        table.table-bordered>tbody>tr>td {
            border: 1px solid #000;
        }

    </style>
@endpush

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
                            {{ trans('navbar.stay') }}
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
                        <h2>{{ trans('navbar.stay') }}</h2>
                    </div>

                    <div class="full-pic">
                        <figure>
                            <img src="{{ asset('public/assets/images/btr_actual_image/btr_image35.jpeg') }}" alt="">
                        </figure>
                    </div>

                    <div class="text-box mt-40">
                        <div class="text-content text-justify">
                            <p><b>{{ trans('tourist.stay-p1') }}</b></p>

                            <p>{{ trans('tourist.stay-p2') }}</p>

                            <table class="table table-bordered" style="border-color: #000;">
                                <thead>
                                    <tr>
                                        <th scope="col" class="text-center">
                                            {{ __('tourist.t5.th1') }}
                                        </th>
                                        <th scope="col" class="text-center">
                                            {{ __('tourist.t5.th2') }}
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="text-center">
                                        <td>{{ __('tourist.t5.tr1.td1') }}</td>
                                        <td>{{ __('tourist.t5.tr1.td2') }}</td>
                                    </tr>
                                    <tr class="text-center">
                                        <td>{{ __('tourist.t5.tr2.td1') }}</td>
                                        <td>{{ __('tourist.t5.tr2.td2') }}</td>
                                    </tr>
                                    <tr class="text-center">
                                        <td>{{ __('tourist.t5.tr3.td1') }}</td>
                                        <td>{{ __('tourist.t5.tr3.td2') }}</td>
                                    </tr>

                                    <tr class="text-center">
                                        <td>{{ __('tourist.t5.tr4.td1') }}</td>
                                        <td>{{ __('tourist.t5.tr4.td2') }}</td>
                                    </tr>
                                </tbody>
                            </table>

                            <p>{{ trans('tourist.stay-p3') }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
