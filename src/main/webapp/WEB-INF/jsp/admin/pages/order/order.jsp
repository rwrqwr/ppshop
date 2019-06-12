<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2019/6/11
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>订单列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="../../static/admin/css/font.css">
    <link rel="stylesheet" href="../../static/admin/css/weadmin.css">
    <script src="../../static/admin/lib/layui/layui.js" charset="utf-8"></script>
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
        <a href="">订单管理</a>
        <a><cite>订单列表</cite></a>
      </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="weadmin-body">

    <div class="layui-row">

            <div class="layui-inline">
                <input class="layui-input" placeholder="开始日" name="start" id="start">
            </div>
            <div class="layui-inline">
                <input class="layui-input" placeholder="截止日" name="end" id="end">
            </div>
            <div class="layui-form layui-form-pane layui-input-inline">
                <input value="" id="tempsta" hidden>
                <select name="contrller">
                    <option>支付状态</option>
                    <option>已支付</option>
                    <option>未支付</option>
                </select>
            </div>
            <div class="layui-inline">
                <input type="text" name="username" placeholder="请输入订单号" autocomplete="off" class="layui-input">
            </div>
            <button class="layui-btn" data-type="reload"><i class="layui-icon">&#xe615;</i></button>

    </div>

    <div class="weadmin-block">
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="WeAdminShow('添加订单','/admin/addOrder')"><i class="layui-icon"></i>添加
        </button>

    </div>
    <table class="layui-table" id="tables" lay-filter="tables">
    </table>


</div>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script src="../../static/admin/js/util/data-format.js"></script>
<script id="time" type="text/html">
    {{#
    var date = new Date();
    date.setTime(d.finalTime);
    return date.Format("yyyy-MM-dd hh:mm:ss");
    }}
</script>
<script id="ispay" type="text/html">
    {{#
    if(d.status === 1)
    return "已支付";
    else
    return "未支付";
    return;
    }}
</script>

<script>

    layui.link('../../static/admin/lib/layui/css/layui.css');


    layui.extend({
        admin: '{/}../../static/admin/js/admin'
    });
    layui.use(['laydate', 'jquery', 'admin', 'table', 'form'], function () {
        var laydate = layui.laydate,
            form = layui.form,
            table = layui.table,
            admin = layui.admin;
        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });
        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
        var tableIns = table.render({
            elem: '#tables'
            , height: 500
            , id: 'retable'
            , url: '/admin/orderlist' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                {type: 'checkbox'}
                , {field: 'orderId', title: 'ID', width: 80, sort: true}
                , {field: 'userId', title: '用户编号', width: 200}
                , {field: 'goodsName', title: '商品名称', width: 400}
                , {field: 'price', title: '商品单价', width: 150}
                , {field: 'quantity', title: '商品数量', width: 150}
                , {field: 'finalTime', title: '支付时间', templet: '#time'}
                , {field: 'status', title: '支付状态', templet: '#ispay'}
                , {fixed: 'right', width: 280, align: 'center', toolbar: '#barDemo'}

            ]],
            where: {
                startTime: '',
                endTime: '',
                status: ''
            },
            request: {
                pageName: 'curr' //页码的参数名称，默认：page
                , limitName: 'nums' //每页数据量的参数名，默认：limit
            }

        });
        var tempsta = '';
        form.on('select', function (data) {
           tempsta = data.value;
           console.log(data.value);
        });

        var $ = layui.$, active = {
            reload: function () {
                //执行重载
                table.reload('retable', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                        startTime: $('#start').val(),
                        endTime: $('#end').val(),
                        status: tempsta,
                    }
                }, 'data');
            }
        };

        $('.layui-row .layui-btn').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });


</script>
</body>

</html>