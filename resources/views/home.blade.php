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
                        <h3>Welcome <b>{{Auth::user()->name}}</b></h3>
                        <p>Pipedrive User ID: {{ $user->pipedrive_user_id }}</p>
                        <h4>PaidYET Card-On-File Widget</h4>
                        <p>Tokenizes card data with secure hosted input fields stores that token to your Paidyet merchant account, which you can then charge from your PaidYET Merchant Dashboard.</p>
                        
                        <p><strong>Enter your PaidYET Subdomain to select your account:</strong></p>
                        <div class="input-group"> 
                        @php
                        $paypage = Request::input('paypage');
                        @endphp
                        
                        <form class="">
                            <input class="" value="{{ $paypage }}" name="paypage">
                            <span class="input-group-addon" >.paidyet.com</span></input>
                            <button class="btn btn-sm" type="submit">Set Subdomain</button> 
                        </form>
                        
                        </div><br />
                        
                        @if($paypage)
                            <div id="card-element-cof" style="height: 50px"></div >
                            <div id="card-errors" ></div >
                            <a id="submit" name="submit" class="btn">Submit</a>
                           
                        @else
                            <hr />
                            <p><strong>Please enter your PaidYET subdomain above to select your account &amp; enable the widget.</strong>
                            <br /> Don't have a PaidYET subdomain? Request one <a href="https://paidyet.com/request" target="_BLANK">here</a>
                        @endif
                        <hr />
                        <div><p style="font-size: 12px">The input fields themselves are <u>hosted on PaidYET's PCI Certified Secured Servers</u>, so no credit card data ever touches or is stored on any other servers.</p>
                        
                        <p style="font-size: 12px"><u>Tokenization</u> is the process of breaking a stream of text/numbers up into words, phrases, symbols, or other meaningful elements called tokens. This token can then be used in place of a credit card number when processing a transaction. This is useful when a developer does not want to under take the security requirements of storing card data.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
