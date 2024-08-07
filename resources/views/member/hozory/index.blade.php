@extends('layouts.member.q')

@section('title')
    ثبت نام در مسابقه حضوری
@endsection

@section('content')

    <div class="nk-split-content nk-split-stretch bg-white p-5 d-flex justify-center align-center flex-column">
        <div class="wide-xs-fix">

            <div class="card bg-lighter">
                <div class="card-header">ثبت نام</div>
                <div class="card-inner">
                    <h5 class="card-title">ابتدا برای شرکت در مسابقه ثبت نام کنید.</h5>

                    <form method="post" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group">
                            <label class="form-label" for="name">نام</label>
                            <div class="form-control-wrap">
                                <input type="text" class="form-control form-control-lg @error('name') error @enderror"
                                       value="{{ old('name') }}" id="name" name="name" required autofocus
                                       autocomplete="username" placeholder="نام خود را وارد کنید">
                                @error('name')
                                <span id="fv-message-error" class="invalid">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="number">شماره تماس</label>
                            <div class="form-control-wrap">
                                <input type="text" class="form-control form-control-lg @error('number') error @enderror"
                                       name="number" {{ old('number') }} id="number" required autofocus
                                       autocomplete="username" placeholder="شماره تماس خود را با 09.. وارد کنید">
                                @error('number')
                                <span id="fv-message-error" class="invalid">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <input style="display: none" id="password" type="password" name="password" value="12345678"
                               required autocomplete="current-password"/>
                        <input style="display: none" id="password_confirmation" type="password"
                               name="password_confirmation" value="12345678" required autocomplete="current-password"/>
                        <div class="form-group">
                            <button class="btn btn-lg btn-dim btn-dark btn-block">ورود</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection



