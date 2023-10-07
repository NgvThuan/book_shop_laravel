@extends('layouts.app_master_user')
@section('css')
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title">Danh sách sản phẩm yêu thích</div>
        <div class="row mb-5">
           <div class="col-sm-12">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th scope="col">STT</th>
                            <th class="w-25" scope="col">Tên</th>
                            <th scope="col">Sản phẩm</th>
                            <th scope="col">Ảnh</th>
                            <th scope="col">Giá</th>
                            <th scope="col" style="text-align: center">#</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($products as $item)
                            <tr>
                                <th scope="row" style="vertical-align: middle">DH{{ $item->id }}</th>
                                <th style="vertical-align: middle">{{ $item->pro_name }}</th>
                                <th style="vertical-align: middle">
                                    <span class="label label-success">{{ $item->category->c_name ?? "[N\A]" }}</span>
                                </th>
                                <th style="vertical-align: middle">
                                    <img src="{{ pare_url_file($item->pro_avatar) }}" style="width: 80px;height: 100px">
                                </th>
                                <th style="vertical-align: middle">{{ number_format($item->pro_price,0,',','.') }} đ</th>
                                <th style="vertical-align: middle">
                                    <a class="btn btn-light" href="{{  route('get.user.favourite.delete', $item->id) }}">Huỷ bỏ</a>
                                </th>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
           </div>
        </div>
    </section>
@stop
