<style>
    @if (config('layouts.component.footer.color_text'))
        #footer ul li a {
            color: {{ config('layouts.component.footer.color_text') }};
        }
        #footer .title {
            {{ config('layouts.component.footer.title') }};
        }
    @endif
</style>
<div id="footer" style="background: {{ config('layouts.component.footer.background') }}">
    <div class="container footer">
        <div class="footer__left">
            <div class="top">
                <div class="item">
                    <div class="title">Về chúng tôi</div>
                    <ul>
                        <li>
                            <a href="{{ route('get.blog.home') }}">Bài viết</a>
                        </li>
                        <li>
                            <a href="{{ route('get.product.list') }}">Sản phẩm</a>
                        </li>
                        <li>
                            <a href="{{ route('get.register') }}">Đăng ký</a>
                        </li>
                        <li>
                            <a href="{{ route('get.login') }}">Đăng nhập</a>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Tin tức</div>
                    <ul>
                        @if (isset($menus))
                            @foreach($menus as $menu)
                                <li>
                                    <a title="{{ $menu->mn_name }}"
                                        href="{{ route('get.article.by_menu',$menu->mn_slug.'-'.$menu->id) }}">
                                        {{ $menu->mn_name }}
                                    </a>
                                </li>
                            @endforeach
                        @endif
                        <li><a href="{{ route('get.contact') }}">Liên hệ</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Chính sách</div>
                    <ul>
                        <li><a href="{{ route('get.static.shopping_guide') }}">Hướng dẫn mua hàng</a></li>
                        <li><a href="{{  route('get.static.return_policy') }}">Chính sách đổi trả</a></li>
                    </ul>
                </div>
            </div>

        </div>
        <div class="footer__mid">
            <div class="title">Hệ thống cửa hàng</div>
            <div class="image">
                {{-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3769.608154374919!2d105.6630574148521!3d19.12483865540548!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313770e0a52d9da9%3A0xd2b5d6c6dd349a68!2zTMOgbmcgVsO1bmcsIFF14buzbmggTmfhu41jLCBRdeG7s25oIEzGsHUsIE5naOG7hyBBbiwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1581784171643!5m2!1svi!2s" width="100%" height="130px" frameborder="0" style="border:0;" allowfullscreen=""></iframe> --}}
            </div>
            <a href="" title="" class="more">Xem tất cả hệ thống cửa hàng</a>
        </div>
        <div class="footer__right">
            <div class="title">Fanpage của chúng tôi</div>
            <div class="image">
                <div class="fb-page"
                      data-href="https://www.facebook.com/Nh%C3%A0-s%C3%A1ch-Tr%C3%A0ng-An-Ng%E1%BB%8Dc-DATN-102437279162049/"
                      data-width="380"
                      data-height="240"
                      data-hide-cover="false"
                      data-show-facepile="false" ></div>
            </div>
        </div>
    </div>
    {{--<div class="container footer">--}}
        {{--<div class="col-5" style="margin-right: 50px;">--}}
            {{--<div class="footer-widget">--}}
                {{--<div class="title">KẾT NỐI VỚI CHÚNG TÔI</div>--}}
                {{--<ul class="list-menu" style="display:block">--}}
                    {{--<li>Địa chỉ: 38 Phan Đình Phùng, P.Tân Thành, Q.Tân Phú, TP.HCM</li>--}}
                    {{--<li>Hotline: 0902720570</li>--}}
                    {{--<li>Email: webgiadung.vn@gmail.com</li>--}}
                {{--</ul>--}}
            {{--</div>--}}
        {{--</div>--}}
        {{--<div class="col-4 footer__left">--}}
            {{--<div class="bot">--}}
                {{--<div class="social">--}}
                    {{--<div class="title">KẾT NỐI VỚI CHÚNG TÔI</div>--}}
                    {{--<p>--}}
                        {{--<a href="" class="fa fa fa-youtube"></a>--}}
                        {{--<a href="" class="fa fa-facebook-official"></a>--}}
                        {{--<a href="" class="fa fa-twitter"></a>--}}
                    {{--</p>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div>--}}
    {{--</div>--}}
</div>
{{-- <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0&appId=3205159929509308&autoLogAppEvents=1"></script> --}}

