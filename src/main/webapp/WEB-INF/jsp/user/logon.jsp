<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2018/10/30
  Time: 15:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="../../../static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../../static/css/index.css">

</head>
<body>
<div class="container">
    <div class="header">

    </div>

    <div class="main">
        <form class="form-horizontal" action="/user/adduser" method="post">
            <div class="form-group">
                <label for="inputTel" class="col-sm-2 control-label">电话</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputTel" name="userTel" required="required"
                           placeholder="tel">
                </div>
            </div>
            <div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">昵称</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputName" name="userName" required="required"
                           placeholder="name">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword1" class="col-sm-2 control-label">密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword1" name="userPassword"
                           required="required" placeholder="Password">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword2" class="col-sm-2 control-label">确认密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword2" name="password2" required="required"
                           placeholder="Password">
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail" class="col-sm-2 control-label">邮箱</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="inputEmail" name="userEmail" required="required"
                           placeholder="email">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">log on</button>
                </div>
            </div>
        </form>
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
