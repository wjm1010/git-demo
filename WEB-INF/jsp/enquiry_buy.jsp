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
<title>人工交易-票据交易-询价买入</title>
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
<div class="artificial-content clearfix">
	<div class="main1">	
		<div class="Inquirybuy off">
            <div class="clearfix">
                <div class="Part-One">
                    <form action="" style="font-size:0px">
                        <div class="clearfix producttype">
                            <div class="acceptor">
                                 <p class="fl font2 l"> 产品类型：</p>
                                <div class="fl inbtn">
                                   <input type="button" value="银承纸票" class="button">
                                   <input type="button" value="银承电票" class="button">
                                   <input type="button" value="商承纸票" class="button">
                                </div>
                                <p class="fl font2 l"> 承兑人类型：</p>
                                <div class="fl inbtn">
                                   <input type="button" value="政策银行" class="button">
                                   <input type="button" value="国有大行" class="button">
                                   <input type="button" value="股份制行" class="button">
                                   <input type="button" value="省级城商" class="button">
                                   <input type="button" value="省级农商" class="button">
                                   <input type="button" value="外资银行" class="button">
                                   <input type="button" value="地市城商" class="button">
                                   <input type="button" value="地市农商" class="button">
                                   <input type="button" value="村镇农信" class="button">
                                </div>
                            </div>
                        </div>
                        <div class="clearfix bill inbtn">
                            <p class="fl font2 l"> 票据期限：</p>
                            <input type="button" value="一月份" class="button">
                            <input type="button" value="二月份" class="button">
                            <input type="button" value="三月份" class="button">
                            <input type="button" value="四月份" class="button">
                            <input type="button" value="五月份" class="button">
                            <input type="button" value="六月份" class="button">
                        </div>
                        <div class="clearfix acceptor bearer">
                          <p class="fl font2 l"> 持票人类型：</p>
                          <div class="fl inbtn">
                             <input type="button" value="政策银行" class="button">
                             <input type="button" value="国有大行" class="button">
                             <input type="button" value="股份制行" class="button">
                             <input type="button" value="省级城商" class="button">
                             <input type="button" value="省级农商" class="button">
                             <input type="button" value="外资银行" class="button">
                             <input type="button" value="地市城商" class="button">
                             <input type="button" value="地市农商" class="button">
                             <input type="button" value="村镇农信" class="button">
                          </div>
                        </div>
                        <div class="clearfix price">
                          <p class="fl font2"><label>询价金额(万元)：</label><input type="text" class="box1"></p>
                          <div class="fl font2 l" style="margin:0 40px 0 80px"> 
                            <label class="address">票源地址：</label>
                            <div class="box1 district" style="width:160px">
                              <div id="show"></div>
                              <div class="info" style="display:none">
                                <div>
                                    <select id="s_province" class="ellipsis" name="s_province"></select>
                                    <select id="s_city" class="ellipsis" name="s_city"></select>
                                    <select id="s_county" class="ellipsis" name="s_county"></select>
                                </div>
                              </div>
                            </div>
                          </div>
                          <p class="fl font2"><label>贴现率(%)：</label><input type="text" value="0.00" class="box1"></p>
                        </div>
                        <div class="submit"><input type="submit" value="提交"></div>
                    </form>
                </div>
                <div class="Part-Two">
                  <p class="trend"><span class="font2">利率走势图</span>　　<span class="font7">实时报价：2.40%</span></p>
                </div>  
            </div> 
		</div>
	</div>
</div>
<script type="text/javascript">
    _init_area();
    document.getElementById('show').innerHTML="请选择地区";
    var showArea = function() {
        document.getElementById('show').innerHTML = "<p>" + document.getElementById('s_province').value  +
            document.getElementById('s_city').value  +
            document.getElementById('s_county').value + "</p>"
    }
    document.getElementById('s_county').setAttribute('onchange', 'showArea()');
</script>
</body>
</html>