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
    <title>人工交易-票据发布-交易完成</title>
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
                        <div class="clearfix acceptor inbtn">
                            <p class="fl font2 l"> 承兑人类型：</p>
                            <input type="button" value="政策银行" class="button">
                            <input type="button" value="国有大行" class="button">
                            <input type="button" value="股份制行" class="button">
                            <input type="button" value="省级城商" class="button">
                            <input type="button" value="省级农商" class="button">
                            <input type="button" value="省级农商" class="button">
                            <input type="button" value="外资银行" class="button">
                            <input type="button" value="地市城商" class="button">
                            <input type="button" value="地市农商" class="button">
                            <input type="button" value="村镇农信" class="button">
                        </div>
                        <div class="clearfix bill inbtn">
                            <p class="fl font2 l"> 票据期限：</p>
                            <input type="button" value="一月份" class="button">
                            <input type="button" value="二月份" class="button">
                            <input type="button" value="三月份" class="button">
                            <input type="button" value="四月份" class="button">
                            <input type="button" value="五月份" class="button">
                            <input type="button" value="六月份" class="button">
                            <input type="button" value="挂历票" class="button">
                            <p class="fr font2 deadline"> 期限查询：<input type="text" class="box1" value="nn"></p>
                        </div>
                    </form>
                </div>
                <div class="Part-Two">
                    <table>
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>产品类型</th>
                            <th>交易类型</th>
                            <th>贴现率(%)</th>
                            <th>票据期限(天)</th>
                            <th>承兑人</th>
                            <th>票源地址</th>
                            <th>交易状态</th>
                        </tr>
                        </thead>
                        <tbody id="tbody" class="tbody">
                        <c:forEach items="${lists}" var="complete_deal">
                            <tr>
                                <td class="font3">${complete_deal.positiveNumber}</td>
                                <td class="font3">${complete_deal.positiveType}</td>
                                <td class="font4">${complete_deal.transactionType}</td>
                                <td class="font4">3</td>
                                <td class="font4">${complete_deal.positiveTime}</td>
                                <td class="font4">${complete_deal.acceptor}</td>
                                <td class="font3">${complete_deal.positiveAddress}</td>
                                <td class="font3 state0">${complete_deal.state}</td>

                            </tr>
                        </c:forEach>
                        <tr>
                            <td class="font3">1</td>
                            <td class="font3">银承纸票</td>
                            <td class="font3">询价买入</td>
                            <td class="font3">3.5</td>
                            <td class="font3">30</td>
                            <td class="font3">股份制行</td>
                            <td class="font3">北京</td>
                            <td class="font3">交易完成</td>
                        </tr>

                        </tbody>
                    </table>
                    <!-- 分页功能 start -->
                    <div id="page" align="center">
                        <span style="cursor:pointer;margin-right:10px;color: white;" id="first" class="button">首页</span>
                        <span style="cursor:pointer;margin-right:10px;color: white;" id="prev" class="button">上一页</span>
                        <span style="cursor:pointer;margin-right:10px;color: white;" id="next" class="button">下一页</span>
                        <span style="cursor:pointer;margin-right:10px;color: white;" id="last" class="button">尾页</span>
                    </div>
                    <!-- 分页功能 End -->
                    <%--计算页面参数 start--%>
                    <div id="count" class="count" align="center" style="height:30px;">
                        <span style="margin-right:10px;color: white;" id="pageCount">共多少页</span>
                        <span style="margin-right:10px;color: white;" id="pageNow">当前第几页</span>
                    </div>
                    <%--计算页面参数 end--%>
                    <%--<div class="paging-area">
                        <input type="button" value="上一页">
                        <input type="button" value="下一页">
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    window.onload = function () {

        //票据状态 状态(0.待交易1.交易中2.交易完成3.交易失败4.已删除)
        var st0 = document.getElementsByClassName('state0');
        for (var i = 0; i < st0.length; i++) {
            if (st0[i].innerHTML == 0) {
                st0[i].innerHTML = "待交易";
            }
            if (st0[i].innerHTML == 1) {
                st0[i].innerHTML = "交易中";
            }
            if (st0[i].innerHTML == 2) {
                st0[i].innerHTML = "交易完成";
            }
            if (st0[i].innerHTML == 3) {
                st0[i].innerHTML = "交易失败";
            }
            if (st0[i].innerHTML == 4) {
                st0[i].innerHTML = "已删除";
            }
        }
    }
</script>


<%--初始化--%>
<script type="text/javascript">
    ;
    (function ($) {
        var num = 8;//每页显示的个数
        var n = 0;
        var m = -num;
        var count = 0;//总页数
        var pageNow = 0;//记录当前页面
        function ajax(pageType) {
            var ohtml = "";
            var thtml = "";
            $.ajax({
                type: "POST",
                url: "${ctx}/transaction/getJSONByComplete_deal",
                dataType: "JSON",
                success: function (tranJSON) {
                    console.log("success");
                    console.log(tranJSON);
                    if (n < tranJSON.length && pageType == "next") { //上一页
                        n += num;
                        m += num;
                    } else if (m > 0 && pageType == "prev") { //下一页
                        n -= num;
                        m -= num;
                    } else if (pageType == "first") { //第一页
                        n = num;
                        m = 0;
                    } else if (pageType == "last") { //最后一页
                        n = tranJSON.length + (tranJSON.length % num) - 1;
                        m = tranJSON.length + (tranJSON.length % num) - 11;
                    }
                    /*判断页面总数*/
                    if (tranJSON.length % num == 0) {
                        count = parseInt(tranJSON.length / num);
                    } else {
                        count = parseInt((tranJSON.length / num) + 1);
                    }
                    /*计算当前页面*/
                    if (n % num == 0) {
                        pageNow = parseInt(n / num);
                    }
                    else {
                        pageNow = parseInt((n / num) + 1);
                    }
                    $.each(tranJSON, function (index, positive) {
                        if (index >= m && index < n) {
                            ohtml += "<tr style='cursor:pointer;' class='tr'  id=\'" + positive.positiveNumber + "\' onclick='getOne(id)'><td class='font3' name='positiveNumber'>" + positive.positiveNumber + "</td>"

                            if (positive.positiveType != null && positive.positiveType != "") {
                                ohtml += "<td class='font3'>" + positive.positiveType + "</td>"
                            } else {
                                ohtml += "<td class='font3'>-----</td>"
                            }
                            if (positive.transactionType != null && positive.transactionType != "") {
                                ohtml += "<td class='font3'>" + positive.transactionType + "</td>"
                            } else {
                                ohtml += "<td class='font3'>-----</td>"
                            }
                            ohtml += "<td class='font4'>3.1</td>" +
                                "<td class='font4'>" + positive.positiveTime + "</td>" +
                                "<td class='font3'>" + positive.acceptor + "</td>";

                            ohtml += "<td class='font3'>" + positive.positiveAddress + "</td><td class='font3 state3'>交易完成</td>" +
                                "  <td class='font3 specifics' onclick=''>详情</td></tr>";

                        }
                    });
                    thtml += " <span style='margin-right:10px;color: white;' id='pageCount' >共" + count + "页</span>" +
                        "<span style='margin-right:10px;color: white;' id='pageNow'>当前第" + pageNow + "页</span>" +
                        "<span style='margin-right:10px;color: white;' id='pageNow'>共" + tranJSON.length + "条记录</span>";
                    $(".tbody").html(ohtml);
                    $(".count").html(thtml);

                }
            });
        };
        $("#next").click(function () {
            ajax("next");
        });
        $("#prev").click(function () {
            ajax("prev");
        });
        $("#first").click(function () {
            ajax("first");
        });
        $("#last").click(function () {
            ajax("last");
        });
        $(function () { //初始化
            ajax("next");
        });
    }(jQuery));

</script>
</body>
</html>