<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    @include('share.style')
</head>
<body>
{{--navbar--}}
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/">E-Shop</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainNavbar"
            aria-controls="mainNavbar" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="mainNavbar">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/"><i class="fa fa-home mr-1"></i>Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fa fa-shopping-bag mr-1"></i>Shop</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fa fa-phone mr-1"></i>Contact</a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/cart"><i class="fa fa-shopping-cart mr-1"></i>
                    Cart(<span class="text-light">0</span>)
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/profile"><i class="fa fa-user-circle mr-1"></i>Profile</a>
            </li>
        </ul>
    </div>
</nav>

{{--main content--}}
@yield('content')

{{--footer--}}
<footer class="bg-dark text-white mt-5 pt-4 pb-2">
    <div class="container">
        <div class="row">

            <!-- About -->
            <div class="col-md-4 mb-4">
                <h5 class="text-uppercase">E-Shop</h5>
                <p>
                    Your one-stop online shop for the best products at unbeatable prices.
                </p>
            </div>

            <!-- Links -->
            <div class="col-md-2 mb-4">
                <h6 class="text-uppercase">Quick Links</h6>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-white-50">Home</a></li>
                    <li><a href="#" class="text-white-50">Shop</a></li>
                    <li><a href="#" class="text-white-50">Cart</a></li>
                    <li><a href="#" class="text-white-50">Contact Us</a></li>
                </ul>
            </div>

            <!-- Customer Service -->
            <div class="col-md-3 mb-4">
                <h6 class="text-uppercase">Customer Service</h6>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-white-50">FAQ</a></li>
                    <li><a href="#" class="text-white-50">Shipping & Returns</a></li>
                    <li><a href="#" class="text-white-50">Privacy Policy</a></li>
                    <li><a href="#" class="text-white-50">Terms & Conditions</a></li>
                </ul>
            </div>

            <!-- Contact Info & Socials -->
            <div class="col-md-3 mb-4">
                <h6 class="text-uppercase">Contact Us</h6>
                <p class="mb-1"><i class="fa fa-envelope mr-2"></i> support@eshop.com</p>
                <p class="mb-1"><i class="fa fa-phone mr-2"></i> +123 456 7890</p>
                <div>
                    <a href="#" class="text-white-50 mr-3"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="text-white-50 mr-3"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="text-white-50"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <hr class="border-top border-secondary">
        <div class="text-center text-white-50">
            &copy; 2025 E-Shop. All rights reserved.
        </div>
    </div>
</footer>

</body>
@include('share.script')
</html>
