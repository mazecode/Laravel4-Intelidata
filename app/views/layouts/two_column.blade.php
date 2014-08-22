<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>iDATA | @yield('title')</title>
    <!-- Latest compiled and minified CSS -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- CSS -->
    {{ HTML::style('css/frontend.min.css') }}
    <!-- ICONS -->
    {{ HTML::style('//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css') }}
    {{ HTML::style('css/mono-social-icons.css') }}
    {{ HTML::style('css/pe-icon-7-stroke.css') }}
    {{ HTML::style('css/helper.css') }}
    {{ HTML::style('css/bootstrap.vertical-tabs.css') }}
    <style> html {min-height: 100%; position: relative; } body {margin-bottom: 60px; } </style>
    @yield('style')
</head>
<body>
    <div class="container">
        <div class="row" style="min-height: 100%; margin: 20px 0;">
            <div class="col-xs-5 col-md-5 text-left">
                <img src="holder.js/300x110" alt="" class="img-responsive">
                <h2>LOGO EMPRESA</h2>
                <h3 class="muted">slogan</h3>
            </div>
            <div class="col-xs-7 col-md-7">
                @yield('content')
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <footer style="background-color: #f5f5f5; bottom: 0; height: 60px; position: absolute; width: 100%;">
        <div class="container">
            <div class="row">
                <p class="text-muted" style="margin: 20px 0;">2014. Nombre de la empresa. Todos los derechos reservados.</p>
            </div>
        </div>
    </footer>
    <!-- JQUERY 1.11.1 -->
    {{ HTML::script('//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js') }}
    <!-- BOOTSTRAP 3.2 JS -->
    {{ HTML::script('//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js') }}
    <!-- HOLDER.JS -->
    {{ HTML::script('js/holder.js') }}
    <!-- CUSTOM JAVASCRIPT -->
    {{ HTML::script('js/frontend.min.js') }}
    @yield('script')
</body>
</html>