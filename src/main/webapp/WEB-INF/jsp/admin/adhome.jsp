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
    <title>管理</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="${pageContext.request.contextPath}/../static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/../static/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome icons -->
    <link href="${pageContext.request.contextPath}/../static/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="${pageContext.request.contextPath}/../static/js/jquery.min.js"></script>
    <!-- //js -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/../static/js/move-top.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/../static/js/easing.js"></script>
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
            <h1><a href="../index.jsp">宠物商店</a></h1>
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
                    <li class="active"><a href="../index.jsp" class="act">主页</a></li>
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

<!-- //breadcrumbs -->
<!-- login -->
<div class="login">
    <div class="container">
        <ul>
            <li><a href="/admin/addspu">上架</a></li>
            <li><a href="">下架</a></li>
        </ul>
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
<script src="${pageContext.request.contextPath}/../static/js/bootstrap.min.js"></script>
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
<script src="${pageContext.request.contextPath}/../static/js/minicart.min.js"></script>
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
<script src="${pageContext.request.contextPath}/../static/js/skdslider.min.js"></script>
<link href="${pageContext.request.contextPath}/../static/css/skdslider.css" rel="stylesheet">
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