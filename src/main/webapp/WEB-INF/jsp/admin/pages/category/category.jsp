<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2019/6/9
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<!--frame传值后再添加新数据的实现方法尝试页面备份-->
<head>
    <meta charset="UTF-8">
    <title>商品列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="../../static/admin/css/font.css">
    <link rel="stylesheet" href="../../static/admin/css/weadmin.css">
    <script type="text/javascript" src="../../static/js/jquery.min.js"></script>
    <script src="../../static/admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../../static/admin/js/admin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-nav">
			<span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">会员管理</a>
        <a>
          <cite>会员列表</cite></a>
      </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="weadmin-body">
    <div class="demoTable">
        会员搜索：
        <div class="layui-inline">
            <input class="layui-input" name="name" id="reload" autocomplete="off">
        </div>
        <button class="layui-btn" data-type="reload"><i class="layui-icon">&#xe615;</i></button>
        <button class="layui-btn" onclick="WeAdminShow('添加类别','/admin/addCategory',900,600)"><i class="layui-icon"></i>添加</button>
    </div>
    <%--<div class="layui-row">
        会员搜索：
            <div class="layui-inline">
                <input type="text" id="reload" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input">
            </div>
            <button class="layui-btn" data-type="reload"><i class="layui-icon">&#xe615;</i></button>
    </div>--%>
    <div class="weadmin-block">
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
    </div>
    <table class="layui-table" id="tables" lay-filter="tables">

    </table>

</div>



<!--列表页增加form表单，接收add页面传过来的值，模拟后台提交与接收-->
<form class="layui-form" id="modalForm" style="display: none;">
    <div class="layui-form-item">
        <label for="L_username" class="layui-form-label">
            <span class="we-red">*</span>登录名
        </label>
        <div class="layui-input-inline">
            <input type="text" id="L_username" name="username" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label for="L_sex" class="layui-form-label">性别</label>
        <div class="layui-input-inline">
            <input type="text" id="L_sex" name="sex" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label for="L_email" class="layui-form-label">
            <span class="we-red">*</span>手机
        </label>
        <div class="layui-input-inline">
            <input type="text" id="L_phone" name="phone" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label for="L_email" class="layui-form-label">
            <span class="we-red">*</span>邮箱
        </label>
        <div class="layui-input-inline">
            <input type="text" id="L_email" name="email" lass="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label for="L_pass" class="layui-form-label">
            <span class="we-red">*</span>密码
        </label>
        <div class="layui-input-inline">
            <input type="password" id="L_pass" name="pass" class="layui-input">
        </div>
    </div>
</form>




<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="changepasswd">修改密码</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>



<script src="../../static/js/md5.js"></script>
<script>

    layui.link('../../static/admin/lib/layui/css/layui.css');


    layui.use('table', function(){
        var table = layui.table,
            form = layui.form;

        //第一个实例
        var tableIns = table.render({
            elem: '#tables'
            ,height: 500
            ,id : 'retable'
            ,url: '/admin/categoryList' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {type:'checkbox'}
                ,{field: 'id', title: 'ID', width:80, sort: true}
                ,{field: 'categoryName', title: '种类', width:250}
                ,{field: 'categoryEname', title: '种类Eng', width:150}
                ,{field: 'bigcateName', title: '大类名称', width:150}


            ]],
            where : {
                goodsName : ''
            },
            request: {
                pageName: 'curr' //页码的参数名称，默认：page
                ,limitName: 'nums' //每页数据量的参数名，默认：limit
            },
            done: function(res, curr, count) {
                console.log();
                console.log(res);
            }

        });

        table.on('tool(tables)', function(obj){
            var data = obj.data;
            console.log(obj);
            if(obj.event === 'del'){

                layer.confirm('已删除', function(index){

                    //alert(JSON.stringify(data.userId));
                    $.ajax({
                        url:'/admin/delGoods',
                        method : 'get',
                        data : {
                            spuNo : data.spuNo
                        },
                        success : function () {
                            obj.del();
                            layer.close(index);
                        }
                    })

                });
            }

        });

        //搜索 重新加载数据
        var $ = layui.$, active = {
            reload: function(){
                var demoReload = $('#reload');
                //执行重载
                table.reload('retable', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        goodsName : demoReload.val()
                    }
                }, 'data');
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });



    });








</script>
</body>

</html>