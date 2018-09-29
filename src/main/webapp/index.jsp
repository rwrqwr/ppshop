<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2018/9/19
  Time: 22:31
  To change this template use File | Settings | File Templates.
  --%>
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <html>
  <head>
    <title>商城首页</title>
    <link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="static/css/index.css">
    <script src="static/js/jquery.min.js"></script>
    <script src="static/js/index.js"></script>
    <script src="static/js/unslider.min.js"></script>
  </head>
  <body>
    <div class="theader">
      <div class="header">
        <div class="img">
          <img src="static/imgs/shou.png">
        </div>
        <div class="searchbox">
          <div class="col-lg-6">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-default" type="button">Go!</button>
              </span>
            </div>
          </div>
        </div>
        <hr>
      </div>
    </div>
    <div class="tmain">
      <div class="topmain">

      </div>
      <div class="main">

        <div class="navi">
         <ul class="navi-d">
           <li >
             <a href="#" onmouseover="">猫</a>
           </li>
           <li>
             <a href="#">狗</a>
           </li>
           <li>
             <a href="#">宠物护理</a>
           </li>
           <li>
             <a href="#">宠物理发</a>
           </li>
           <li>
             <a href="#">宠物零食</a>
           </li>
           <li>
             <a href="#">宠物用品</a>
           </li>
         </ul>
        </div>
        <div class="slider">
          <div class="banner" id="b04">
            <ul>
              <li><img src="static/imgs/1.png" alt="" width="760" height="350" ></li>
              <li><img src="static/imgs/2.png" alt="" width="760" height="350" ></li>
              <li><img src="static/imgs/3.png" alt="" width="760" height="350" ></li>
              <li><img src="static/imgs/4.png" alt="" width="760" height="350" ></li>
            </ul>
            <a href="javascript:void(0);" class="unslider-arrow04 prev"><img class="arrow" id="al" src="static/imgs/arrowl.png" alt="prev" width="20" height="35"></a>
            <a href="javascript:void(0);" class="unslider-arrow04 next"><img class="arrow" id="ar" src="static/imgs/arrowr.png" alt="next" width="20" height="37"></a>
          </div>
        </div>
      </div>
    </div>
      <div class="footer">
        
      </div>
    </div>
  </body>
  </html>
