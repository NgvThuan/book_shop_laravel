<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Requests\RequestLogin;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    // protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('guest')->except('logout');
    }

    public function getFormLogin()
    {
        $title_page = 'Đăng nhập';
        return view('auth.login',compact('title_page'));
    }

    public function postLogin(RequestLogin $request)
    {
        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)) {
            $this->logLogin();
			\Session::flash('toastr', [
				'type'    => 'success',
				'message' => 'Đăng nhập thành công'
			]);
            return redirect()->intended('/');
            \Session::flash('toastr', [
                'type'    => 'success',
                'message' => 'Đăng nhập thành công'
            ]);
        } else {
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Đăng xảy ra lỗi không thể đăng nhập'
            ]);
        }
        return redirect()->back();
    }

    protected function logLogin()
    {
        $log = get_agent();
        $historyLog = \Auth::user()->log_login;
        $historyLog = json_decode($historyLog,true) ?? [];
        $historyLog[] = $log;
        \DB::table('users')->where('id', \Auth::user()->id)
            ->update([
                'log_login' => json_encode($historyLog)
            ]);
    }

    public function getLogout()
    {
        Auth::logout();
        return redirect()->to('/');
    }
}
