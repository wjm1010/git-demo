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
<div class="log-header">
	<span>
	<label for=""></label>
	<input type="text">
	</span>
	<span>
		<label for=""></label>
		<select name="" id="">
			<option value="">张三</option>
			<option value="">李四</option>
			<option value="">王五</option>
		</select>
	</span>
</div>
<div class="log-content">
	<table>
		<thead>
			<tr>
				<th>用户编号</th>
				<th>用户名</th>
				<th>登陆时间</th>
				<th>登出时间</th>
				<th>登陆IP</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>356145615</td>
				<td>张三</td>
				<td>2016/12/15/15:00:26</td>
				<td>2016/12/15/15:00:26</td>
				<td>192.168.0.1.1</td>
			</tr>
			<tr>
				<td>356145615</td>
				<td>张三</td>
				<td>2016/12/15/15:00:26</td>
				<td>2016/12/15/15:00:26</td>
				<td>192.168.0.1.1</td>
			</tr>
			<tr>
				<td>356145615</td>
				<td>张三</td>
				<td>2016/12/15/15:00:26</td>
				<td>2016/12/15/15:00:26</td>
				<td>192.168.0.1.1</td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>
