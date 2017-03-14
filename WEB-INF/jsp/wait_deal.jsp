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
    <title>人工交易-票据发布-待交易</title>
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
        <div class="bargainOffer">
            <div class="clearfix">
                <div class="Part-One">
                    <form action="" style="font-size:0px">
                        <div class="clearfix producttype">
                            <p class="fl font2 l"> 产品类型：</p>
                            <div class="fl inbtn"> onclick="getPositiveType()"
                                <input type="button" value="银承纸票" class="button" onclick="getPositiveType(2)">
                                <input type="button" value="银承电票" class="button" onclick="getPositiveType(3)">
                                <input type="button" value="商承纸票" class="button" onclick="getPositiveType(4)">
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
                        <div class="clearfix bill">
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
                        <input type="button" id="select" value="查询">
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
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody id="tbody" class="tbody">
                        <c:forEach items="${lists}" var="wait_deal">
                            <tr>
                                <td class="font3">${wait_deal.positiveNumber}</td>
                                <td class="font3">${wait_deal.positiveType}</td>
                                <td class="font4">${wait_deal.transactionType}</td>
                                <td class="font4">3</td>
                                <td class="font4">${wait_deal.positiveTime}</td>
                                <td class="font4">${wait_deal.acceptor}</td>
                                <td class="font3">${wait_deal.positiveAddress}</td>
                                <td class="font3 state0">${wait_deal.state}</td>
                                    <%--<td class="font3"><b class="audit3">${wait_deal.tranState}</b></td>--%>
                                <td class="font3 specifics">详情</td>
                            </tr>
                        </c:forEach>

                        <tr>
                            <td class="font3">1</td>
                            <td class="font3">银承纸票</td>
                            <td class="font5">询价买入</td>
                            <td class="font5">3.5</td>
                            <td class="font5">30</td>
                            <td class="font5">股份制行</td>
                            <td class="font3">北京</td>
                            <td class="font3">待交易</td>
                            <td class="font3 specifics">详情</td>
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
                        <span class="page-now">当前第<span class="page-num">2</span>页</span>
                        <span class="page-total">共<span class="page-num">10</span>页</span>
                        <input type="button" value="下一页">
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</div>

<!--详情弹窗-->

<div class="particulars">
    <p class="back">&times;</p>
    <p class="title">详情信息</p>
    <div class="content clearfix">
        <ul class="fl">
            <li>
                <span>票号：</span>
                <span id="positiveNumber"></span>
            </li>
            <li>
                <span>持票人：</span>
                <span id="ticketPerson"></span>
            </li>
            <li>
                <span>联系人：</span>
                <span id="contacts"></span>
            </li>
            <li>
                <span>联系电话：</span>
                <span id="contactsPhone"></span>
            </li>
            <li>
                <span>创建人：</span>
                <span id="createPerson"></span>
            </li>
            <li>
                <span>创建时间：</span>
                <span id="createTime"></span>
            </li>
        </ul>
        <ul class="fl">
            <li>
                <span>票面金额：</span>
                <span id="positiveMoney"></span>
            </li>
            <li>
                <span>出票日期：</span>
                <span id="startTime"></span>
            </li>
            <li>
                <span>到期日期：</span>
                <span id="endTime"></span>
            </li>
            <li>
                <span>票源地址：</span>
                <span id="positiveAddress"></span>
            </li>
            <li>
                <span>用户：</span>
                <span id="userId"></span>
            </li>
            <li>
                <span>承兑人类型：</span>
                <span id="acceptorType"></span>
            </li>
        </ul>
        <ul class="fl">
            <li>
                <span>持票人：</span>
                <span id="ticketPerson"></span>
            </li>
            <li>
                <span>承兑人：</span>
                <span id="acceptorid"></span>
            </li>
            <li>
                <span>经办人：</span>
                <span id="managers"></span>
            </li>
            <li>
                <span>审核人：</span>
                <span id="auditPerson"></span>
            </li>
            <li>
                <span>修改人：</span>
                <span id="updatePerson"></span>
            </li>
            <li>
                <span>修改时间：</span>
                <span id="updateTime"></span>
            </li>
        </ul>
    </div>
    <div class="audit">
        <input type="button" value="审核不通过">
        <input type="button" value="审核通过">
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

    $(function () {
        $(".specifics").click(function () {
            $(".particulars").show()
        })
        $(".particulars .back").click(function () {
            $(".particulars").hide()
        })
    })
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
                url: "${ctx}/transaction/getJSONByWait_deal",
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

                            ohtml += "<td class='font3'>" + positive.positiveAddress + "</td><td class='font3 state3'>待交易</td>" +
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