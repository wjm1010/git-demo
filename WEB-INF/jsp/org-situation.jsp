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
	<link rel="stylesheet" type="text/css" href="../../css/iconfont/iconfont.css">
	<link rel="stylesheet" href="../../css/index.css">
</head>
<body>
<div class="org-section">
<ul>
	<li class="org-name">
		<label for="">机构名称：</label>
		<input type="text">
	</li>
	<li class="org-introduce">
		<label for="">机构简介：</label>
		<textarea name="" id="" cols="30" rows="10"></textarea>
	</li>
	<li class="org-btn">
		<input type="button" value="恢复默认">
		<input type="button" value="确定">
	</li>
</ul>
</div>
</body>
</html>
