<?php

namespace App\Http\Controllers;

use App\Models\AdminConfigs;
use App\Models\User;
use Illuminate\Http\Request;
//use App\Http\Controllers\Admin2;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;
use \Illuminate\Contracts\View\Factory;
use \Illuminate\Foundation\Application;
use \Illuminate\Contracts\View\View;

class Admin extends Controller
{
   public function index(): Factory|Application|View
   {
       return view('admin.index');
   }

    public function config_question() {
       $on_off = AdminConfigs::where('name' , 'on_off')->first()->config;
       $current_dor = AdminConfigs::where('name' , 'current_dor')->first()->config;
       $dor = AdminConfigs::where('name', 'dor')->first();
        return view('admin.config.question' , ['dor' => $dor->config , 'on_off' => $on_off , 'current_dor' => $current_dor]);
    }

    public function config_question_update(Request $request) {

        $vali = $request->validate([
            'dor' => 'required',
        ]);

        if(AdminConfigs::where('name', 'dor')->update(['config' => request('dor')])) {
            AdminConfigs::where('name', 'current_dor')->update(['config' => '0']);
            return redirect(route('config_question'));
        } else {
            AdminConfigs::updateOrCreate(
                ['name' => 'dor', 'config' => request('dor')]
            );
            return redirect(route('config_question'));
        }

    }

    public function config_user(Request $request) {
       if (User::findOrFail($request->user)->admin) {
           if (Auth::user()->full_admin){
               return view('admin.config.user' ,[
                   'user' => User::findOrFail($request->user),
               ] );
           } elseif (Auth::user()->id == $request->user) {
               return view('admin.config.user' ,[
                   'user' => User::findOrFail($request->user),
               ] );
           }
           return redirect(route('ban'));
       }
      return view('admin.config.user' ,[
          'user' => User::findOrFail($request->user),
      ] );
    }

    public function config_user_post(Request $request) {
       $request->validate([
           'name' => ['required', 'string', 'max:255'],
           'number' => ['required', 'string', 'lowercase', 'max:255', Rule::unique('Users')->ignore($request->id)],
           'level' => ['required']
       ], [
           'number.unique' => ' نام کاربری تکراری است.'
       ]);
       if ($request->level == 'full_admin') {
           $full_admin = 1;
       } else {
           $full_admin = 0;
       }
       User::find($request->id)->update([
           'name' => $request->name,
           'number' => $request->number,
           'full_admin' => $full_admin,
       ]);
       return redirect(route('config.user' , ['user' => $request->id]))->with('status' , true);
    }

    public function config_show_admins() {
        $users = User::query();
        $users = $users->Paginate(20);
        return view('admin.config.admins', compact('users'));
    }

    public function delete_admin(User $user) {
        $user->delete();
        return redirect(route('config.admins'))->with('status' , true);
    }

    public function all_member() {
        return view('admin.members.all' , [
            'u_data' => User::orderByDesc('n_true')->get(),
        ]);
    }

    public function member_edit(Request $request)
    {
        return view('admin.members.edit', [
            'member' => User::findOrFail($request->user),
        ]);
    }

    public function member_edit_post(Request $request)
    {
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'number' => ['required', 'string', 'lowercase', 'max:255', 'unique:' . User::class],
        ], [
            'number.unique' => ' شماره تماس تکراری است.'
        ]);
        User::find($request->id)->update([
            'name' => $request->name,
            'number' => $request->number,
        ]);
        return redirect(route('member.edit', ['user' => $request->id]));


    }

    public function config_all() {
       return view('admin.config.setup');
    }

    public function config_all_update(Request $request) {
        if ($request->on_off == null) {
            $on_off = 0;
        } else {
            $on_off = 1;
        }
        if ($request->app == null) {
            $app = 0;
        } else {
            $app = 1;
        }
        if ($request->admin_register == null) {
            $admin_register = 0;
        } else {
            $admin_register = 1;
        }
       AdminConfigs::where('name' , 'group_name')->first()->update(['config' => $request->group_name]);
       AdminConfigs::where('name' , 'mosabeghe_name')->first()->update(['config' => $request->mosabeghe_name]);
       AdminConfigs::where('name' , 'welcome_text')->first()->update(['config' => $request->welcome_text]);
       AdminConfigs::where('name' , 'welcome_text_off')->first()->update(['config' => $request->welcome_text_off]);
       AdminConfigs::where('name' , 'welcome_btn')->first()->update(['config' => $request->welcome_btn]);
       AdminConfigs::where('name' , 'off_start_text')->first()->update(['config' => $request->off_start_text]);
       AdminConfigs::where('name' , 'enable_start_title')->first()->update(['config' => $request->enable_start_title]);
       AdminConfigs::where('name' , 'enable_start_text')->first()->update(['config' => $request->enable_start_text]);
       AdminConfigs::where('name' , 'start_btn')->first()->update(['config' => $request->start_btn]);
       AdminConfigs::where('name' , 'on_off')->first()->update(['config' => $on_off]);
       AdminConfigs::where('name' , 'app')->first()->update(['config' => $app]);
       AdminConfigs::where('name' , 'admin_register')->first()->update(['config' => $admin_register]);

        return redirect(route('config.all'));
    }

    public function data_member() {
       $members = User::where('admin' , 0)->count();
//       dd($members);
       return view('admin.members.data' ,
           [
               'count' => $members,
           ]);
    }

}
