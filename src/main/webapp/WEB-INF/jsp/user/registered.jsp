<%@ page import="com.fff.entity.User" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2018/10/30
  Time: 15:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registered</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome icons -->
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <!-- //js -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/move-top.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/easing.js"></script>
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
            <%--<form action="#" method="post" class="last">
                <input type="hidden" name="cmd" value="_cart">
                <input type="hidden" name="display" value="1">--%>
            <a href="/goods/cate">
                <button class="w3view-cart" name="submit" value="">
                    <i class="fa fa-cart-arrow-down" aria-hidden="true">

                    </i>
                </button>
            </a>
            <%--</form>--%>
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
    <div  class="container">
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
            <li><a href="../"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">Register Page</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- register -->
<div class="register">
    <div id="aapp" class="container">
        <h2>Register Here</h2>
        <div class="login-form-grids">
            <form action="/user/adduser" method="post" v-on:v-on:click="sublime()">
                <input type="text" placeholder="昵称" required="required" name="userName" v-model="username" >
                <input type="text" placeholder="电话号码" required=" " name="userTel" v-model="usertel" v-on:change="change()">
                {{telcheck.errorText}}
                <input type="password" id="pass1" placeholder="密码" required=" " name="userPassword" v-model="password">
                {{passwordValidate.errorText}}
                <input type="password" id="pass2" placeholder="在输入一次密码" required=" " v-model="password1" >
                    {{passwordCheckValidate.errorText}}
                <input type="submit" value="Register" >
            </form>
        </div>
        <div class="register-home">
            <a href="/">Home</a>
        </div>
    </div>
</div>
<!-- //register -->
<!-- //footer -->
<div class="footer">
    <div class="footer-copy">

        <div class="container">
            <p>fsh© 10210416522 计算机1165</p>
        </div>
    </div>

</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/vue.js"></script>
<script type="text/javascript">

        var v = new Vue({
            el: '#aapp',
            data() {
                return{
                    password : '',
                    username : '',
                    usertel : '',
                    password1:'',
                    userexist : 2
                }
            },
            computed :{
                passwordValidate: function() {
                    var errorText;

                    if(!/^[0-9A-Za-z]{6,15}$/.test(this.password)) {
                        errorText = '密码至少6位，并且只能由数字和字母组成';
                    } else {
                        errorText = '';
                    }
                    if(!this.passwordFlag) {
                        errorText = '';
                        this.passwordFlag = true;
                    }
                    return {
                        errorText
                    }
                },
                passwordCheckValidate: function() {
                    var errorText = '';
                    if(!/^[0-9A-Za-z]{6,15}$/.test(this.password1)) {
                        errorText = '密码至少6位，并且只能由数字和字母组成';
                    }else if(this.password1 !== this.password ){
                        errorText = '两次密码不匹配';
                    }
                    else {
                        errorText = '';
                    }

                    if(!this.passwordFlag) {
                        errorText = '';
                        this.passwordFlag = true;
                    }
                    return {
                        errorText
                    }
                },
                telcheck : function () {
                    var errorText;
                    if(!/^[0-9]{11}$/.test(this.usertel)) {
                        errorText = '请输入正确的电话';
                    }else if(v.userexist === 1){
                        errorText = '用户已存在';
                    }
                    else{
                        errorText = '';
                    }
                    return{
                        errorText
                    }
                }

            },
            methods: {
                change : function change() {
                    $.ajax({
                        data: {
                            userTel : this.usertel
                        },
                        datatype : 'json',
                        url : '/user/change',
                        success: function (res) {
                            v.userexist = res.flag;
                        }
                    })    
                },
                sublime : function () {
                    $.ajax({
                        data: {
                            password : this.password,
                            username : this.username,
                            usertel : this.usertel,
                        },
                        datatype : 'json',
                        url : '/user/adduser',
                    })
                }
            }
        });

</script>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
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
<script src="${pageContext.request.contextPath}/static/js/minicart.min.js"></script>
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
<script src="${pageContext.request.contextPath}/static/js/skdslider.min.js"></script>
<link href="${pageContext.request.contextPath}/static/css/skdslider.css" rel="stylesheet">
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