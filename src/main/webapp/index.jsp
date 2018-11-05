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
    <script src="static/js/vue.min.js"></script>
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
      <div class="login">
        <a href="/page/user/login">degn</a>
      </div>
      <hr>
    </div>
  </div>
  <div class="tmain" id="rrapp">
    <div class="topmain">

    </div>
    <div class="main">
      <div class="menu">
        <div class="navi le">
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
        <div class="navi rig">
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
      </div>

      <div class="pat-eat">
        <i>
          <img src="static/imgs/mini/cate_5.png">
        </i>
        宠物主粮
        <div class="pat-eat-menu rig">
          <ul>
            <li>
              <span onmouseover="changeTab(0)">热销</span>
            </li>
            <li>
              <span onmouseover="changeTab(1)">进口</span>
            </li>
            <li style="border-right: 2px solid hsla(147, 45%, 32%, 0.48)">
              <span onmouseover="changeTab(2)">国产</span></li>
          </ul>
        </div>
        <div class="pat-border">
          <div class="le pat-borderleft">
            <a href="#"><img src="static/imgs/eat/e1.jpg"></a>
          </div>

          <!-- 热销 -->
          <div class="pat-borderin rig" v-show="showList == 0">
            <div class="le line">
              <!--左上 -->
              <a href="">
                <div class="pat-img-text">
                  狗粮1号
                </div>
                <img src="static/imgs/eat/e2.jpg">
              </a>
            </div>

            <div class="le line">
              <a href="#">
                <div class="pat-img-text">
                  狗粮2号
                </div>
                <img src="static/imgs/eat/e3.jpg">
              </a>
            </div>

            <div class="le line">
              <a href="">
                <div class="pat-img-text">
                  gouss
                </div>
                <img src="static/imgs/eat/e4.jpg">
              </a>

            </div>
            <div class="le line">
              <div class="le">
                <a href="">
                  <div class="pat-img-text">
                    美毛犬粮
                  </div>
                  <img src="static/imgs/eat/e5.jpg">
                </a>
              </div>
            </div>
            <div class="le line">
              <div class="le">
                <a href="">
                  <div class="pat-img-text">
                    鲜肉粮
                  </div>
                  <img src="static/imgs/eat/e6.jpg">
                </a>
              </div>
            </div>

            <div class="le line">
              <div class="le">
                <a href="">
                  <div class="pat-img-text">
                    优基
                  </div>
                  <img src="static/imgs/eat/e7.jpg">
                </a>
              </div>
            </div>
          </div>

          <!-- 进口 -->
          <div class="pat-borderin rig" v-show="showList == 1">
            <div class="eight-img">
              <ul>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/in/i1.jpg">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/in/i2.jpg">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/in/i4.jpg">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/in/i2.jpg">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/in/i3.jpg">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/in/i4.jpg">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/in/i1.jpg">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/in/i4.jpg">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
          </div>

          <!-- 国产 -->
          <div class="pat-borderin rig" v-show="showList == 2">
            <div class="eight-img">
              <ul>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/out/o1.png">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/out/o2.png">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/out/o3.png">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/out/o1.png">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/out/o4.png">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/out/o1.png">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/out/o2.png">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
                <li class="le">
                  <a href="">
                    <div class="eight-img-text">
                      <img src="static/imgs/eat/out/o3.png">
                      <div class="eight-img-intext">
                        312
                      </div>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="pat-pat">
        <i>
          <img src="static/imgs/mini/cate_54.png">
        </i>
        宠物
        <div class="pat-eat-menu rig">
          <ul>
            <li>
              <span onmouseover="changeTab1(0)">猫</span>
            </li>
            <li style="border-right: 2px solid hsla(147, 45%, 32%, 0.48)">
              <span onmouseover="changeTab1(1)">狗</span></li>
          </ul>
        </div>
        <div class="pat-menu">
          <ul>
            <li class="le" style="border-left: 1px solid #e7e7e7">
              <a href="">
                <div class="eight-img-text">
                  <img  src="static/imgs/pat/cat/c2.jpg">
                  <div class="five-img-intext">
                    布偶猫
                  </div>
                </div>
              </a>
            </li>
            <li class="le">
              <div>
                <a href="">
                  <div class="eight-img-text">
                    <img  src="static/imgs/pat/cat/c3.jpg">
                    <div class="five-img-intext">
                      挪威森林猫
                    </div>
                  </div>
                </a>
              </div>
            </li>
            <li class="le">
              <div>
                <a href="">
                  <div class="eight-img-text">
                    <img  src="static/imgs/pat/cat/c4.jpg">
                    <div class="five-img-intext">
                      短尾猫
                    </div>
                  </div>
                </a>
              </div>
            </li>
            <li class="le">
              <div>
                <a href="">
                  <div class="eight-img-text">
                    <img  src="static/imgs/pat/cat/c5.jpg">
                    <div class="five-img-intext">
                      波斯猫
                    </div>
                  </div>
                </a>
              </div>
            </li>
            <li class="le">
              <div>
                <a href="">
                  <div class="eight-img-text">
                    <img  src="static/imgs/pat/cat/c6.jpg">
                    <div class="five-img-intext">
                      折耳猫
                    </div>
                  </div>
                </a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>

  </div>
  <div class="footer">
    <hr>
    <address>
      <strong>Twitter, Inc.</strong><br>
      计算机1165 费晟豪 10210416522
      <abbr title="e-mail">E:</abbr>
    </address>
  </div>
  </div>
  <script src="static/js/index.js"></script>
  </body>
  </html>
