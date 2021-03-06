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
	<title>最新资讯</title>
	<link rel="stylesheet" type="text/css" href="../../css/iconfont/iconfont.css">
	<link rel="stylesheet" href="../../css/index.css">
	<script src="../../js/sidebarCut.js"></script>
</head>
<body>
	<!-- 头部导航开始 -->
	<header>




			<ul class=" header-left fl">
				<li><a href="${ctx}/main/getMain"><i
						class="iconfont icon-shouye_shouye"></i>首页</a></li>
				<li><a id="bill_market" href="${ctx}/sellers/getSellersList2"><i class="iconfont icon-d"></i>票据行情</a></li>
				<li><a href="${ctx}/transaction/artificial_deal"><i class="iconfont icon-jiaoyi"></i>人工交易</a></li>
				<li><a href="${ctx}/automatic_deal/automatic_deal"><i class="iconfont icon-shouye_shouye"></i>自动交易</a></li>
				<li><a href="${ctx}/rate_market/rate_market"><i class="iconfont icon-iconzhishubao01"></i>票据指数</a></li>
				<li><a href="${ctx}/bill_property/bill_property"><i class="iconfont icon-zichan"></i>票据资产</a></li>
				<li class="active"><a href="${ctx}/newest_mes/newest_mes"><i class="iconfont icon-news"></i>最新资讯</a></li>
				<li ><a href=${ctx}/power/toAM><i class="iconfont icon-zhanghu"></i>账户管理</a></li>
				<li><a href="${ctx}/mes_manage/mes_manage"><i class="iconfont icon-yonghu"></i>信息管理</a></li>


		</ul>
		<ul class=" header-right fr">
			<li class="cop-name">欢迎你,上海梵缇歌信息技术有限公司</li>
			<li class="setting" id="setting"><i class="iconfont icon-xitongshezhi"></i></li>
			<li class="infor" id="info"><i class="iconfont icon-xitongxiaoxi"></i><span>(5)</span></li>
			<li class="exit"><i class="iconfont icon-yonghu"></i>退出</li>
			<li class="register"><i></i>注册</li>
		</ul>
	</header>
				<div style="color:white">
						最新资讯暂时缺少页面
				<div>
</body>
</html>
