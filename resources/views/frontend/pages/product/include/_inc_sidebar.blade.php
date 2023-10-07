<style type="text/css">
    .item__content .active a {
        color: red;
    }
</style>
<div class="filter-sidebar">
    @if (config('layouts.pages.search.price.type') == 2)
        <div class="item">
            <div class="item__title">Giá bán</div>
            <div class="item__content prices">
                @include('frontend.pages.product.include._inc_filter_price')
            </div>
        </div>
    @endif

    @if (isset($types))
        @foreach($types as $key => $type)
            @if (isset($category) && isset($category->attribute) && $category->attribute->atb_type == $key || $key == 8)
                <div class="item">
                    <div class="item__title">{{ $type['name'] }}</div>
                    <div class="item__content">
                        <ul>
                            @foreach($attributes as $item)
                                @if ($key == $item['atb_type'])
                                <li class=" js-param-search {{ Request::get('attr_'.$item['atb_type']) == $item['id'] ? "active" : "" }}"
                                data-param="attr_{{ $item['atb_type'] }}={{ $item['id'] }}">
                                    <a href="{{ request()->fullUrlWithQuery(['attr_'.$item['atb_type'] => $item['id']]) }}">
                                        <span>{{ $item['atb_name'] }}</span>
                                    </a>
                                </li>
                                @endif
                            @endforeach
                        </ul>
                    </div>
                </div>
            @endif
        @endforeach
    @endif
    <div class="item">
        <div class="item__title">Đánh giá</div>
        <div class="item__content ratings">
            <ul>
                @for ($i = 5 ; $i >0 ; $i--)
                    <li class="{{ Request::get('rv') == $i ? "active" : "" }}">
                        <a href="{{ request()->fullUrlWithQuery(['rv'=> $i]) }}">
                            <span>
                                @for($j = 1 ; $j <= 5 ; $j ++)
                                    <i class="la la-star {{ $j <= $i ? 'active' : '' }}"></i>
                                @endfor
                            </span>
                        </a>
                    </li>
                @endfor
            </ul>
        </div>
    </div>
</div>
