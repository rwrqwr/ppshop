<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2018/11/6
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="../../../static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../../../static/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome icons -->
    <link href="../../../static/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="../../../static/js/jquery.min.js"></script>
    <!-- //js -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="../../../static/js/move-top.js"></script>
    <script type="text/javascript" src="../../../static/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
</head>

<body>
<!-- header -->
<div class="agileits_header">
    <div class="container">
        <div class="agile-login">
            <ul>
                <li><a href="registered"> 注册 </a></li>
                <li><a href="login">登录</a></li>
                <li><a href="#">Help</a></li>
            </ul>
        </div>
        <div class="product_list_header">
            <form action="#" method="post" class="last">
                <input type="hidden" name="cmd" value="_cart">
                <input type="hidden" name="display" value="1">
                <button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
            </form>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>

<div class="logo_products">
    <div class="container">
        <div class="w3ls_logo_products_left">
            <h1><a href="index.html">宠物商店</a></h1>
        </div>
        <div class="w3l_search">
            <form action="#" method="post">
                <input type="search" name="Search" placeholder="Search for a Product..." required="">
                <button type="submit" class="btn btn-default search" aria-label="Left Align">
                    <i class="fa fa-search" aria-hidden="true"> </i>
                </button>
                <div class="clearfix"></div>
            </form>
        </div>

        <div class="clearfix"> </div>
    </div>
</div>
<!-- //header -->
<!-- navigation -->
<div class="navigation-agileits">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header nav_2">
                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="../../../index1.jsp" class="act">主页</a></li>
                    <!-- Mega Menu -->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Groceries<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="multi-gd-img">
                                    <ul class="multi-column-dropdown">
                                        <h6>All Groceries</h6>
                                        <li><a href="groceries.html">Dals & Pulses</a></li>
                                        <li><a href="groceries.html">Almonds</a></li>
                                        <li><a href="groceries.html">Cashews</a></li>
                                        <li><a href="groceries.html">Dry Fruit</a></li>
                                        <li><a href="groceries.html"> Mukhwas </a></li>
                                        <li><a href="groceries.html">Rice & Rice Products</a></li>
                                    </ul>
                                </div>

                            </div>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Household<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="multi-gd-img">
                                    <ul class="multi-column-dropdown">
                                        <h6>All Household</h6>
                                        <li><a href="household.html">Cookware</a></li>
                                        <li><a href="household.html">Dust Pans</a></li>
                                        <li><a href="household.html">Scrubbers</a></li>
                                        <li><a href="household.html">Dust Cloth</a></li>
                                        <li><a href="household.html"> Mops </a></li>
                                        <li><a href="household.html">Kitchenware</a></li>
                                    </ul>
                                </div>


                            </div>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Personal Care<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="multi-gd-img">
                                    <ul class="multi-column-dropdown">
                                        <h6>Baby Care</h6>
                                        <li><a href="personalcare.html">Baby Soap</a></li>
                                        <li><a href="personalcare.html">Baby Care Accessories</a></li>
                                        <li><a href="personalcare.html">Baby Oil & Shampoos</a></li>
                                        <li><a href="personalcare.html">Baby Creams & Lotion</a></li>
                                        <li><a href="personalcare.html"> Baby Powder</a></li>
                                        <li><a href="personalcare.html">Diapers & Wipes</a></li>
                                    </ul>
                                </div>

                            </div>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Packaged Foods<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="multi-gd-img">
                                    <ul class="multi-column-dropdown">
                                        <h6>All Accessories</h6>
                                        <li><a href="packagedfoods.html">Baby Food</a></li>
                                        <li><a href="packagedfoods.html">Dessert Items</a></li>
                                        <li><a href="packagedfoods.html">Biscuits</a></li>
                                        <li><a href="packagedfoods.html">Breakfast Cereals</a></li>
                                        <li><a href="packagedfoods.html"> Canned Food </a></li>
                                        <li><a href="packagedfoods.html">Chocolates & Sweets</a></li>
                                    </ul>
                                </div>


                            </div>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Beverages<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="multi-gd-img">
                                    <ul class="multi-column-dropdown">
                                        <h6>Tea & Coeffe</h6>
                                        <li><a href="beverages.html">Green Tea</a></li>
                                        <li><a href="beverages.html">Ground Coffee</a></li>
                                        <li><a href="beverages.html">Herbal Tea</a></li>
                                        <li><a href="beverages.html">Instant Coffee</a></li>
                                        <li><a href="beverages.html"> Tea </a></li>
                                        <li><a href="beverages.html">Tea Bags</a></li>
                                    </ul>
                                </div>

                            </div>
                        </ul>
                    </li>
                    <li><a href="gourmet.html">Gourmet</a></li>
                    <li><a href="offers.html">Offers</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>

<!-- //navigation -->
<!-- breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">Login Page</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- login -->
<div class="login">
    <div class="container">
        <h2>Login Form</h2>

        <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
            <form action="/user/checklogin">
                <input type="email" placeholder="Email Address" required=" " >
                <input type="password" placeholder="Password" required=" " >
                <div class="forgot">
                    <a href="#">Forgot Password?</a>
                </div>
                <input type="submit" value="Login">
            </form>
        </div>
        <h4>For New People</h4>
        <p><a href="registered.html">Register Here</a> (Or) go back to <a href="index.html">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
    </div>
</div>
<!-- //login -->
<!-- //footer -->
<div class="footer">


    <div class="footer-copy">

        <div class="container">
            <p>fsh© 10210416522 计算机1165</p>
        </div>
    </div>

</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="../../../static/js/bootstrap.min.js"></script>
<!-- top-header and slider -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->
<script src="../../../static/js/minicart.min.js"></script>
<script>
    // Mini Cart
    paypal.minicart.render({
        action: '#'
    });

    if (~window.location.search.indexOf('reset=true')) {
        paypal.minicart.reset();
    }
</script>
<!-- main slider-banner -->
<script src="../../../static/js/skdslider.min.js"></script>
<link href="../../../static/css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});

        jQuery('#responsive').change(function(){
            $('#responsive_wrapper').width(jQuery(this).val());
        });

    });
</script>
<!-- //main slider-banner -->

</body>
</html>