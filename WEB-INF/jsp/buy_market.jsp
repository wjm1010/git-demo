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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>买方市场</title>
    <link rel="stylesheet" href="../../css/iconfont/iconfont.css">
    <link rel="stylesheet" href="../../css/reset.css">
    <link rel="stylesheet" href="../../css/PaperMarket.css">
    <script type="text/javascript" src='../../js/jquery.js'></script>
    <script type="text/javascript" src='../../js/distpicker.data.js'></script>
    <script type="text/javascript" src='../../js/main.js'></script>
    <style>
        .btn{
            padding: 5px;
            margin: 5px;
            width: 110px;
            height: 36px;
            background-color: #3179b1;
            border-radius: 3px;
            color: #ffffdc;
        }
        .total-page{
            display: inline-block;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="buy-content">
    <div class="main1 fl">
        <div class="market font1">买方市场</div>
        <div class="clearfix">
            <div class="left-con fl">
                <div class="Part-One">
                    <div class="clearfix producttype">
                        <p class="fl font2 l"> 产品类型：</p>
                        <div class="fl inbtn" style="font-size:0">
                            <c:forEach items="${dictionaries}" var="dforpositive">
                                <input type="button" value="${dforpositive.dictname}"
                                       name="positiveType" class="button" id="'${dforpositive.id}'"
                                       onclick="getPositiveTypeCount('${dforpositive.id}')">
                            </c:forEach>
                        </div>
                        <p class="fl amount font2">
                            票据金额：<input type="text" class="box1" id="positiveStartMoney">
                            <i></i>
                            <input type="text" class="box1" id="positiveEndMoney">
                        </p>
                        <p class="fl font2">询价方：<input type="text" class="box1" id="inquiryPerson"></p>
                    </div>
                    <div class="clearfix acceptor">
                        <p class="fl font2 l"> 承兑人类型：</p>
                        <div class="fl inbtn" style="font-size:0">
                            <c:forEach items="${dictList}" var="d">
                                <input type="button" value="${d.dictname}" class="button" name="acceptorType"
                                       id="'${d.id}'" onclick="getAcceptorType('${d.id}')">
                            </c:forEach>
                        </div>
                    </div>
                    <div class="clearfix bill">
                        <p class="fl font2 l"> 票据期限：</p>
                        <div class="fl inbtn" style="font-size:0">
                            <input type="button" value="一月期" class="button" onclick="getDeadLine(1)">
                            <input type="button" value="二月期" class="button" onclick="getDeadLine(2)">
                            <input type="button" value="三月期" class="button" onclick="getDeadLine(3)">
                            <input type="button" value="四月期" class="button" onclick="getDeadLine(4)">
                            <input type="button" value="五月期" class="button" onclick="getDeadLine(5)">
                            <input type="button" value="六月期" class="button" onclick="getDeadLine(6)">
                        </div>
                        <p class="fl font2 l" style="margin-left:43px"> 票源地址：</p>
                        <input type="text" id="address" class="box1">
                        <%--   <div class="box1 district" style="width:160px">
                               <div id="show"></div>
                               <div class="info" style="display:none">
                                   <div>
                                       <select id="s_province" class="ellipsis" name="s_province"></select>
                                       <select id="s_city" class="ellipsis" name="s_city"></select>
                                       <select id="s_county" class="ellipsis" name="s_county"></select>
                                   </div>
                               </div>
                           </div>--%>
                    </div>
                    <input type="button" class="button" id="select" value="查询">
                </div>
                <div class="Part-Two">
                    <table>
                        <thead>
                        <tr>
                            <th>产品编号</th>
                            <th>产品类型</th>
                            <th>询价方</th>
                            <th>贴现率(%)</th>
                            <th>涨跌幅(bp)</th>
                            <th>票据金额</th>
                            <th>票据期限</th>
                            <th>承兑人</th>
                            <th>权属人</th>
                            <th>票源地址</th>
                        </tr>
                        </thead>
                        <tbody class="tbody" id="tbody">

                        </tbody>
                    </table>
                    <!-- 分页功能 start -->
                    <div id="page" align="center"style="margin-top: 20px;">
                        <span style="cursor:pointer;margin-right:10px;color: white;" id="first" class="btn">首页</span>
                        <span style="cursor:pointer;margin-right:10px;color: white;" id="prev" class="btn">上一页</span>
                        <span style="cursor:pointer;margin-right:10px;color: white;" id="next" class="btn">下一页</span>
                        <span style="cursor:pointer;margin-right:10px;color: white;" id="last" class="btn">尾页</span>
                    </div>
                    <!-- 分页功能 End -->
                    <%--计算页面参数 start--%>
                    <div id="count" class="count" align="center" style="height:30px;margin-top: 20px;">
                        <span style="margin-right:10px;color: white;" id="pageCount"class="total-page">共多少页</span>
                        <span style="margin-right:10px;color: white;" id="pageNow"class="total-page">当前第几页</span>
                    </div>
                    <%--计算页面参数 end--%>

                </div>
            </div>
            <div class="right-con fr">
                <div class="Chart clearfix">
                    <p class="fl font2" style="margin-left:8px">走势图</p>
                    <div class="inbtn fr" style="font-size:0">
                        <input type="button" value="日线" class="button" style="color: white">
                        <input type="button" value="周线" class="button">
                        <input type="button" value="月线" class="button">
                        <input type="button" value="年线" class="button">
                    </div>
                </div>
                <div class="figure">
                    <img src="../../images/pt.jpg" alt="">
                </div>
                <div class="it-information">
                    <p><span class="font2">询价方</span><span class="font2">金额(万)</span><span
                            class="font2">贴现率(%)</span><span class="font2">期限(天)</span></p>
                    <p id="p_001"><span class="font2">XX公司</span><span class="font2">1000</span><span
                            class="font2">3.61</span><span class="font2">30</span></p>
                </div>
                <div class="it1-information">
                    <p><span class="font2 discount">贴现率</span><span class="font2 maker">报价方</span></p>
                    <p class="quote"><span class="font2">报价1</span><span class="font7 rate">3.50</span><span
                            class="font2">匿名</span></p>
                    <p><span class="font2">报价2</span><span class="font7 rate1">3.61</span class="font2"><span
                            class="font2">广州大观园有限公司</span></p>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    _init_area();
    document.getElementById('show').innerHTML = "请选择地区";
    var showArea = function () {
        document.getElementById('show').innerHTML = "<p>" + document.getElementById('s_province').value +
            document.getElementById('s_city').value +
            document.getElementById('s_county').value + "</p>"
    }
    document.getElementById('s_county').setAttribute('onchange', 'showArea()');


</script>
</body>

<%--两个ajax方法--%>
<%--点击查询--%>
<script type="text/javascript">
    var posiType, acceType, deadLine;
    function getPositiveTypeCount(id) {
        posiType = id;
    }
    function getAcceptorType(id) {
        acceType = id;
    }
    function getDeadLine(id) {
        deadLine = id;
    }
    $("#select").click(function () {
        var positiveStartMoney = $("#positiveStartMoney").val();
        var positiveEndMoney = $("#positiveEndMoney").val();
        var inquiryPerson = $("#inquiryPerson").val();
        var address = $("#address").val();
        var num = 8;//每页显示的个数
        var n = 0;
        var count = 0;
        var m = -num;
        var pageNow = 0;
        console.log("positiveType:" + posiType + "/acceptorType:" + acceType + "/deadLine:" + deadLine + "/positiveStartMoney:" + positiveStartMoney + "/positiveEndMoney:" + "/inquiryPerson:" + inquiryPerson +
            "/positiveAddress:"+ address);
        function ajax(pageType) {
            var bothState = 0;
            var ohtml = "";
            var thtml = "";
            $.ajax({
                type: "GET",
                url: "${ctx}/positive/getJSONBySell",
                data: {
                    "bothState": bothState,
                    "posiType": posiType,
                    "acceType": acceType,
                    "deadLine": deadLine,
                    "positiveStartMoney": positiveStartMoney,
                    "positiveEndMoney": positiveEndMoney,
                    "inquiryPerson": inquiryPerson,
                    "address": address

                },
                dataType: "JSON",
                success: function (buyJSON) {

                    if (n < buyJSON.length && pageType == "next") { //上一页
                        n += num;
                        m += num;
                    } else if (m > 0 && pageType == "prev") { //下一页
                        n -= num;
                        m -= num;
                    } else if (pageType == "first") { //第一页
                        n = num;
                        m = 0;
                    } else if (pageType == "last") { //最后一页
                        n = buyJSON.length + (buyJSON.length % num) - 1;
                        m = buyJSON.length + (buyJSON.length % num) - 11;
                    }
                    /*判断页面总数*/
                    if (buyJSON.length % num == 0) {
                        count = parseInt(buyJSON.length / num);
                    } else {
                        count = parseInt((buyJSON.length / num) + 1);
                    }
                    /*计算当前页面*/
                    if (n % num == 0) {
                        pageNow = parseInt(n / num);
                    }
                    else {
                        pageNow = parseInt((n / num) + 1);
                    }
                    $.each(buyJSON, function (index, positive) {
                        if (index >= m && index < n) {
                            ohtml += "<tr style='cursor:pointer;'  class='tr'  id=\'"+positive.positiveNumber+"\' onclick='getOne(id)'><td class='font3' name='positiveNumber'>" + positive.positiveNumber + "</td>"

                            if (positive.positiveType != null && positive.positiveType != "") {
                                ohtml += "<td class='font3'>" + positive.positiveType + "</td>"
                            } else {
                                ohtml += "<td class='font3'>-----</td>"
                            }
                            if (positive.inquiryPerson != null && positive.inquiryPerson != "") {
                                ohtml += "<td class='font3'>" + positive.inquiryPerson + "</td>"
                            } else {
                                ohtml += "<td class='font3'>-----</td>"
                            }
                            ohtml += "<td class='font4'>3.1</td>" +
                                "<td class='font4'>bp</td>" +
                                "<td class='font4'>" + positive.positiveMoney + "</td>" +
                                "<td class='font4'>" + positive.deadLine + "</td>" +
                                "<td class='font3'>" + positive.acceptor + "</td>"
                            if (positive.ticketPerson != null && positive.ticketPerson != "") {
                                ohtml += "<td class='font3'>" + positive.ticketPerson + "</td>"
                            } else {
                                ohtml += "<td class='font3'>-----</td>"
                            }
                            ohtml += "<td class='font3'>" + positive.positiveAddress + "</td></tr>";

                        }
                    });
                    thtml += " <span style='margin-right:10px;color: white;' id='pageCount' >共" + count + "页</span>" +
                        "<span style='margin-right:10px;color: white;' id='pageNow'>当前第" + pageNow + "页</span>" +
                        "<span style='margin-right:10px;color: white;' id='pageNow'>共" + buyJSON.length + "条记录</span>";
                    $(".count").html(thtml);

                    $(".tbody").html(ohtml);

                }
            })
        }

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
    })
</script>

<%--页面初始值--%>
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
            var bothState = 0;
            $.ajax({
                type: "POST",
                url: "${ctx}/positive/getJSONBySell",
                dataType: "JSON",
                data: {
                    "bothState": bothState
                },
                success: function (buyJSON) {
                    if (n < buyJSON.length && pageType == "next") { //上一页
                        n += num;
                        m += num;
                    } else if (m > 0 && pageType == "prev") { //下一页
                        n -= num;
                        m -= num;
                    } else if (pageType == "first") { //第一页
                        n = num;
                        m = 0;
                    } else if (pageType == "last") { //最后一页
                        n = buyJSON.length + (buyJSON.length % num) - 1;
                        m = buyJSON.length + (buyJSON.length % num) - 11;
                    }
                    /*判断页面总数*/
                    if (buyJSON.length % num == 0) {
                        count = parseInt(buyJSON.length / num);
                    } else {
                        count = parseInt((buyJSON.length / num) + 1);
                    }
                    /*计算当前页面*/
                    if (n % num == 0) {
                        pageNow = parseInt(n / num);
                    }
                    else {
                        pageNow = parseInt((n / num) + 1);
                    }
                    $.each(buyJSON, function (index, positive) {
                        if (index >= m && index < n) {
                            ohtml += "<tr style='cursor:pointer;'  class='tr'  id=\'"+positive.positiveNumber+"\' onclick='getOne(id)'><td class='font3' name='positiveNumber'>" + positive.positiveNumber + "</td>"

                            if (positive.positiveType != null && positive.positiveType != "") {
                                ohtml += "<td class='font3'>" + positive.positiveType + "</td>"
                            } else {
                                ohtml += "<td class='font3'>-----</td>"
                            }
                            if (positive.inquiryPerson != null && positive.inquiryPerson != "") {
                                ohtml += "<td class='font3'>" + positive.inquiryPerson + "</td>"
                            } else {
                                ohtml += "<td class='font3'>-----</td>"
                            }
                            ohtml += "<td class='font4'>3.1</td>" +
                                "<td class='font4'>bp</td>" +
                                "<td class='font4'>" + positive.positiveMoney + "</td>" +
                                "<td class='font4'>" + positive.deadLine + "</td>" +
                                "<td class='font3'>" + positive.acceptor + "</td>"
                            if (positive.ticketPerson != null && positive.ticketPerson != "") {
                                ohtml += "<td class='font3'>" + positive.ticketPerson + "</td>"
                            } else {
                                ohtml += "<td class='font3'>-----</td>"
                            }
                            ohtml += "<td class='font3'>" + positive.positiveAddress + "</td></tr>";
                        }
                    });
                    thtml += " <span style='margin-right:10px;color: white;' id='pageCount' >共" + count + "页</span>" +
                        "<span style='margin-right:10px;color: white;' id='pageNow'>当前第" + pageNow + "页</span>" +
                        "<span style='margin-right:10px;color: white;' id='pageNow'>共" + buyJSON.length + "条记录</span>";
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
<script type="text/javascript">
    function getOne(id) {
        var positiveNumber=id;
        $.ajax({
            type:"GET",
            url:"${ctx}/positive/getJSONForOne",
            data:{
                "positiveNumber":positiveNumber,
            },
            dataType:"JSON",
            success:function (positiveJson) {
                var dhtml="";
                dhtml+=" <p><span class='font2'>"+positiveJson.inquiryPerson+"</span><span class='font2'>"+positiveJson.positiveMoney+"</span><span class='font2'>3.1</span><span class='font2'>"+positiveJson.surplus+"天</span></p>"

                $("#p_001").html(dhtml)
            }
        })
    }

</script>
</html>