<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
        <title>{{ strtolower($title_page ?? "Đồ án tốt nghiệp")   }}</title>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link rel="icon" sizes="32x32" type="image/png" href="{{ asset('images/book-icon-4.png') }}" />
        @yield('css')
        <style>
            .menu-list > li {
                border-bottom: 1px solid #f5f5f5;
                box-shadow: 20px 20px 50px #f5f5f5;
            }
        </style>
        {{-- Thông báo --}}
        @if(session('toastr'))
            <script>
                var TYPE_MESSAGE = "{{session('toastr.type')}}";
                var MESSAGE = "{{session('toastr.message')}}";
            </script>
        @endif
    </head>
    <body>
        @include('frontend.components.header')
        @yield('content')
        @if (get_data_user('web'))
            @include('components.popup._inc_popup_wallet')
        @endif
        @include('frontend.components.footer')
        <script>
            var DEVICE = '{{  device_agent() }}'
        </script>
        @yield('script')
    </body>
    <script src="{{  asset('admin/bower_components/jquery/dist/jquery.min.js') }}"></script>
    <script>
        $(function () {
            $('.js-menu-cate').click(function () {
                let  display = $('#menu-main').css('display');
                if (display == 'block') {
                    $('#menu-main').css('display', 'none');
                }
            })
        })
    </script>
    <!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "141251062395184");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v18.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>
</html>
