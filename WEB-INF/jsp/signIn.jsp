
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Examples</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="${ctx}/css/iconfont/iconfont.css" rel="stylesheet">
    <link href="${ctx}/css/reset.css" rel="stylesheet">
    <link href="${ctx}/css/register.css" rel="stylesheet">
    <script  type="text/javascript" src="${ctx}/js/jquery1_9.js"></script>
    <script src="${ctx}/js/register.js"></script>
<script type="text/javascript">

function hh(){
       var cName = $("#value4").val();
       var cUName = $("#value5").val();
       var pass = $("#value6").val();
       var passTwo = $("#value7").val();
       var Uphone = $("#value8").val();
       var strin = $("#value8").val();
       var rev=/^1\d{10}$/;
    if($('#aa').is(':checked')) {
    if(strin.match(rev)){
            var rec=/^\w+@[a-z0-9]+\.[a-z]+$/i;
            var stri=$('#value10').val();
            if (rec.test(stri)) {
                if(Uphone!=""){
                    if(pass == passTwo){
                        $.ajax({
                            type:"post",
                            url:"${ctx}/user/add",
                            data:$('#infor').serialize(),
                            datatype:"text",
                            success:function (data) {
                                if(data==="用户名可用"){
                                    window.location.href ="${ctx}/login.jsp";
                                    alert("注册成功")
                                }else{

                                    alert("该用户已被注册或企业名已存在");
                                    return false;
                                }
                            }
                        })}
                    else{
                        alert("账号密码不一致");
                        return false;
                    }
                }else {alert("手机号不能为空");return false;}

            }else{
                $('.value10').html('*请输入正确的邮箱');
            }
        }
        else{
            $('.value8').html('*请正确输入手机号');
        }
    }else {
        alert("请勾选同意协议条款")
    }
   }
  </script>
</head>
<body>
<!-- 开始 -->

<div class="login">

    <!-- 标题开始 -->

    <div class="login-tit">
        请填写注册信息
    </div>

    <!-- 标题结束 -->
    <center>${msg }</center>
    <!-- 表单验证开始 -->

    <form id="infor">
        <ul class="clearfix">
            <li>
                用户身份类型：
                <select name="uType">
                    <option value="1">非银行用户</option>
                    <option value="2">银行用户</option>
                </select>
            </li>
            <li>
                企业类型：
                <select name="companyType">
                    <option value="32">中央企业</option>
                    <option value="33">国营企业</option>
                    <option value="34">私营企业</option>
                    <option value="35">其它</option>
                </select>
            </li>
        </ul>
        <ul class="clearfix">
            <li>企业全称：
                <input type="text" name="companyName" id="value4">
                <span class="value4"></span>
            </li>
            <li>企业联系人姓名：
                <input type="text"  name="companyUname" id="value5">
                <span class="value5"></span>
            </li>
            <li>密码：
                <input type="password" name="password" id="value6">
                <span class="value6"></span>
            </li>
            <li>确认密码：<input type="password" name="confirm_password" id="value7">
                <span class="value7"></span>
            </li>
            <li>手机号：
                <input type="text" name="companyUphone" id="value8">
                <!--  <input type="button" value="获取验证码" id=""> -->
                <span class="value8"></span>
            </li>
            <!--<li>验证码：-->
            <!--<input type="text" id="value9">-->
            <!--<span class="value9">-->
            <!--</span>-->
            <!--</li>-->
            <li>邮箱：
                <input type="email" name="email" id="value10">
                <span class="value10"></span>
            </li>
            <!-- 同意协议条款开始 -->
            <li id="checked">
                <input type="checkbox" id="aa">
                <label for="aa" class="accoun2">同意协议条款</label>
            </li>

            <!-- 同意协议条款结束 -->

            <!-- 注册开始 -->

            <li class="sum"><input type="button" value="注册" id="submit2" onclick="hh()"></li>

        </ul>

        <!-- 注册开始 -->
    </form>

    <!-- 表单验证结束 -->
</div>
<!-- 结束 -->
<script>

    //去除点击选中阴影
    $(document).bind("selectstart", function () { return false; });
</script>
</body>
</html>
