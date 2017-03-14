<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>


<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Examples</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="${ctx}/css/iconfont/iconfont.css" rel="stylesheet">
    <link href="${ctx}/css/reset.css" rel="stylesheet">
    <link href="${ctx}/css/register.css" rel="stylesheet">
    <script  type="text/javascript" src="${ctx}/js/jquery1_9.js"></script>
    <script   type="text/javascript" src="${ctx}/js/register.js"></script>

</head>
<body>
<div class="register">

    <!-- 主标题logo开始 -->

    <div class="logo">
        <img src="images/logo.jpg" height="154" width="364" alt="">
    </div>

    <!-- 主标题logo结束 -->

    <!-- 账户密码验证码表单开始 -->

    <form action="user/login"   method="post" id="infor">
        <p>账户：
            <input type="text" placeholder="用户名"  name="companyUname"  id="value1" ><span class="value1"></span></p>
        <p class="password">密码：
            <input type="password" placeholder="密码"  name="password"  id="value2"  ><span class="value2"></span></p>
        <center>${msg }</center>
        <p class="sum">

            <input type="submit" value="登录" name="登录" id="submit1"/></p>
     <%--<p class="code phone">验证码：<input type="text" id="value3"><input type="button" value="获取验证码" id="security"><span class="value3"></span></p>--%>
    </form>
    <!-- 账户密码验证码表单结束 -->

    <!-- 登录开始 -->



    <!-- 登录结束 -->

    <!-- 记住密码保护账号开始 -->

    <div id="choose" class="clearfix">
        <p class="account protocol fl"><a class="a"></a><i class="iconfont">&#xe617</i><span class="accoun">记住密码</span></p>
        <p class="account1 protocol fl"><a class="a1"></a><i class="iconfont">&#xe617</i><span class="accoun1">保护账号</span></p>
    </div>

    <!-- 记住密码保护账号结束 -->

    <!-- 底部按钮开始 -->

  <%--  <a href="<%=basePath%>user/tosignIn"></a></h5>--%>
    <div id="condition">
        <input type="button" value="游客访问"  class="nor" id="visit">
        <a href="<%=basePath%>user/tosignIn"><input type="button" value="注册账号"  class="nor" id=""></a>
        <input type="button" value="忘记密码"  class="nor" id="forget">
        <input type="button" value="使用指南" id="guide">

    </div>

    <!-- 底部按钮开始结束 -->
</div>
<!-- 结束 -->

<script>

    // 去除点击阴影

    $(document).bind("selectstart", function () { return false; });

</script>
</body>
</html>


