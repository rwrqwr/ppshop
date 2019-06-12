<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2019/6/10
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--废弃页面，供参考-->
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>添加商品</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="../../static/admin/css/font.css">
    <link rel="stylesheet" href="../../static/admin/css/weadmin.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-body">
    <form class="layui-form">
        <div class="layui-form-item">
            <label for="L_username" class="layui-form-label">
                <span class="we-red">*</span>商品名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_username" name="goodsName"  autocomplete="off" class="layui-input">
            </div>

        </div>

        <div class="layui-form-item">
            <label for="L_phone" class="layui-form-label">
                <span class="we-red">*</span>单价
            </label>
            <div class="layui-input-inline">
                <input type="number" id="L_phone" name="price"  autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="L_pass" class="layui-form-label">
                <span class="we-red">*</span>厂商编号
            </label>
            <div class="layui-input-inline">
                <input type="number" id="L_pass" name="brandId" required="" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                6到16个字符
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
                <span class="we-red">*</span>商品类别编号
            </label>
            <div class="layui-input-inline">
                <input type="number" id="L_repass" name="categoryId" required="" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_des" class="layui-form-label">
                <span class="we-red">*</span>商品描述
            </label>
            <div class="layui-input-inline">
                <input type="number" id="L_des" name="description" required="" lay-verify="repass" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">

            <label class="layui-form-label">商品库存</label>
            <div class="layui-input-block">
                <input type="number" name="spuQuantity" lay-skin="switch" lay-text="管理员|普通用户">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
            </label>
            <button class="layui-btn" lay-filter="add" lay-submit="">增加</button>
        </div>
    </form>
</div>
<script type="text/javascript" src="../../static/js/jquery.min.js"></script>
<script src="../../static/admin/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="../../static/admin/js/admin.js"></script>
<script>

    layui.link('../../static/admin/lib/layui/css/layui.css');

    layui.use(['form', 'layer'], function() {
        $ = layui.jquery;
        var form = layui.form,
            layer = layui.layer;

        //自定义验证规则
        /*form.verify({
            nikename: function(value) {
                if(value.length < 5) {
                    return '昵称至少得5个字符啊';
                }
            },
            pass: [/(.+){6,12}$/, '密码必须6到12位'],
            repass: function(value) {
                if($('#L_pass').val() != $('#L_repass').val()) {
                    return '两次密码不一致';
                }
            }
        });*/

        //监听提交
        form.on('submit(add)', function(data) {
            var index = parent.layer.getFrameIndex(window.name);
            console.log(data.field);
            var f = data.field;
            //发异步，把数据提交给php
            $.ajax({
                url : '/admin/addGoodsImpl',
                data : {
                    goodsName : f.goodsName,
                    price : f.price,
                    brandId: f.brandId,
                    categoryId : f.categoryId,
                    description : f.description,
                    spuQuantity : f.spuQuantity


                }

            });
            layer.msg("增加成功", function() {

                //关闭当前frame

                parent.layer.close(index);

            });
            return false;

        });

    });
</script>
</body>

</html>