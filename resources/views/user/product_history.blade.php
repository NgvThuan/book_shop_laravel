@extends('layouts.app_master_user')
@section('css')
    <style>
        <?php $style = file_get_contents('css/user.min.css'); echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title">Danh sách sản phẩm đã mua</div>
        <div class="row mb-5">
            <div class="col-sm-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">STT</th>
                            <th class="w-25" scope="col">Tên</th>
                            <th scope="col">Sản phẩm</th>
                            <th scope="col">Ảnh</th>
                            <th scope="col">Giá</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($products as $key => $item)
                        <tr>
                            <th scope="row" style="vertical-align: middle">{{ $key + 1 }}</th>
                            <th style="vertical-align: middle">{{ isset($item->product) ? $item->product->pro_name : '' }}</th>
                            <th style="vertical-align: middle">
                                <span class="label label-success">{{ isset($item->product) ? $item->product->category->c_name : "[N\A]" }}</span>
                            </th>
                            <th style="vertical-align: middle">
                                <img src="{{ isset($item->product) ? pare_url_file($item->product->pro_avatar) : '' }}" style="width: 80px;height: 100px">
                            </th>
                            <th style="vertical-align: middle">{{ isset($item->product) ? number_format($item->product->pro_price,0,',','.') : '' }} đ</th>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </section>
@stop
