@extends('layouts.admin')

@section('title')
    آمار کلی
@endsection


@section('body')
    <div class="nk-content nk-content-fluid">
        <div class="container-xl wide-xl" data-select2-id="19">
            <div class="nk-content-body" data-select2-id="18">
                <div class="nk-block-head nk-block-head-sm">
                    <div class="nk-block-between">
                        <div class="nk-block-head-content">
                            <h3 class="nk-block-title page-title">آمار کلی</h3>

                            {{--                            @if(session('status'))--}}

                            {{--                                <span class="alert alert-fill alert-success alert-icon" style="padding-left: 20px;">--}}
                            {{--                                    <em class="icon ni ni-check-circle" style="top: 6px !important;"></em>سوال ویرایش شد.--}}
                            {{--                                </span>--}}

                            {{--                            @endif--}}
                            @if($count !== 0)

                                <div class="nk-block-des text-soft">
                                    <p>در مجموع {{ $count }} شرکت کننده وجود دارد</p>
                                </div>

                            @endif

                        </div>
                        <!-- .nk-block-head-content -->
                        <div class="nk-block-head-content">
                            <div class="toggle-wrap nk-block-tools-toggle">
                                <a href="#" class="btn btn-icon btn-trigger toggle-expand me-n1" data-target="pageMenu"><em
                                        class="icon ni ni-menu-alt-r"></em></a>
                                <div class="toggle-expand-content" data-content="pageMenu">
                                    <ul class="nk-block-tools g-3">
                                        <li class="nk-block-tools-opt">
                                            <div class="drodown">
                                                <a id="new" href="{{ route('members.all') }}"
                                                   onclick="loading('new')" class="btn btn-icon btn-primary btnplus">مشاهده لیست
                                                    <em class="icon ni ni-back-ios"></em></a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- .toggle-wrap -->
                        </div>
                        <!-- .nk-block-head-content -->
                    </div>
                    <!-- .nk-block-between -->
                </div>
                <!-- .nk-block-head -->
                <div class="nk-block" data-select2-id="17">
                    <div class="card card-stretch" data-select2-id="16">
                        <div class="card-inner-group" data-select2-id="15">
                            <!-- .card-inner -->

                            <div class="card-inner p-0">
                                <div class="nk-tb-list nk-tb-ulist">

                                    @if($count == 0)

                                        <div class="alert alert-fill alert-warning alert-icon">
                                            <em class="icon ni ni-alert-circle"></em>
                                            <strong>شرکت کننده ای وجود ندارد</strong>
                                        </div>

                                    @endif

                                    @if($count !== 0)

                                    @endif
                                </div>
                                <!-- .nk-tb-list -->
                            </div>
                        </div>
                        <!-- .card-inner-group -->
                    </div>
                    <!-- .card -->
                </div>
                <!-- .nk-block -->
            </div>
        </div>
    </div>



@endsection


{{--                                        <form class="tb-odr-btns d-none d-md-inline"--}}
{{--                                              action="/admin/questions/{{$q->id}}" method="post">--}}
{{--                                            @csrf--}}
{{--                                            @method('delete')--}}
{{--                                            <button class="text-danger delete-btn">حذف سوال</button>--}}
{{--                                        </form>--}}

