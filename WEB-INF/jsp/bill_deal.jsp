<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/iconfont/iconfont.css">
    <link rel="stylesheet" href="${ctx}/css/index.css">
    <script src="${ctx}/js/tabCut.js"></script>
</head>
<body>
    <!-- 主体内容开始 -->
    <div class="operate_account">
        <div class="operate-title">
         <ul id="user-tab">
            <li class="user-mes active">
                <a href="javascript:;" _link="${ctx}/transaction/enquiry_buy" class="title-tab ">询价买入</a>
            </li>
            <li>
                <a href="javascript:;" _link="${ctx}/transaction/enquiry_sell" class="title-tab">询价卖出</a>
            </li>
            <li>
                <a href="javascript:;" _link="${ctx}/transaction/assign_buy" class="title-tab">指定买入</a>
            </li>
            <li>
                <a href="javascript:;" _link="${ctx}/transaction/assign_sell" class="title-tab">指定卖出</a>
            </li>
        </ul>    
    </div>
    <div class="content">
        <div class="iframe-content" id="iframe-content">
            <iframe id="account-iframe" src="${ctx}/transaction/enquiry_buy" frameborder="0"></iframe>
      </div> 
  </div>

</div>
</div>
<!-- 主体内容结束 -->
</body>
</html>
