<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户注册</title>
    <link type="text/css" rel="stylesheet" href="/statics/css/style.css"/>
    <script type="text/javascript" src="/statics/js/function.js"></script>
    <script type="text/javascript"src="/statics/js/jquery.min.js"></script>
    <script type="text/javascript" src="/statics/js/user.js"></script>
</head>
<body>
<div id="header" class="wrap">
</div>
<div id="regLogin" class="wrap">
    <div class="dialog">
        <dl class="clearfix">
            <dt>新用户注册</dt>
            <dd class="past">填写个人信息</dd>
        </dl>
        <div class="box">
            <form>
                <div class="infos">
                    <table class="field">
                        <tr>
                            <td class="field">用 户 名：</td>
                            <td><input type="text" class="text" name="unick" onblur="show()" id="tv_unick"/>
                                <span id="tv_span"></span></td>
                        </tr>
                        <tr>
                            <td class="field">密　　码：</td>
                            <td><input type="password" class="text" name="upwd" id="tv_upwd"/></td>
                        </tr>
                        <tr>
                            <td class="field">确认密码：</td>
                            <td><input type="password" class="text" name="repassword" id="tv_upwd1"/></td>
                        </tr>
                        <tr>
                            <td class="field">电　　话：</td>
                            <td><input type="text" class="text" name="tel" id="tv_tel"/></td>
                        </tr>
                        <tr>
                            <td class="field">用户姓名：</td>
                            <td><input type="text" class="text" name="uname" id="tv_uname"/></td>
                        </tr>
                    </table>
                    <div class="buttons"><input type="button" name="submit" value="立即注册" onclick="check()"/></div>
                    <%--另一种写法的区别：把type改成submit，后面的点击事件取消，提交时用<form  action="路径" onsubmit="return check()">
                    到js里面进行验证；如果是不通过验证则无法提交，这种提交就不是ajax提交，控制层可以直接获取对象；按照本方法写，必须是
                    按照json串的形式传一个对象--%>
                    <div class="buttons"><a href="toLogin">去登录</a></div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>

