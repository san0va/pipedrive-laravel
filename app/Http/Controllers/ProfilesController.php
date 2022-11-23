<?php

namespace App\Http\Controllers;

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
        dd($user);
		$pipedrive = app()->make('\Devio\Pipedrive\Pipedrive');
        return view('home')->with('data', $pipedrive->deals->all()->getData());
    }
}
