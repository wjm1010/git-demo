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
    <title>人工交易-交易记录-交易完成</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="${ctx}/css/iconfont/iconfont.css" rel="stylesheet">
    <link href="${ctx}/css/reset.css" rel="stylesheet">
    <link href="${ctx}/css/ArtificialTrading.css" rel="stylesheet">
    <script src="${ctx}/js/jquery.js"></script>
    <script src="${ctx}/js/distpicker.data.js"></script>
    <script src="${ctx}/js/main.js"></script>
    <!-- <script src="${ctx}/js/excel.js"></script> -->
</head>
<body>
<div class="artificial-content">
    <div class="main1">
        <div class="dealClose">
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
                            <div class="bill">
                                <p class="fl font2 l"> 交易类型：</p>
                                <div class="fl inbtn">
                                    <input type="button" value="询价买入" class="button">
                                    <input type="button" value="询价卖出" class="button">
                                    <input type="button" value="指定买入" class="button">
                                    <input type="button" value="指定卖出" class="button">
                                    <input type="button" value="报价买入" class="button">
                                    <input type="button" value="报价卖出" class="button">
                                    <input type="button" value="被指定买入" class="button">
                                    <input type="button" value="被指定卖出" class="button">
                                </div>
                            </div>
                        </div>
                        <div class="date clearfix">
                            <label for="" class="font2">交易日期：</label>
                            <input type="button" value="全部" class="all font2">
                            <input type="date" value="2017-1-10" class="time font2">
                            <i></i>
                            <input type="date" value="2017-1-10" class="time font2">
                            <input type="search" class="search">
                            <input type="button" onclick="method5('tableExcel')" value="导出excel表格" class="font2 excel">
                        </div>
                    </form>
                </div>
                <div class="Part-Two" id="myDiv">
                    <table id="tableExcel">
                        <thead>
                        <tr>
                            <th>产品编号</th>
                            <th>产品类型</th>
                            <th>交易类型</th>
                            <th>贴现率(%)</th>
                            <th>票据金额(万)</th>
                            <th>承兑人</th>
                            <th>票据期限(天)</th>
                            <th>票源地址</th>
                            <th>交易状态</th>
                            <th>备注</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="font3">1</td>
                            <td class="font3">银承纸票</td>
                            <td class="font3">询价买入</td>
                            <td class="font3">3.5</td>
                            <td class="font3">10000</td>
                            <td class="font3">股份制行</td>
                            <td class="font3">30</td>
                            <td class="font3">重庆</td>
                            <td class="font3">交易完成</td>
                            <td class="font3">交易完成</td>
                        </tr>
                        <tr>
                            <td class="font3">1</td>
                            <td class="font3">银承纸票</td>
                            <td class="font3">询价买入</td>
                            <td class="font3">3.5</td>
                            <td class="font3">10000</td>
                            <td class="font3">股份制行</td>
                            <td class="font3">30</td>
                            <td class="font3">重庆</td>
                            <td class="font3">交易完成</td>
                            <td class="font3">交易完成</td>
                        </tr>
                        <tr>
                            <td class="font3">1</td>
                            <td class="font3">银承纸票</td>
                            <td class="font3">询价买入</td>
                            <td class="font3">3.5</td>
                            <td class="font3">10000</td>
                            <td class="font3">股份制行</td>
                            <td class="font3">30</td>
                            <td class="font3">重庆</td>
                            <td class="font3">交易完成</td>
                            <td class="font3">交易完成</td>
                        </tr>
                        <tr>
                            <td class="font3">1</td>
                            <td class="font3">银承纸票</td>
                            <td class="font3">询价买入</td>
                            <td class="font3">3.5</td>
                            <td class="font3">10000</td>
                            <td class="font3">股份制行</td>
                            <td class="font3">30</td>
                            <td class="font3">重庆</td>
                            <td class="font3">交易完成</td>
                            <td class="font3">交易完成</td>
                        </tr>
                        <tr>
                            <td class="font3">1</td>
                            <td class="font3">银承纸票</td>
                            <td class="font3">询价买入</td>
                            <td class="font3">3.5</td>
                            <td class="font3">10000</td>
                            <td class="font3">股份制行</td>
                            <td class="font3">30</td>
                            <td class="font3">重庆</td>
                            <td class="font3">交易完成</td>
                            <td class="font3">交易完成</td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="paging-area">
                        <input type="button" value="上一页">
                        <span class="page-now">当前第<span class="page-num">2</span>页</span>
                        <span class="page-total">共<span class="page-num">10</span>页</span>
                        <input type="button" value="下一页">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>