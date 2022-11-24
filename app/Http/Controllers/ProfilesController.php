<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class ProfilesController extends Controller
{
     /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($user)
    {
        $user = User::findOrFail($user);

		$pipedrive = app()->make('\Devio\Pipedrive\Pipedrive');
        return view('home', [
            'user' => $user,
        ])->with('data', $pipedrive->deals->all()->getData());
    }

    

   
    
}
