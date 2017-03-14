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
   <%-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">--%>
    <title>Examples</title>
<%--    <meta name="description" content="">
    <meta name="keywords" content="">--%>
    <script src="${ctx}/js/jquery-1.11.1.min.js" type="text/javascript" charset="utf-8"></script>
    <link href="${ctx}/css/iconfont/iconfont.css" rel="stylesheet">
    <link href="${ctx}/css/reset.css" rel="stylesheet">
    <link href="${ctx}/css/register.css" rel="stylesheet">
    <script  type="text/javascript" src="${ctx}/js/jquery1_9.js"></script>
    <script   type="text/javascript" src="${ctx}/js/register.js"></script>

   <%-- <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
--%>
    <%--<script   type="text/javascript" src="${ctx}/js/users.js"></script>--%>
    <script type="text/javascript" language="javascript">
        $(function(){

            $("#tname").blur(function(){

                $.ajax({
                    type:"post",
                    url:"user/checklogin",
                    data:$('#infor').serialize(),
                    dataType:"text",
                    beforeSend:function(){
                        $("#submit1").val("正在提交，请稍等...");
                    },
                    success:function(data){
                        //判断输入是否成功，成功则跳转
                        if("用户名可用!"==data){
                            $("#tn").addClass("tn");
                            $("#submit1").val("Login");

                        }else{
                            $("#tn").removeClass("tn").addClass("tnx");
                            $("#submit1").val("用户名不存");

                            return false;
                        }
                    }
                });
                $("#submit1").click(function(){
                    $.ajax({
                        type:"post",
                        url:"user/login",
                        data:$('#infor').serialize(),
                        dataType:"text",
                        success:function(data){

                            //判断输入是否成功，成功则跳转
                          if (data=="用户名可用!") {
                              window.location.href = "${ctx}/sellers/getSellersList";
                          }else{
                              $("#key").addClass("key");
                              $("#submit1").val("密码错误");
                              return false;
                          }
                        }

                    });

                })
            });

        });

    </script>

</head>
<body>
<div class="register">
    <div class="close"> </div>
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"> </div>
    <!-- 主标题logo开始 -->

    <div class="logo">
        <img src="images/logo.jpg" height="154" width="364" alt="">
    </div>

    <!-- 主标题logo结束 -->

    <!-- 账户密码验证码表单开始 -->

    <form  method="post" id="infor">

        <p id="tn">
            账户：<input type="text" id="tname" placeholder="用户名"  name="companyUphone"  style="padding-left:10px;">
            <span class="value1"></span>
        </p>
        <p class="password" id="key">
            密码：<input type="password" placeholder="密码" id="value2"  name="password"  id="password" style="padding-left:10px;">
            <span class="value2"></span>
        </p>
        <%--<p class="code phone">--%>
            <%--<!--验证码：<input type="text" id="value3">-->--%>
            <%--<!--<input type="button" value="获取验证码" id="security">-->--%>
            <%--<span class="value3"></span>--%>
        <%--</p>--%>
        <p class="sum">
            <input type="button" value="登录" id="submit1" name="登录">
        </p>
        <p>
            <input type="checkbox" id="protocol">
            <label for="protocol" class="accoun2">记住密码</label>
            <input type="checkbox" id="protocol1">
            <label for="protocol1" class="accoun2">保护账号</label>
        </p>
    </form>


    <!-- 账户密码验证码表单结束 -->

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
    $("#visit").click(function () {
        $.ajax({
            url:"user/visit"+'?id=0',
            type:"post",

            success:function (data) {
                window.location.href="${ctx}/user/visit1"
            }

        })
    })

</script>
</body>
</html>


