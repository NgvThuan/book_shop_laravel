@extends('layouts.app_master_user')
@section('css')
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
        .upload-btn-wrapper-img {
            float: left;
            margin-right: 40px;
            margin-top: 70px;
        }
        .img-thumbnail {
            width: 300px;
            height: 200px;
            border-radius: 0.25rem!important;
            vertical-align: middle;
            border-style: none;
        }
    </style>
@stop
@section('content')
    <section>
        <div class="title">Cập nhật thông tin</div>
        <form action="" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="">Tên</label>
                <input type="text" name="name" class="form-control" value="{{ Auth::user()->name }}" placeholder="">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" name="email" value="{{ Auth::user()->email }}" placeholder="Enter email">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="form-group">
                <label for="">SDT</label>
                <input type="number" name="phone" class="form-control" value="{{ Auth::user()->phone }}" placeholder="Enter email">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="form-group">
                <label for="">Địa chỉ</label>
                <input type="text" name="address" class="form-control" value="{{ Auth::user()->address }}" placeholder="Địa chỉ">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="from-group">
                <div class="upload-btn-wrapper @if (Auth::check()) upload-btn-wrapper-img @endif">
                    <button class="btn-upload">Upload a file</button>
                    <input type="file" name="avatar" />
                </div>
                @if (Auth::check())
                    @if (!empty(Auth::user()->avatar))
                        <img src="{{ pare_url_file(Auth::user()->avatar) }}" class="img-thumbnail" alt="">
                    @endif
                @endif
            </div>

            <button type="submit" class="btn btn-blue btn-md">Cập nhật</button>
        </form>

    </section>
@stop
