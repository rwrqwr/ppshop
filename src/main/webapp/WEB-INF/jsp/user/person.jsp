<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.fff.entity.User" %><%--
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
    <link rel="stylesheet" type="text/css" href="../../../static/css/user/person.css">
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

        <%
            User user = (User) request.getSession().getAttribute("user");
            if(user == null){
        %>
        <div class="agile-login">
            <ul>
                <li><a href="/user/registered"> 注册 </a></li>
                <li><a href="/user/login">登录</a></li>
                <li><a href="contact.html">Help</a></li>
            </ul>
        </div>
        <%
        }else{
        %>
        <div class="agile-login">
            <ul>
                <li>欢迎,${sessionScope.user.userName}</li>
                <li><a href="/user/person">个人中心</a></li>
                <li><a href="/user/out">退出</a></li>
            </ul>
        </div>
        <%
            }
        %>


        <div class="product_list_header">
            <a href="/goods/cate">
                <button class="w3view-cart" name="submit" value="">
                    <i class="fa fa-cart-arrow-down" aria-hidden="true">

                    </i>
                </button>
            </a>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>

<div class="logo_products">
    <div class="container">
        <div class="w3ls_logo_products_left">
            <h1><a href="/">宠物商店</a></h1>
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
                    <li class="active"><a href="/" class="act">主页</a></li>
                    <!-- Mega Menu -->
                    <c:forEach items="${bigcates}" var="bigcate">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">${bigcate.bigcateName}<b class="caret"></b></a>
                            <ul class="dropdown-menu multi-column columns-3">
                                <div class="row">
                                    <div class="multi-gd-img">
                                        <ul class="multi-column-dropdown">
                                            <h6>${bigcate.bigcateName}</h6>
                                            <c:forEach items="${bigcate.categoryList}" var="cate">
                                                <li><a href="/goods/${cate.categoryEname}">${cate.categoryName}</a></li>
                                            </c:forEach>

                                        </ul>
                                    </div>
                                </div>
                            </ul>
                        </li>
                    </c:forEach>

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
            <li><a href="/"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">个人中心</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- login -->

<div class="person-main container">
    <div class="row">
        <div class="per-main-ul col-md-2">
            <ul class="nav nav-pills nav-stacked">
                <li id="li0">收货地址</li>
                <li id="li2">订单</li>
            </ul>
        </div>

        <div id="des0" class="per-main-display col-md-10">
            <button type="button" class="display-btn btn btn-default" data-toggle="modal" data-target=".bs-example-modal-lg">添加地址</button>
            <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content login-form-grids animated wow slideInUp">
                        <form method="get" action="addaddress">
                            <input type="text" placeholder="收货地址" required="required" name="addressAd">
                            <input type="text" placeholder="收货人电话" required="required" name="telPhone">
                            <input type="text" placeholder="收货人姓名" required="required" name="receiverName">
                            <button class="btn btn-default" type="submit">添加</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
            <ul>
                <c:forEach items="${addressList}" var="detail">
                    <li>
                        <div class="col-md-9 detcontext">
                            <span class="detail">收货地址：${detail.addressAd}</span>
                            </br>
                            <span>收货人姓名：</span>${detail.receiverName}&nbsp;&nbsp;
                            <span>收货人电话：</span>${detail.telPhone}
                        </div>
                        <div class="span-btn col-md-3">
                            <a href="deladdress?addressId=${detail.addressId}" ><button class="btn btn-default" type="submit">删除地址</button></a>
                            <a href="todefault?addressId=${detail.addressId}"><button class="btn btn-default" type="submit">设为默认</button></a>
                        </div>
                    </li>
                </c:forEach>
            </ul>
            </div>
        </div>
        <div id="des1" class="per-main-display col-md-10">

        </div>
        <div id="des2" class="per-main-display col-md-10">

        </div>


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
<%--<script>
    // Mini Cart
    paypal.minicart.render({
        action: '#'
    });

    if (~window.location.search.indexOf('reset=true')) {
        paypal.minicart.reset();
    }
</script>--%>
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
<script>
    jQuery(document).ready(function() {
        $('#li0').click(
            function () {
               $('#des0').show();
               $('#des1').hide();
               $('#des2').hide();
            }
        )
        $('#li1').click(
            function () {
                $('#des0').hide();
                $('#des1').show();
                $('#des2').hide();
            }
        )
        $('#li2').click(
            function () {
                $('#des0').hide();
                $('#des1').hide();
                $('#des2').show();
            }
        )
    });
</script>
</body>
</html>