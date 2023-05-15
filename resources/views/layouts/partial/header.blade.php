<!--loader-->
<div id="preloader">
    <img src="{{ asset('public/assets/images/BTR-Preloader.gif') }}" alt="btr-preloader">
</div>
<!--loader-->

<!-- Login Box -->
{{-- <div class="feedback-box">
    <a onclick="feedbackForm();">
        <i class="fa fa-commenting" aria-hidden="true" style="margin-right: 5px;"></i> {{ trans('home.feedback') }}
    </a>
</div> --}}

<!-- Floating Social Media Icons -->
<div class="social-icons">
    {{-- <a href="https://www.facebook.com/mptigerfoundationsociety" target="_blank" class="facebook"><i class="fa fa-facebook-f"></i>Facebook</a> --}}
    {{-- <a href="https://www.youtube.com/channel/UCt7TIvdCEW4iUsxUqmSqswA" target="_blank" class="youtube"><i class="fa fa-youtube"></i>Youtube</a> --}}
    <a href="https://twitter.com/BandhavgarhTig2" target="_blank" class="twitter"><i
            class="fa fa-twitter"></i>Twitter</a>
    <a href="https://www.instagram.com/bandhavgarhtigerreserve/?utm_medium=copy_link" target="_blank"
        class="instagram"><i class="fa fa-instagram"></i>Instagram</a>
</div>

<!--Start header area-->
<header class="header-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-sm-12 col-xs-12 mt-3 mb-3 text-center">
                <div class="d-flex justify-content-between">
                    <a href="{{ route('btr.index') }}" class="d-flex">
                        <img src="{{ asset('public/assets/images/BTR-Logo.png') }}" alt="BTR-Logo">
                        <h2 class="my-auto ml-2"
                            style="line-height: 40px!important; font-size: 38px; color: #006400!important;">
                            {{ trans('navbar.btr') }}</h2>
                    </a>

                    <a href="https://mptiger.mponline.gov.in/" target="_blank">
                        <img src="{{ asset('public/assets/images/donation.png') }}" alt="Dontaion-Logo">
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>
<!--End header area-->

<!--Start mainmenu area-->
<section class="mainmenu-area">
    <div class="container">
        <div class="mainmenu-bg">

            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <!--Start mainmenu-->
                    <nav class="main-menu navbar-toggleable-md">
                        <div class="navbar-header hidden-lg-up">
                            <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>

                        <!-- ==========================	Desktop Nav ============================ -->
                        <div class="navbar-collapse collapse clearfix">
                            <ul class="navigation clearfix">
                                <li>
                                    <a href="{{ route('btr.index') }}">{{ trans('navbar.home') }}</a>
                                </li>

                                <li>
                                    <a href="{{ route('btr.about-introduction') }}">{{ trans('navbar.about') }}</a>
                                    <ul class="sub-nav">
                                        <li>
                                            <a
                                                href="{{ route('btr.about-message') }}">{{ trans('navbar.director-msg') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.about-introduction') }}">{{ trans('navbar.introduction') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.history') }}"
                                                class="active">{{ trans('navbar.history') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.conservation-history') }}">{{ trans('navbar.conservation-history') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.reserve-profile') }}">{{ trans('navbar.reserve-profile') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.forest-type') }}">{{ trans('navbar.forest-type') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.topography') }}">{{ trans('navbar.topography') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.significance') }}">{{ trans('navbar.significance') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.whos') }}"
                                                style="text-transform: none!important;">{{ trans('navbar.whos') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.contact') }}">{{ trans('navbar.contact') }}</a>
                                        </li>
                                    </ul>
                                </li>

                                <li>
                                    <a
                                        href="{{ route('btr.bio-introduction') }}">{{ trans('navbar.bio-diversity') }}</a>
                                    <ul class="sub-nav">
                                        <li>
                                            <a
                                                href="{{ route('btr.bio-introduction') }}">{{ trans('navbar.introduction') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.flora') }}"
                                                class="active">{{ trans('navbar.flora') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.fauna') }}">{{ trans('navbar.fauna') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.avifauna') }}">{{ trans('navbar.avifauna') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.butterflies') }}">{{ trans('navbar.butterflies') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.rare-species') }}">{{ trans('navbar.rare-species') }}</a>
                                        </li>
                                    </ul>
                                </li>

                                <li>
                                    <a
                                        href="{{ route('btr.location') }}">{{ trans('navbar.tourist-information') }}</a>
                                    <ul class="sub-nav">
                                        <li>
                                            <a
                                                href="{{ route('btr.location') }}">{{ trans('navbar.location') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.how-to-reach') }}"
                                                class="active">{{ trans('navbar.how-to-reach') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.best-time-to-visit') }}">{{ trans('navbar.best-time-to-visit') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.weather') }}">{{ trans('navbar.weather') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.safari-zones') }}">{{ trans('navbar.safari-zones') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.excursion') }}">{{ trans('navbar.excursion') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.point-of-interests') }}">{{ trans('navbar.point') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.shop') }}">{{ trans('navbar.shop') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.stay') }}">{{ trans('navbar.stay') }}</a>
                                        </li>

                                        {{-- <li>
                                            <a
                                                href="{{ route('btr.donation') }}">{{ trans('navbar.donation') }}</a>
                                        </li> --}}

                                        <li>
                                            <a href="{{ route('btr.dos') }}">{{ trans('navbar.dos') }}</a>
                                        </li>

                                        <li>
                                            <a href="https://forest.mponline.gov.in/Search.aspx?park=1" target="_blank"
                                                ;>{{ trans('navbar.safari-booking') }}</a>
                                        </li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="{{ route('btr.goals') }}">{{ trans('navbar.btr-management') }}</a>
                                    <ul class="sub-nav">
                                        <li>
                                            <a
                                                href="{{ route('btr.admin-body') }}">{{ trans('navbar.administrative-body') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.goals') }}"
                                                class="active">{{ trans('navbar.management-goals') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.objectives') }}">{{ trans('navbar.management-objectives') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.training') }}">{{ trans('navbar.training') }}</a>
                                        </li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="{{ route('btr.gallery') }}">{{ trans('navbar.gallery') }}</a>
                                </li>

                                <li>
                                    <a href="{{ route('btr.newses') }}">{{ trans('navbar.info-corner') }}</a>

                                    <ul class="sub-nav">
                                        <li>
                                            <a href="{{ route('btr.newses') }}">{{ trans('navbar.news') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.tenders') }}"
                                                class="active">{{ trans('navbar.tender') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.docs') }}">{{ trans('navbar.docs') }}</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>


                            <!-- ==========================	Mobile Nav ============================ -->
                            <ul class="mobile-menu clearfix">
                                <li>
                                    <a href="{{ route('btr.index') }}">{{ trans('navbar.home') }}</a>
                                </li>

                                <li>
                                    <a href="#">{{ trans('navbar.about') }}</a>
                                    <span class="submenu-button"></span>

                                    <ul class="sub-nav">
                                        <li>
                                            <a
                                                href="{{ route('btr.about-message') }}">{{ trans('navbar.director-msg') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.about-introduction') }}">{{ trans('navbar.introduction') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.history') }}"
                                                class="active">{{ trans('navbar.history') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.conservation-history') }}">{{ trans('navbar.conservation-history') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.reserve-profile') }}">{{ trans('navbar.reserve-profile') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.forest-type') }}">{{ trans('navbar.forest-type') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.topography') }}">{{ trans('navbar.topography') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.significance') }}">{{ trans('navbar.significance') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.whos') }}"
                                                style="text-transform: none!important;">{{ trans('navbar.whos') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.contact') }}">{{ trans('navbar.contact') }}</a>
                                        </li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="#">{{ trans('navbar.bio-diversity') }}</a>
                                    <span class="submenu-button"></span>

                                    <ul class="sub-nav">
                                        <li>
                                            <a
                                                href="{{ route('btr.bio-introduction') }}">{{ trans('navbar.introduction') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.flora') }}"
                                                class="active">{{ trans('navbar.flora') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.fauna') }}">{{ trans('navbar.fauna') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.avifauna') }}">{{ trans('navbar.avifauna') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.butterflies') }}">{{ trans('navbar.butterflies') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.rare-species') }}">{{ trans('navbar.rare-species') }}</a>
                                        </li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="#">{{ trans('navbar.tourist-information') }}</a>
                                    <span class="submenu-button"></span>

                                    <ul class="sub-nav">
                                        <li>
                                            <a
                                                href="{{ route('btr.location') }}">{{ trans('navbar.location') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.how-to-reach') }}"
                                                class="active">{{ trans('navbar.how-to-reach') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.best-time-to-visit') }}">{{ trans('navbar.best-time-to-visit') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.weather') }}">{{ trans('navbar.weather') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.safari-zones') }}">{{ trans('navbar.safari-zones') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.excursion') }}">{{ trans('navbar.excursion') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.point-of-interests') }}">{{ trans('navbar.point') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.shop') }}">{{ trans('navbar.shop') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.stay') }}">{{ trans('navbar.stay') }}</a>
                                        </li>

                                        {{-- <li>
                                            <a
                                                href="{{ route('btr.donation') }}">{{ trans('navbar.donation') }}</a>
                                        </li> --}}

                                        <li>
                                            <a href="{{ route('btr.dos') }}">{{ trans('navbar.dos') }}</a>
                                        </li>

                                        <li>
                                            <a href="https://forest.mponline.gov.in/Search.aspx?park=1" target="_blank"
                                                ;>{{ trans('navbar.safari-booking') }}</a>
                                        </li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="#">{{ trans('navbar.btr-management') }}</a>
                                    <span class="submenu-button"></span>

                                    <ul class="sub-nav">
                                        <li>
                                            <a
                                                href="{{ route('btr.admin-body') }}">{{ trans('navbar.administrative-body') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.goals') }}"
                                                class="active">{{ trans('navbar.management-goals') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.objectives') }}">{{ trans('navbar.management-objectives') }}</a>
                                        </li>

                                        <li>
                                            <a
                                                href="{{ route('btr.training') }}">{{ trans('navbar.training') }}</a>
                                        </li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="{{ route('btr.gallery') }}">{{ trans('navbar.gallery') }}</a>
                                </li>

                                <li>
                                    <a href="#">{{ trans('navbar.info-corner') }}</a>
                                    <span class="submenu-button"></span>

                                    <ul class="sub-nav">
                                        <li>
                                            <a href="{{ route('btr.newses') }}">{{ trans('navbar.news') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.tenders') }}"
                                                class="active">{{ trans('navbar.tender') }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('btr.docs') }}">{{ trans('navbar.docs') }}</a>
                                        </li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="{{ route('btr.contact') }}">{{ trans('navbar.contact') }}</a>
                                </li>
                            </ul>

                        </div>
                    </nav>
                    <!--End mainmenu-->
                </div>
            </div>

            <div class="right-column">
                <div class="right-area">
                    <div class="nav_side_content"></div>
                    <div class="link_btn float_right">

                        <ul class="navbar-nav language thm-btn bg-clr1">
                            <!-- Language Dropdown Menu -->
                            <li class="nav-item dropdown">
                                <!-- New Language Switcher -->
                                <a class="nav-link dropdown-toggle hover bdr" data-toggle="dropdown" href="#">
                                    <img src="{{ asset('public/assets/images/icons/google-translate.png') }}"
                                        width="24" height="24" alt="Google-Translate" class="img-fluid">
                                    {{ Config::get('languages')[App::getLocale()]['display'] }}
                                    <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right pt-1 pb-1">
                                    @foreach (Config::get('languages') as $lang => $language)
                                        @if ($lang != App::getLocale())
                                            <a class="dropdown-item" href="{{ route('lang.switch', $lang) }}"><span
                                                    class="flag-icon flag-icon-{{ $language['flag-icon'] }}"
                                                    style="margin-right: 8px!important"></span>
                                                {{ $language['display'] }}</a>
                                        @endif
                                    @endforeach
                                </div>
                            </li>

                            {{-- <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle {{ 'news-details' == Request::segment(1) ? 'my-nav' : '' }}" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                @if (Session::has('locale'))
                                    @if (session('locale') == 'hi')
                                        {{ trans('navbar.hindi') }}
                                    @else
                                        {{ trans('navbar.english') }}
                                    @endif
                                @else
                                {{Config::get('app.locale')}}
                                @endif
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="left: -21px; margin-top: 0px; border-radius: 0;">
                                    <a class="dropdown-item" href="{{url('language/en')}}">{{ trans('navbar.english') }}</a>
                                    <a class="dropdown-item" href="{{url('language/hi')}}">{{ trans('navbar.hindi') }}</a>
                                </div>
                            </li> --}}
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!--End mainmenu area-->
<!-- END HEADER -->


<!-- Modal -->
<div class="modal fade" id="feedbackModal" tabindex="-1" aria-labelledby="feedbackModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable">
        <div class="modal-content" style="border: 0; border-radius: 0;">
            <div class="modal-header" style="background: #ffcc00;">
                <h5 class="modal-title" id="feedbackModalLabel" style="font-weight: 600;">Contact Us</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="container">
                <div class="row mt-3">
                    <div class="col-12">
                        <div id="msg"></div>
                    </div>
                </div>
            </div>

            <div class="modal-body">
                <form action="{{ route('contact.store') }}" method="POST">
                    {{-- @csrf --}}
                    <div class="form-group">
                        <label for="name">Your Name</label>
                        <input type="text" class="form-control" name="name" id="name">
                    </div>
                    <div class="form-group">
                        <label for="email">Your Email Address</label>
                        <input type="email" class="form-control" name="email" id="email">
                    </div>
                    <div class="form-group">
                        <label for="mobile">Your Mobile</label>
                        <input type="text" class="form-control" name="mobile" id="mobile">
                    </div>
                    <div class="form-group">
                        <label for="message">Feedback/Message</label>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" name="message" id="message" cols="60" rows="4"
                            style="border: 1px solid #999;"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger text-white" data-dismiss="modal"
                    style="border: none;">Close</button>
                <button type="button" class="btn btn-success text-white" id="formSubmit"
                    style="border: none;">Submit</button>
            </div>
        </div>
    </div>
</div>
<!-- /. Modal -->

@push('js')
    <script>
        // Feedback Function
        function feedbackForm() {
            $("#feedbackModal").modal('show');
        }

        $(document).ready(function() {
            $('#formSubmit').click(function(e) {
                e.preventDefault();
                $('#formSubmit').attr('disabled', true);

                $.ajax({
                    url: "{{ url('/contact') }}",
                    method: 'POST',
                    data: {
                        "_token": "{{ csrf_token() }}",
                        name: $('#name').val(),
                        email: $('#email').val(),
                        mobile: $('#mobile').val(),
                        message: $('#message').val(),
                    },
                    beforeSend: function() {
                        let wait =
                            '<div class="alert alert-success mb-0">Please wait.....</div>';
                        $('#msg').html(wait);
                    },
                    success: function(data) {
                        if (data.code == 400) {
                            // setInterval(function(){
                            $('#formSubmit').attr('disabled', false);
                            let error = '<div class="alert alert-danger mb-0">' + data.msg +
                                '</div>';
                            $('#msg').html(error);
                            // }, 3000);
                        }

                        if (data.code == 200) {
                            $('#formSubmit').attr('disabled', false);
                            let success = '<div class="alert alert-success mb-0">' + data.msg +
                                '</div>';
                            $('#msg').html(success);
                            $('#formSubmit').attr('disabled', true);

                            setInterval(function() {
                                // $("#feedbackModal").modal('hide');
                                location.href =
                                    "https://bandhavgarhtigerreserve.org/";
                                $('#formSubmit').attr('disabled', false);
                            }, 4000);
                        }
                    }
                });

                //Alert
                setTimeout(function() {
                    $('.alert').slideUp('slow');
                }, 5000);
            });
        });
    </script>
@endpush
