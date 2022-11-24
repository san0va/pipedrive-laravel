@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Dashboard</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success">
                                {{ session('status') }}
                            </div>
                        @endif
                        <h3>Hi <b>{{Auth::user()->name}}</b></h3>
                        <p>Pipedrive User ID: {{ $user->pipedrive_user_id }}</p>
                        @if($data)
                            <h4>These are your deals:</h4>
                            <ul>
                                @foreach($data as $deal)
                                    <li>{{$deal->title}}</li>
                                @endforeach
                            </ul>
                        @else
                            No deals here...
                        @endif

                        <form>
                            <input name="paypage" />
                            <button type="submit">Submit</button> 
                        </form>
                        @php
                        $paypage = Request::input('paypage');
                        @endphp

                        <p>{{ $paypage }} 

                        <div id="card-element-cof" ></div >
                        <div id="card-errors" ></div >
                        <a id="submit" name="submit" class="btn">Submit</a>
                        <p>{{ $user->profile->title }}</p>
                        <p>{{ $user->profile->description }}</p>
                        <p>{{ $user->profile->persons }}</p>

                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
