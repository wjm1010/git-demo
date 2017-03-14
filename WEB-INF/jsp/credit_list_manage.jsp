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
	<title>授信名单管理</title>
	<link rel="stylesheet" type="text/css" href="../../css/iconfont/iconfont.css">
	<link rel="stylesheet" href="../../css/index.css">
</head>
<body>
	<div class="credit-header">
		<h3>授信名单管理</h3>
	</div>
	<div class="uploading-area">
		<label for="">上传文件：</label>
		<div class="uploading-simulate">
			<input type="file">
			上传
		</div>
	</div>
	<div class="list-content">
		<table>
			<thead>
				<tr>
					<th>行号</th>
					<th>授信名单</th>
					<th>授信额度(万)</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>03259698</td>
					<td>广州银行</td>
					<td>3,000</td>
					<td>
						<span class="modify"><i class="iconfont icon-bianji"></i></span>
						<span class="trash"><i class="iconfont icon-shanchu"></i></span>

					</td>
				</tr>
				<tr>
					<td>03259698</td>
					<td>广州银行</td>
					<td>3,000</td>
					<td>
						<span class="modify"><i class="iconfont icon-bianji"></i></span>
						<span class="trash"><i class="iconfont icon-shanchu"></i></span>
					</td>
				</tr>
				<tr>
					<td>03259698</td>
					<td>广州银行</td>
					<td>3,000</td>
					<td>
						<span class="modify"><i class="iconfont icon-bianji"></i></span>
						<span class="trash"><i class="iconfont icon-shanchu"></i></span>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="paging-area">
		<input type="button" value="上一页">
		<span class="page-now">当前第<span class="page-num">2</span>页</span>
		<span class="page-total">共<span class="page-num">10</span>页</span>
		<input type="button" value="下一页">
	</div>
	<div class="check-area">
		<span class="check-situation">
			审核状态：<span class="check-mes">待审核</span>
		</span>
		<span class="check-unpass">
			审核不通过
		</span>
		<span class="check-pass">
			审核通过
		</span>
	</div>
</body>
</html>
