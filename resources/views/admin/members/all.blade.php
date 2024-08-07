@extends('layouts.admin')

@section('title')
    لیست شرکت کنندگان
@endsection

<?php
use \App\Models\User;
$n = User::where('admin' , 0)->count()

?>





@section('body')
    <div class="nk-content nk-content-fluid">
        <div class="container-xl wide-xl" data-select2-id="19">
            <div class="nk-content-body" data-select2-id="18">
                <div class="nk-block-head nk-block-head-sm">
                    <div class="nk-block-between">
                        <div class="nk-block-head-content">
                            <h3 class="nk-block-title page-title">لیست شرکت کنندگان</h3>

                            {{--                            @if(session('status'))--}}

                            {{--                                <span class="alert alert-fill alert-success alert-icon" style="padding-left: 20px;">--}}
                            {{--                                    <em class="icon ni ni-check-circle" style="top: 6px !important;"></em>سوال ویرایش شد.--}}
                            {{--                                </span>--}}

                            {{--                            @endif--}}
                            @if($n !== 0)

                                <div class="nk-block-des text-soft">
                                    <p>در مجموع {{ $n }} شرکت کننده وجود دارد</p>
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
                                                <a id="new" href="{{ route('admin.dashboard') }}" data-bs-toggle="modal" data-bs-target="#modalDashboard"
                                                   onclick="event.preventDefault(); document.getElementById('form12').submit();" class="btn btn-icon btn-primary fw-light btnplus">داشبورد
                                                    <em class="icon ni ni-back-ios"></em></a>
                                            </div>
                                            <form id="form12" action="{{ route('admin.dashboard') }}" class="d-none"></form>
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

                                    @if($n == 0)

                                        <div class="alert alert-fill alert-warning alert-icon">
                                            <em class="icon ni ni-alert-circle"></em>
                                            <strong>شرکت کننده ای وجود ندارد!</strong>
                                        </div>

                                    @endif

                                    @if($n !== 0)


                                            <div class="nk-tb-item nk-tb-head">
                                                <div class="nk-tb-col"><span class="sub-text">آیدی کاربر</span></div>
                                                <div class="nk-tb-col tb-col-lg"><span class="sub-text q-head">نام کاربر</span> </div>
                                                <div class="nk-tb-col tb-col-lg"><span class="sub-text">شماره تماس</span></div>
                                                <div class="nk-tb-col tb-col-lg"><span class="sub-text">تعداد پاسخ های درست</span></div>
                                                <div class="nk-tb-col tb-col-lg"><span class="sub-text">تعداد پاسخ های نادرست</span></div>
                                                <div class="nk-tb-col tb-col-lg"><span class="sub-text">امتیاز</span></div>
                                                <div class="nk-tb-col text-end"><span class="sub-text">اقدامات</span></div>
                                            </div>


                                        @foreach($u_data as $u)

                                        <!-- .nk-tb-item -->

                                        @if(!$u->admin)
                                            <div class="nk-tb-item">
                                                <div class="nk-tb-col col-n">
                                                    <span class="sub-text">{{ $u->id }}</span>
                                                </div>
                                                <div class="nk-tb-col col-n">
                                                    <span class="sub-text">{{ $u->name }}</span>
                                                </div>
                                                <div class="nk-tb-col tb-col-lg">
                                                    <span class="sub-text">{{ $u->number }}</span>
                                                </div>
                                                <div class="nk-tb-col tb-col-lg">
                                                    <span class="sub-text">{{ $u->n_true }}</span>
                                                </div>
                                                <div class="nk-tb-col tb-col-lg">
                                                    <span class="sub-text">{{ $u->n_false }}</span>
                                                </div>
                                                <div class="nk-tb-col tb-col-lg">
                                                    <span class="sub-text bg-info-dim text-info"
                                                          style="text-align: center; width: 30px; border-radius: 7px;">
                                                        @php
                                                            $t = $u->n_true;
                                                            $f = $u->n_false ;
                                                            $m = ($t - $f/2)*10;
                                                            echo $m;
                                                        @endphp
                                                    </span>
                                                </div>
                                                <div class="nk-tb-col nk-tb-col-tools">
                                                    <ul class="nk-tb-actions gx-1">
                                                        <li class="nk-tb-action-hidden">
                                                            <a href="#" class="btn btn-trigger btn-icon" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="مشاهده جزئیات" data-bs-original-title="مشاهده جزئیات">
                                                                <em class="icon ni ni-eye-fill"></em>
                                                            </a>
                                                        </li>
                                                        <li class="nk-tb-action-hidden">
                                                            <a href="{{ route('member.edit', ['user' => $u->id]) }}" class="btn btn-trigger btn-icon" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="ویرایش" data-bs-original-title="ویرایش">
                                                                <em class="icon ni ni-edit-alt-fill"></em>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- .nk-tb-item -->
                                            @endif
                                        @endforeach
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

    <x-admin.modal id="modalDashboard" class="modal-body-md">در حال رفتن به داشبورد ...</x-admin.modal>

@endsection


{{--                                        <form class="tb-odr-btns d-none d-md-inline"--}}
{{--                                              action="/admin/questions/{{$q->id}}" method="post">--}}
{{--                                            @csrf--}}
{{--                                            @method('delete')--}}
{{--                                            <button class="text-danger delete-btn">حذف سوال</button>--}}
{{--                                        </form>--}}

