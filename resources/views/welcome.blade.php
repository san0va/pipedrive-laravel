<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>PaidYET Pipedrive Application</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <style>
        html, body {
            background-color: #fff;
            color: #636b6f;
            font-family: 'Raleway', sans-serif;
            font-weight: 100;
            height: 100vh;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .links > a {
            color: #636b6f;
            padding: 0 25px;
            font-size: 12px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }

        .m-b-md {
            margin-bottom: 30px;
        }

        .pd-login {
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 6px;
            background-color: #43c35e;
            font-size: 20px;
            margin: 20px 0;
            border-color: #2cbf55;
            display: inline-block;
            color: #fff;
            font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Geneva, Verdana, sans-serif;
        }

        .p-developers {
            margin-bottom: 15px;
            position: absolute;
            top: 30px;
            margin-left: -85px;
        }
    </style>
</head>
<body>
<div class="flex-center position-ref full-height">
    @if (Route::has('login'))
        <div class="top-right links">
            @auth
                <a href="{{ url('/home') }}">Home</a>
            @else

            @endauth
        </div>
    @endif
	
    <div class="content">
	<div class="title m-b-md">
            Advanced Payment Gateway Technology.
        </div>
        <a href="#">
            <img src="https://paidyet.com/wp-content/uploads/2022/08/PaidYET-Website-Footer-logo-2022-horizontal.png" max-height="170"
                 style="margin-bottom: 15px;"
            class="p-developers">
        </a><br>
        <a href="{{ url('/auth/pipedrive') }}" class="pd-login">Login with Pipedrive</a>
        

        <div class="links" style="display: none;">
            <a href="https://pipedrive.com">Pipedrive</a>
            <a href="https://pipedrive.readme.io/docs">Documentation</a>
            <a href="https://devcommunity.pipedrive.com/">Community</a>
            <a href="https://developers.pipedrive.com/docs/api/v1/">API Reference</a>
            <a href="https://marketplace.pipedrive.com">Marketplace</a>
            <a href="https://laravel.com/">Laravel</a>
        </div>
    </div>
</div>
</body>
</html>
