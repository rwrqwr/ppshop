<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.fff.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2018/11/21
  Time: 16:33
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
            <form action="#" method="post" class="last">
                <input type="hidden" name="cmd" value="_cart">
                <input type="hidden" name="display" value="1">
                <button class="w3view-cart" type="submit" name="submit" value="">
                    <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                </button>
            </form>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>

<div class="logo_products">
    <div class="container">
        <div class="w3ls_logo_products_left">
            <h1><a href="../../../index1.jsp">宠物商店</a></h1>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">可爱的宠物<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="multi-gd-img">
                                    <ul class="multi-column-dropdown">
                                        <h6>所有种类</h6>
                                        <li><a href="groceries.html">猫</a></li>
                                        <li><a href="groceries.html">狗</a></li>
                                        <li><a href="groceries.html">鱼类</a></li>
                                        <li><a href="groceries.html">两栖</a></li>
                                        <li><a href="groceries.html">奇奇怪怪类</a></li>
                                    </ul>
                                </div>
                            </div>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">宠物用具<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="multi-gd-img">
                                    <ul class="multi-column-dropdown">
                                        <h6>All Household</h6>
                                        <li><a href="household.html">食盆</a></li>
                                        <li><a href="household.html">奶瓶</a></li>
                                        <li><a href="household.html">饮水器</a></li>
                                        <li><a href="household.html">储粮桶</a></li>
                                        <li><a href="household.html">航空箱</a></li>
                                        <li><a href="household.html">宠物包</a></li>
                                    </ul>
                                </div>
                            </div>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">给宠物的吃的<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="multi-gd-img">
                                    <ul class="multi-column-dropdown">
                                        <h6>Baby Care</h6>
                                        <li><a href="personalcare.html">全犬粮</a></li>
                                        <li><a href="personalcare.html">幼犬粮</a></li>
                                        <li><a href="personalcare.html">成犬粮</a></li>
                                        <li><a href="personalcare.html">老犬粮</a></li>
                                        <li><a href="personalcare.html">罐头</a></li>
                                        <li><a href="personalcare.html">饼干</a></li>
                                    </ul>
                                </div>
                            </div>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">服饰<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="multi-gd-img">
                                    <ul class="multi-column-dropdown">
                                        <h6>All Accessories</h6>
                                        <li><a href="packagedfoods.html">御寒棉服</a></li>
                                        <li><a href="packagedfoods.html">时尚卫衣</a></li>
                                        <li><a href="packagedfoods.html">潮流四脚</a></li>
                                        <li><a href="packagedfoods.html">针织毛衣</a></li>
                                        <li><a href="packagedfoods.html">四季雨衣</a></li>
                                    </ul>
                                </div>

                            </div>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">窝垫<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="multi-gd-img">
                                    <ul class="multi-column-dropdown">
                                        <h6>Tea & Coeffe</h6>
                                        <li><a href="beverages.html">圆窝</a></li>
                                        <li><a href="beverages.html">方窝</a></li>
                                        <li><a href="beverages.html">封闭窝</a></li>
                                        <li><a href="beverages.html">智能窝</a></li>
                                        <li><a href="beverages.html">舒适毯子</a></li>
                                        <li><a href="beverages.html">全可拆洗椭圆窝</a></li>
                                    </ul>
                                </div>

                            </div>
                        </ul>
                    </li>
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
            <li><a href="index.html"><span class="glyphicon glyphicon-主页" aria-hidden="true"></span>主页</a></li>
            <li class="active">Products</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!--- products --->
<div class="products">
    <div class="container">
        <div class="col-md-4 products-left">
            <div class="categories">
                <h2>Categories</h2>
                <ul class="cate">



                    <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Fruits And Vegetables</a></li>
                    <ul>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Cuts & Sprouts</a></li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Flowers</a></li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Fresh Herbs & Seasonings</a></li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Fresh Vegetables</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>International Vegetables</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Organic Fruits & Vegetables</a></li>
                    </ul>
                    <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Grocery & Staples</a></li>
                    <ul>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Dals & Pulses</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Dry Fruits</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Edible Oils & Ghee</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Flours & Sooji</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Masalas & Spices</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Organic Staples</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Rice & Rice Products</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Salt, Sugar & Jaggery</a></li>
                    </ul>
                    <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>PersonalCare</a></li>
                    <ul>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Baby Care</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Cosmetics</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Deos & Perfumes</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Skin Care</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Sanitary Needs</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Oral Care</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Personal Hygiene</a> </li>
                        <li><a href="products.html"><i class="fa fa-arrow-right" aria-hidden="true"></i>Shaving Needs</a></li>
                    </ul>
                </ul>
            </div>
        </div>
        <div class="col-md-8 products-right">
            <div class="products-right-grid">
                <div class="products-right-grids">
                    <div class="sorting">
                        <select id="country" onchange="change_country(this.value)" class="frm-field required sect">
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Default sorting</option>
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Sort by popularity</option>
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Sort by average rating</option>
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Sort by price</option>
                        </select>
                    </div>
                    <div class="sorting-left">
                        <select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Item on page 9</option>
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Item on page 18</option>
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Item on page 32</option>
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>All</option>
                        </select>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="agile_top_brands_grids">
                <div class="col-md-4 top_brand_left">
                    <div class="hover14 column">
                        <div class="agile_top_brand_left_grid">
                            <div class="agile_top_brand_left_grid_pos">
                                <img src="../../../static/imgs/temp/offer.png" alt=" " class="img-responsive">
                            </div>
                            <div class="agile_top_brand_left_grid1">
                                <figure>
                                    <div class="snipcart-item block">
                                        <div class="snipcart-thumb">
                                            <a href="single.html"><img title=" " alt=" " src="../../../static/imgs/temp/pf4.png"></a>
                                            <p>Sampann-toor-dal</p>
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
                <div class="col-md-4 top_brand_left">
                    <div class="hover14 column">
                        <div class="agile_top_brand_left_grid">
                            <div class="agile_top_brand_left_grid_pos">
                                <img src="../../../static/imgs/temp/offer.png" alt=" " class="img-responsive">
                            </div>
                            <div class="agile_top_brand_left_grid1">
                                <figure>
                                    <div class="snipcart-item block">
                                        <div class="snipcart-thumb">
                                            <a href="single.html"><img title=" " alt=" " src="../../../static/imgs/temp/bv3.png"></a>
                                            <p>Parryss-sugar</p>
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
                <div class="col-md-4 top_brand_left">
                    <div class="hover14 column">
                        <div class="agile_top_brand_left_grid">
                            <div class="agile_top_brand_left_grid_pos">
                                <img src="../../../static/imgs/temp/offer.png" alt=" " class="img-responsive">
                            </div>
                            <div class="agile_top_brand_left_grid_pos">
                                <img src="../../../static/imgs/temp/offer.png" alt=" " class="img-responsive">
                            </div>
                            <div class="agile_top_brand_left_grid1">
                                <figure>
                                    <div class="snipcart-item block">
                                        <div class="snipcart-thumb">
                                            <a href="single.html"><img src="../../../static/imgs/temp/16.png" alt=" " class="img-responsive"></a>
                                            <p>Saffola-gold</p>
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
                <div class="clearfix"> </div>
            </div>
            <div class="agile_top_brands_grids">
                <div class="col-md-4 top_brand_left">
                    <div class="hover14 column">
                        <div class="agile_top_brand_left_grid">
                            <div class="agile_top_brand_left_grid_pos">
                                <img src="../../../static/imgs/temp/offer.png" alt=" " class="img-responsive">
                            </div>
                            <div class="agile_top_brand_left_grid1">
                                <figure>
                                    <div class="snipcart-item block">
                                        <div class="snipcart-thumb">
                                            <a href="single.html"><img title=" " alt=" " src="../../../static/imgs/temp/hh4.png"></a>
                                            <p>Sampann-toor-dal</p>
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
                <div class="col-md-4 top_brand_left">
                    <div class="hover14 column">
                        <div class="agile_top_brand_left_grid">
                            <div class="agile_top_brand_left_grid_pos">
                                <img src="../../../static/imgs/temp/offer.png" alt=" " class="img-responsive">
                            </div>
                            <div class="agile_top_brand_left_grid1">
                                <figure>
                                    <div class="snipcart-item block">
                                        <div class="snipcart-thumb">
                                            <a href="single.html"><img title=" " alt=" " src="../../../static/imgs/temp/gu5.png"></a>
                                            <p>Parryss-sugar</p>
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
                <div class="col-md-4 top_brand_left">
                    <div class="hover14 column">
                        <div class="agile_top_brand_left_grid">
                            <div class="agile_top_brand_left_grid_pos">
                                <img src="../../../static/imgs/temp/offer.png" alt=" " class="img-responsive">
                            </div>
                            <div class="agile_top_brand_left_grid_pos">
                                <img src="../../../static/imgs/temp/offer.png" alt=" " class="img-responsive">
                            </div>
                            <div class="agile_top_brand_left_grid1">
                                <figure>
                                    <div class="snipcart-item block">
                                        <div class="snipcart-thumb">
                                            <a href="single.html"><img src="../../../static/imgs/temp/pc6.png" alt=" " class="img-responsive"></a>
                                            <p>Saffola-gold</p>
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
                <div class="clearfix"> </div>
            </div>
            <div class="agile_top_brands_grids">
                <div class="col-md-4 top_brand_left">
                    <div class="hover14 column">
                        <div class="agile_top_brand_left_grid">
                            <div class="agile_top_brand_left_grid_pos">
                                <img src="../../../static/imgs/temp/offer.png" alt=" " class="img-responsive">
                            </div>
                            <div class="agile_top_brand_left_grid1">
                                <figure>
                                    <div class="snipcart-item block">
                                        <div class="snipcart-thumb">
                                            <a href="single.html"><img title=" " alt=" " src="../../../static/imgs/temp/gu4.png"></a>
                                            <p>Sampann-toor-dal</p>
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
                <div class="col-md-4 top_brand_left">
                    <div class="hover14 column">
                        <div class="agile_top_brand_left_grid">
                            <div class="agile_top_brand_left_grid_pos">
                                <img src="../../../static/imgs/temp/offer.png" alt=" " class="img-responsive">
                            </div>
                            <div class="agile_top_brand_left_grid1">
                                <figure>
                                    <div class="snipcart-item block">
                                        <div class="snipcart-thumb">
                                            <a href="single.html"><img title=" " alt=" " src="../../../static/imgs/temp/5.png"></a>
                                            <p>Parryss-sugar</p>
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
                <div class="col-md-4 top_brand_left">
                    <div class="hover14 column">
                        <div class="agile_top_brand_left_grid">
                            <div class="agile_top_brand_left_grid_pos">
                                <img src="../../../static/imgs/temp/offer.png" alt=" " class="img-responsive">
                            </div>
                            <div class="agile_top_brand_left_grid_pos">
                                <img src="../../../static/imgs/temp/offer.png" alt=" " class="img-responsive">
                            </div>
                            <div class="agile_top_brand_left_grid1">
                                <figure>
                                    <div class="snipcart-item block">
                                        <div class="snipcart-thumb">
                                            <a href="single.html"><img src="../../../static/imgs/temp/6.png" alt=" " class="img-responsive"></a>
                                            <p>Saffola-gold</p>
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
                <div class="clearfix"> </div>
            </div>
            <nav class="numbering">
                <ul class="pagination paging">
                    <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                    <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li>
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--- products --->
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
            <img src="../../../static/imgs/temp/card.png" alt=" " class="img-responsive">
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
