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
<title>人工交易-票据交易-指定卖出</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="${ctx}/css/iconfont/iconfont.css" rel="stylesheet">
<link href="${ctx}/css/reset.css" rel="stylesheet">
<link href="${ctx}/css/ArtificialTrading.css" rel="stylesheet">
<script src="${ctx}/js/jquery.js"></script>
<script src="${ctx}/js/main.js"></script>
</head>
<body>
<div class="artificial-content clearfix">
	<div class="main1">	
		 <div class="specifiedsell">
            <div class="clearfix">
                <div class="Part-One">
                    <form action="" style="font-size:0px">
                        <div class="clearfix producttype">
                            <p class="fl font2 l"> 产品类型：</p>
                            <div class="fl inbtn">
                               <input type="button" value="银承纸票" class="button">
                               <input type="button" value="银承电票" class="button">
                               <input type="button" value="商承纸票" class="button">
                            </div>
                            <div class="acceptor">
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
                            <input type="button" value="一月份" class="button fl">
                            <input type="button" value="二月份" class="button fl">
                            <input type="button" value="三月份" class="button fl">
                            <input type="button" value="四月份" class="button fl">
                            <input type="button" value="五月份" class="button fl">
                            <input type="button" value="六月份" class="button fl">
                            <input type="button" value="挂历票" class="button fl">
                            <p class="fl font2"><label>指定交易对手：</label><input type="text" class="box1"></p>
                        </div>
                       
                    </form>
                </div>
                <div class="Part-Two">
                  <div class="choose clearfix">
                    <p class="fl"><span class="number">1</span><span class="font3">　挑选票据</span></p>
                    <p class="border fl"></p>
                    <p class="fl"><span class="number">2</span><span class="font3">　报价</span></p>
                    <p class="border fl"></p>
                    <p class="fl"><span class="number">3</span><span class="font3">　确定报价</span></p>
                  </div>
                  <div class="table">
                    <table>
                      <thead>
                        <tr>
                          <th>选择打包</th>
                          <th>票号</th>
                          <th>票据类型</th>
                          <th>承兑人类型</th>
                          <th>贴现率(%)</th>
                          <th>金额(万)</th>
                          <th>开票日期</th>
                          <th>票据天数(天)</th>
                          <th>剩余期限(天)</th>
                          <th>票源地址</th>
                          <th>交易状态</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="font3">A0001</td>
                          <td class="font3">银承纸票</td>
                          <td class="font3">国股大行</td>
                          <td class="font3">3.5</td>
                          <td class="font3">1000</td>
                          
                          <td class="font3">2016-09-20</td> 
                          <td class="font3">30</td> 
                          <td class="font3">3</td> 
                          <td class="font3">深圳</td> 
                          <td class="font3">待交易</td> 
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="font3">A0001</td>
                          <td class="font3">银承纸票</td>
                          <td class="font3">国股大行</td>
                          <td class="font3">3.5</td>
                          <td class="font3">1000</td>
                          
                          <td class="font3">2016-09-20</td> 
                          <td class="font3">30</td> 
                          <td class="font3">3</td> 
                          <td class="font3">深圳</td> 
                          <td class="font3">待交易</td> 
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="font3">A0001</td>
                          <td class="font3">银承纸票</td>
                          <td class="font3">国股大行</td>
                          <td class="font3">3.5</td>
                          <td class="font3">1000</td>
                          
                          <td class="font3">2016-09-20</td>
                          <td class="font3">30</td>
                          <td class="font3">3</td>
                          <td class="font3">深圳</td>
                          <td class="font3">待交易</td>
                        </tr>
                        <tr>
                        <td><input type="checkbox"></td>
                        <td class="font3">A0001</td>
                        <td class="font3">银承纸票</td>
                        <td class="font3">国股大行</td>
                        <td class="font3">3.5</td>
                        <td class="font3">1000</td>
                        <td class="font3">2016-09-20</td>  
                        <td class="font3">30</td>  
                        <td class="font3">3</td>  
                        <td class="font3">深圳</td>  
                        <td class="font3">待交易</td>  
                      </tr>
                      <tr>
                        <td><input type="checkbox"></td>
                        <td class="font3">A0001</td>
                        <td class="font3">银承纸票</td>
                        <td class="font3">国股大行</td>
                        <td class="font3">3.5</td>
                        <td class="font3">1000</td> 
                        <td class="font3">2016-09-20</td>  
                        <td class="font3">30</td>  
                        <td class="font3">3</td>  
                        <td class="font3">深圳</td>  
                        <td class="font3">待交易</td>  
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
                  <div class="price">
                    <input type="submit" value="报价">
                  </div>
                </div>  
            </div> 
        </div>
	</div>
</div>
</body>
</html>