<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.fff.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2018/12/7
  Time: 13:23
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
                <li><a href="registered"> 注册 </a></li>
                <li><a href="login">登录</a></li>
                <li><a href="contact.html">Help</a></li>
            </ul>
        </div>
        <%
        }else{
        %>
        <div class="agile-login">
            <ul>
                <li>欢迎,${sessionScope.user.userName}</li>
                <li><a href="person">个人中心</a></li>
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
            <li><a href="/"><span class="glyphicon glyphicon-主页" aria-hidden="true"></span>主页</a></li>
            <li class="active">Singlepage</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<div class="products">
    <div class="container">

        <div class="agileinfo_single">

            <div class="col-md-4 agileinfo_single_left">
                <img id="example" src="../../../static/imgs/temp/si1.jpg" alt=" " class="img-responsive">
            </div>
            <div class="col-md-8 agileinfo_single_right">
                <h2>${spu.goodsName}</h2>
                <div class="w3agile_description">
                    <h4>库存 : &nbsp;&nbsp;${spu.spuQuantity}</h4>
                </div>

                <div class="w3agile_description">
                    <h4>描述 :</h4>
                    <p>${spu.description}</p>
                </div>
                <div class="snipcart-item block">
                    <div class="snipcart-thumb agileinfo_single_right_snipcart">
                        <h4 class="m-sing">${spu.price} <span>$25.00</span></h4>
                    </div>
                    <div class="snipcart-details agileinfo_single_right_details">
                        <form >
                            <fieldset>
                                <input id="spuNo" type="hidden" name="spuNo" value="${spu.spuNo}">
                                <input type="hidden" name="item_name" value="${spu.goodsName}">
                                <input type="hidden" name="amount" value="${spu.price}">
                                <%--<input id="spuQ" type="hidden" name="quanity" value="1">--%>
                                <input type="hidden" name="discount_amount" value="">
                                <input id="spuQ" type="number" name="quantity" min="1" value="">
                                <input type="button" name="submit" value="加入购物车" class="button" onclick="check()" style="margin-top:20px">
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- new -->
<div class="newproducts-w3agile">
    <div class="container">
        <h3>New offers</h3>
        <div class="agile_top_brands_grids">
            <div class="col-md-3 top_brand_left-1">
                <div class="hover14 column">
                    <div class="agile_top_brand_left_grid">
                        <div class="agile_top_brand_left_grid_pos">
                            <img src="images/offer.png" alt=" " class="img-responsive">
                        </div>
                        <div class="agile_top_brand_left_grid1">
                            <figure>
                                <div class="snipcart-item block">
                                    <div class="snipcart-thumb">
                                        <a href="products.html"><img title=" " alt=" " src="images/14.png"></a>
                                        <p>Fried-gram</p>
                                        <div class="stars">
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                        </div>
                                        <h4>$35.99 <span>$55.00</span></h4>
                                    </div>
                                    <div class="snipcart-details top_brand_主页_details">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="business" value=" ">
                                                <input type="hidden" name="item_name" value="Fortune Sunflower Oil">
                                                <input type="hidden" name="amount" value="35.99">
                                                <input type="hidden" name="discount_amount" value="1.00">
                                                <input type="hidden" name="currency_code" value="USD">
                                                <input type="hidden" name="return" value=" ">
                                                <input type="hidden" name="cancel_return" value=" ">
                                                <input type="submit" name="submit" value="Add to cart" class="button">
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 top_brand_left-1">
                <div class="hover14 column">
                    <div class="agile_top_brand_left_grid">
                        <div class="agile_top_brand_left_grid_pos">
                            <img src="images/offer.png" alt=" " class="img-responsive">
                        </div>
                        <div class="agile_top_brand_left_grid1">
                            <figure>
                                <div class="snipcart-item block">
                                    <div class="snipcart-thumb">
                                        <a href="products.html"><img title=" " alt=" " src="images/15.png"></a>
                                        <p>Navaratan-dal</p>
                                        <div class="stars">
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                        </div>
                                        <h4>$30.99 <span>$45.00</span></h4>
                                    </div>
                                    <div class="snipcart-details top_brand_主页_details">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="business" value=" ">
                                                <input type="hidden" name="item_name" value="basmati rise">
                                                <input type="hidden" name="amount" value="30.99">
                                                <input type="hidden" name="discount_amount" value="1.00">
                                                <input type="hidden" name="currency_code" value="USD">
                                                <input type="hidden" name="return" value=" ">
                                                <input type="hidden" name="cancel_return" value=" ">
                                                <input type="submit" name="submit" value="Add to cart" class="button">
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 top_brand_left-1">
                <div class="hover14 column">
                    <div class="agile_top_brand_left_grid">
                        <div class="agile_top_brand_left_grid_pos">
                            <img src="images/offer.png" alt=" " class="img-responsive">
                        </div>
                        <div class="agile_top_brand_left_grid_pos">
                            <img src="images/offer.png" alt=" " class="img-responsive">
                        </div>
                        <div class="agile_top_brand_left_grid1">
                            <figure>
                                <div class="snipcart-item block">
                                    <div class="snipcart-thumb">
                                        <a href="products.html"><img src="images/16.png" alt=" " class="img-responsive"></a>
                                        <p>White-peasmatar</p>
                                        <div class="stars">
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                        </div>
                                        <h4>$80.99 <span>$105.00</span></h4>
                                    </div>
                                    <div class="snipcart-details top_brand_主页_details">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="business" value=" ">
                                                <input type="hidden" name="item_name" value="Pepsi soft drink">
                                                <input type="hidden" name="amount" value="80.00">
                                                <input type="hidden" name="discount_amount" value="1.00">
                                                <input type="hidden" name="currency_code" value="USD">
                                                <input type="hidden" name="return" value=" ">
                                                <input type="hidden" name="cancel_return" value=" ">
                                                <input type="submit" name="submit" value="Add to cart" class="button">
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 top_brand_left-1">
                <div class="hover14 column">
                    <div class="agile_top_brand_left_grid">
                        <div class="agile_top_brand_left_grid_pos">
                            <img src="images/offer.png" alt=" " class="img-responsive">
                        </div>
                        <div class="agile_top_brand_left_grid1">
                            <figure>
                                <div class="snipcart-item block">
                                    <div class="snipcart-thumb">
                                        <a href="products.html"><img title=" " alt=" " src="images/17.png"></a>
                                        <p>Channa-dal</p>
                                        <div class="stars">
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                        </div>
                                        <h4>$35.99 <span>$55.00</span></h4>
                                    </div>
                                    <div class="snipcart-details top_brand_主页_details">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="business" value=" ">
                                                <input type="hidden" name="item_name" value="Fortune Sunflower Oil">
                                                <input type="hidden" name="amount" value="35.99">
                                                <input type="hidden" name="discount_amount" value="1.00">
                                                <input type="hidden" name="currency_code" value="USD">
                                                <input type="hidden" name="return" value=" ">
                                                <input type="hidden" name="cancel_return" value=" ">
                                                <input type="submit" name="submit" value="Add to cart" class="button">
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //new -->
<!-- //footer -->
<div class="footer">
    <div class="footer-copy">
        <div class="container">
            <p>fsh© 10210416522 计算机1165</p>
        </div>
    </div>

</div>
<div class="footer-botm">
    <div class="container">
        <div class="w3layouts-foot">
            <ul>
                <li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                <li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
            </ul>
        </div>
        <div class="payment-w3ls">
            <img src="images/card.png" alt=" " class="img-responsive">
        </div>
        <div class="clearfix"> </div>
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
<script type="text/javascript">
    function check() {
        var spuQ =  document.getElementById("spuQ").value;
        if (spuQ > ${spu.spuQuantity}){
            alert('库存不够');
            document.getElementById("spuQ").value="";
            return;
        }
        aj();
    }
    function aj() {
        var spuNo =  document.getElementById("spuNo").value;
        var spuQ =  document.getElementById("spuQ").value;
        $.ajax({
            type:'post',
            url:"/ajax/singleadd",
            data:{
                spuNo : spuNo,
                spuQ : spuQ
            },
            datatype:'json',
            success:function(data){
                alert('添加成功')
            }
        });
        document.getElementById("spuQ").value="";
    }
</script>

</body>
</html>