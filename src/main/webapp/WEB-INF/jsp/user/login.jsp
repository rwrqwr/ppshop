<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2018/10/29
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../../../static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../../static/css/index.css">
    <link rel="stylesheet" type="text/css" href="../../../static/css/user/login.css">
</head>
<body>
<div class="container">
    <div class="header">

    </div>

    <div class="main">
        <form class="form-horizontal" action="/user/checklogin" method="post">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">tel</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" name="tel" required="required" placeholder="tel">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3" name="password" required="required" placeholder="Password">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">log in</button>
                </div>
            </div>
        </form>
        <a href="/page/user/logon">zhuce</a>
    </div>

    <div class="footer">
        <hr>
        <address>
            <strong>Twitter, Inc.</strong><br>
            计算机1165 费晟豪 10210416522
            <abbr title="e-mail">E:</abbr> 595177332@qq.com
        </address>
    </div>
</div>

</body>
</html>
