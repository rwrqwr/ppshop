<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="v-on" uri="http://www.springframework.org/tags/form" %>
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
    <title>购物车</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" type="text/css" href="../../../static/css/goods/cate.css">
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
            <form action="#" method="post" class="last">
                <input type="hidden" name="cmd" value="_cart">
                <input type="hidden" name="display" value="1">
                <button class="w3view-cart" name="submit" value="">
                    <i class="fa fa-cart-arrow-down" aria-hidden="true">
                        <a href=""></a>
                    </i>
                </button>
            </form>
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
            <li><a href="index.html"><span class="glyphicon glyphicon-主页" aria-hidden="true"></span>主页</a></li>
            <li class="active">Products</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!--- products --->
<div class="products">
    <div id="cart" class="product_b" style="padding:0;background: #fff;">
        <table id="goods_table" class="shoplist margincenter">
            <tr class="trnone"></tr>
            <tr class="toptr">
                <td width="40">
                    <input type="checkbox" id="checkA" v-on:click="checkAll($event.currentTarget)"/><label for="checkA"></label>
                </td>
                <td width="100">全选</td>
                <td width="540">商品信息</td>
                <td width="100">单价</td>
                <td width="160">数量</td>
                <td width="100">小计</td>
                <td width="100">操作</td>
            </tr>
            <tr class="trnone"></tr>
            <tr v-for="(item,index) in list">
                <td>
                    <input type="checkbox" :id="'check'+index" name="checkboxs" v-model="checkeds[index]" />
                    <label :for="'check'+index"></label>
                </td>
                <td>
                    <img :src="'路径前缀/'+item.subimage1Filename" />
                </td>
                <td style="text-align:left;">
                    <p>{{item.spuName}}</p>
                    <p>规格：{{item.specifications}}</p>
                </td>
                <td>￥{{item.spuPrice}}</td>
                <td class="adddel">
                    <em v-on:click="minius(index)">-</em>
                    <input type="number" v-model.number="item.quantity" v-on:change="change(index)" />
                    <em v-on:click="add(index)">+</em>
                </td>
                <td>￥{{item.spuPrice * item.quantity}}</td>
                <td>
                    <button v-on:click="del(index)">删除</button>
                </td>
            </tr>
            <tr class="trbottom">
                <td colspan="2">已选（{{checkNum}}）</td>
                <td colspan="5">
                    <i>商品合计金额：</i>
                    <em>￥{{sum.toFixed(2)}}</em>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button v-on:click="end()">下单</button>
                </td>
            </tr>
        </table>
    </div>
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
    <script src="../../../static/js/vue.js"></script>
    <%--<script src="../../../static/js/goods/disp.js"></script>--%>
    <script>
        var cart; //Vue对象
        function createVue(list) {
            cart = new Vue({
                el: '#cart',
                data() {
                    return {
                        list: list,
                        checkeds: new Array(list.length)
                    }
                },
                computed: {
                    sum: function () {
                        let sum = 0;
                        for (let i in this.list) {
                            if (this.checkeds[i])
                                sum += this.list[i].spuPrice * this.list[i].quantity;
                        }
                        return sum;
                    },
                    checkNum: function () {
                        let num = 0;
                        for (let i in this.checkeds) {
                            if (this.checkeds[i]) {
                                num++;
                            }
                        }
                        return num;
                    }
                },
                methods: {
                    end : function () {
                        $.ajax({
                            data: {
                                list : this.checkeds
                            },
                            datatype : 'json',
                            url : ''
                        })
                    },
                    del: function (index) {
                        $.ajax({
                            data : {
                                index : index,
                                temp : list[index].shoppingId
                            },
                            datatype : 'json',
                            method : 'post',
                            url : '/ajax/del'
                        });
                        this.list.splice(index, 1);
                        this.checkeds.splice(index,1); //同时删除对应的选中状态标识
                    },
                    add: function (index) {
                        $.ajax({
                            data : {
                                index : index,
                                temp : list[index].shoppingId
                            },
                            datatype : 'json',
                            method : 'post',
                            url : '/ajax/add'
                        });
                        this.list[index].quantity++;
                    },
                    minius: function (index) {
                        $.ajax({
                            data : {
                                index : index,
                                temp : list[index].shoppingId
                            },
                            datatype : 'json',
                            method : 'post',
                            url : '/ajax/reduce'
                        });
                        if (this.list[index].quantity > 1) {
                            this.list[index].quantity--;
                        }
                    },
                    change: function (index) {
                        $.ajax({
                            data : {
                                index : index,
                                temp : list[index].shoppingId,
                                quan : list[index].quantity
                            },
                            datatype : 'json',
                            method : 'post',
                            url : '/ajax/change'
                        });
                    },
                    checkAll: function (event) {
                        if (event.checked) {
                            for (let i = 0; i < this.checkeds.length; i++) {
                                Vue.set(this.checkeds, i, true);
                            }
                        } else {
                            for (let i = 0; i < this.checkeds.length; i++) {
                                Vue.set(this.checkeds, i, false);
                            }
                        }
                    }
                }
            });
        }
        window.onload =	function () {
            let list = [
                <c:forEach items="${shoppingcateList}" var="sh">
                {
                    spuName : '${sh.goodsName}',
                    spuPrice : ${sh.price},
                    quantity : ${sh.quantity},
                    shoppingId : '${sh.shoppingId}'
                },
                </c:forEach>
            ];

            createVue(list);
        }
    </script>
</div>
</body>
</html>
