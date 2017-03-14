<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@taglib uri="/struts-tags" prefix="s" %>--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../css/iconfont/iconfont.css">
    <link rel="stylesheet" href="../../css/index.css">
    <script src="../../js/tabCut.js"></script>
</head>
<body>
    <!-- 主体内容开始 -->
    <div class="operate_account">
        <div class="operate-title">
         <ul id="user-tab">
            <li class="user-mes active">
                <a href="javascript:;" _link="${ctx}/automatic_deal/sell_enquiry_made" class="title-tab ">询价方定制</a>
            </li>
            <li>
                <a href="javascript:;" _link="${ctx}/automatic_deal/sell_quote_made" class="title-tab">报价方定制</a>
            </li>
        </ul>    
    </div>
    <div class="content">
        <div class="iframe-content" id="iframe-content">
            <iframe id="account-iframe" src="${ctx}/automatic_deal/sell_enquiry_made" frameborder="0"></iframe>
      </div> 
  </div>

</div>
</div>
<!-- 主体内容结束 -->
</body>
</html>
