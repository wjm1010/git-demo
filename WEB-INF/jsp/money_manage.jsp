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
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>人工交易-资金管理</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="${ctx}/css/iconfont/iconfont.css" rel="stylesheet">
<link href="${ctx}/css/reset.css" rel="stylesheet">
<link href="${ctx}/css/ArtificialTrading.css" rel="stylesheet">
<script src="${ctx}/js/jquery.js"></script>
<script src="${ctx}/js/distpicker.data.js"></script>
<script src="${ctx}/js/main.js"></script>
</head>
<body>
    <div class="brm">
    	<div class="brm-title">
    		银行资金账户信息
    	</div>
    	<div class="brm-content">

	    	<div class="clearfix">
	    		<ul class="fl">
		    		<li>企业名称：<span>广州腾飞信息技术有限公司</span></li>
		    		<li>企业类型：<span>股份制企业</span></li>
		    		<li>企业账户开户行：<span>中国公司银行</span></li>
		    		<li>
		    			<span class="distance">您的中国银联备付账户余额：<span class="price">2000</span>（万） RMB</span>
		    			<input type="button" value="资金划入">
		    			<input type="button" value="资金划出">
		    			<input type="button" value="资金明细">
		    		</li>
		    		<li>资金状态：<span class="price">划出1,000万, 待审核</span></li>
		    	</ul>
		    	<ul class="fl list">
		    		<li>企业法人代表：<span>张三</span></li>
		    		<li>账户账号：<span>1111111111111111</span></li>
		    		<li>企业账户开户行号：<span>1111111111111111</span></li>
		    	</ul>
	    	</div>

	    	<div class="audit">
	    		<p>
	    			<input type="button" value="审核不通过" id="NOPASS">
	    			<input type="button" value="审核通过" id="PASS">
	    		</p>
	    	</div>


	    	<!-- 审核不通过弹框 -->
	    	<div class="veto" id="veto">
	    		<p class="close" id="close">╳</p>
	    		<p>描述：<textarea></textarea></p>
	    		<p><input type="button" value="确定"></p>
	    	</div>
	    	<!-- 审核通过弹框 -->
	    	<div class="agree" id="agree">
	    		<p>再次确认</p>
	    		<p>是否确认审核通过</p>
	    		<p>
	    			<input type="button" value="取消" id="abolish">
	    			<input type="button" value="确定" id="determine">
	    		</p>
	    	</div>
    	</div>
    </div>
    <script>
    	//审核弹窗 
		var NOPASS=document.getElementById("NOPASS");
		var PASS=document.getElementById("PASS");
		var veto=document.getElementById("veto");
		var close=document.getElementById("close");
		var agree=document.getElementById("agree");
		var abolish=document.getElementById("abolish");
		var determine=document.getElementById("determine");
		veto.style.display="none";
		agree.style.display="none";
		veto.style.cursor="pointer";
		abolish.style.cursor="pointer";
		determine.style.cursor="pointer";
		NOPASS.onclick=function(){
			veto.style.display="block";
		}
		close.onclick=function(){
			veto.style.display="none";
		}
		PASS.onclick=function(){
			agree.style.display="block";
		}
		abolish.onclick=function(){
			agree.style.display="none";
		}
		determine.onclick=function(){
			agree.style.display="none";
		}

    </script>
</body>
</html>