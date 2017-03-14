<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@taglib uri="/struts-tags" prefix="s" %>--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html lang="zh-CN">

<head>
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/iconfont/iconfont.css">
    <link rel="stylesheet" href="${ctx}/css/index.css">
    <script src="${ctx}/js/index.js"></script>

    <link rel="stylesheet" href="${ctx}/css/PaperMarket.css">
    <script type="text/javascript" src='${ctx}/js/jquery.js'></script>

</head>
<body style="min-width: 1200px;">
<!-- 头部导航开始 -->

<header>
    <ul class=" header-left fl">

        <li class="active"><a href="${ctx}/main/getMain"><i
                class="iconfont icon-shouye_shouye"></i>首页</a></li>
        <li><a id="bill_market" href="${ctx}/sellers/getSellersList2"><i class="iconfont icon-d"></i>票据行情</a></li>
        <li><a href="${ctx}/transaction/artificial_deal"><i class="iconfont icon-jiaoyi"></i>人工交易</a></li>
        <li><a href="${ctx}/automatic_deal/automatic_deal"><i class="iconfont icon-shouye_shouye"></i>自动交易</a></li>
        <li><a href="${ctx}/rate_market/rate_market"><i class="iconfont icon-iconzhishubao01"></i>票据指数</a></li>
        <li><a href="${ctx}/bill_property/bill_property"><i class="iconfont icon-zichan"></i>票据资产</a></li>
        <li><a href="${ctx}/newest_mes/newest_mes"><i class="iconfont icon-news"></i>最新资讯</a></li>
        <li ><a href=${ctx}/power/toAM><i class="iconfont icon-zhanghu"></i>账户管理</a></li>
        <li><a href="${ctx}/mes_manage/mes_manage"><i class="iconfont icon-yonghu"></i>信息管理</a></li>
    </ul>
    <ul class=" header-right fr">
        <li class="cop-name">欢迎你,上海梵缇歌信息技术有限公司
            <label class="companyName"></label></li>
        <li class="setting" id="setting"><i class="iconfont icon-xitongshezhi"></i></li>
        <li class="infor" id="info"><i class="iconfont icon-xitongxiaoxi"></i><span>(5)</span></li>
        <li class="exit"><i class="iconfont icon-yonghu"></i>退出</li>
        <li class="register"><i></i>注册</li>
    </ul>
</header>
<!-- 头部导航结束 -->
<!-- 页面上部开始 -->
<div class="home-page-top">
    <!-- 指数区域开始 -->
    <div class="index">
        <div class="index-content">
            <div class="header">
                <h1 class="title">普创指数</h1>
                <a class="more">更多</a>
            </div>
            <div class="index-item yincheng">
                <h3 class="name">
                    普创银承指数
                </h3>
                <div class="number">
                    <p>100.00</p>
                    <p>
                        <span>+150</span>
                        <span>+0.09%</span>
                    </p>
                </div>
            </div>
            <div class="index-item shangcheng">
                <h3 class="name">
                    普创商承指数
                </h3>
                <div class="number">
                    <p>100.00</p>
                    <p>
                        <span>+150</span>
                        <span>+0.09%</span>
                    </p>
                </div>
            </div>
            <div class="index-item today-deal">
                <h3 class="name">
                    今日成交
                </h3>
                <div class="number">
                    <p>
                        <span>1.000</span>亿
                    </p>
                </div>
            </div>
            <div class="index-item total-deal">
                <h3 class="name">
                    累计成交
                </h3>
                <div class="number">
                    <p>
                        <span>1.000.000</span>亿
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- 指数区域结束 -->
    <!-- 公告区域开始 -->
    <div class="announcement">
        <div class="announcement-content">
            <div class="system-ann">
                <div class="header">
                    <h3 class="title">系统公告</h3>
                    <a class="more">更多</a>
                </div>
                <ul class="article-section">
                    <li>
                        <p class="article"> 本平台2016年10月1日至22:00至10月2日6:00期间进行系统维护</p>
                        <p class="date"><span>10-24 16:00</span></p>
                    </li>
                    <li>
                        <p class="article"> 本平台2016年10月1日至22:00至10月2日6:00期间进行系统维护</p>
                        <p class="date"><span>10-24 16:00</span></p>
                    </li>
                    <li>
                        <p class="article"> 本平台2016年10月1日至22:00至10月2日6:00期间进行系统维护</p>
                        <p class="date"><span>10-24 16:00</span></p>
                    </li>
                </ul>
            </div>
            <div class="toady-news">
                <div class="header">
                    <h3 class="title">今日要闻</h3>
                    <a class="more">更多</a>
                </div>
                <ul class="article-section">
                    <li>
                        <p class="article"> 本平台2016年10月1日至22:00至10月2日6:00期间进行系统维护</p>
                        <p class="date"><span>10-24 16:00</span></p>
                    </li>
                    <li>
                        <p class="article"> 本平台2016年10月1日至22:00至10月2日6:00期间进行系统维护</p>
                        <p class="date"><span>10-24 16:00</span></p>
                    </li>
                    <li>
                        <p class="article"> 本平台2016年10月1日至22:00至10月2日6:00期间进行系统维护</p>
                        <p class="date"><span>10-24 16:00</span></p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 公告区域结束 -->
</div>
<!-- 页面上部结束 -->
<!-- 页面下部开始 -->
<div class="index-detail">
    <div class="tab">
        <ul>
            <li id="sell-btn" class="active">卖方市场</li>
            <li id="buy-btn">买方市场</li>
        </ul>

    </div>
    <div class=" market buy-market" id="buy-market">
        <table>
            <thead>
            <tr>
                <th>产品编号</th>
                <th>产品类型</th>
                <%--<th>询价方</th>--%>
                <%--<th>贴现率(%)</th>
                <th>涨跌幅(bp)</th>--%>
                <th>票据金额</th>
                <th>开始时间</th>
                <th>结束时间</th>
                <th>票据期限(天)</th>
                <th>承兑人</th>
                <th>权属人</th>
                <th>票源地址</th>
            </tr>
            </thead>
            <tbody class="tbody">
            <c:forEach items="${lists}" var="main">
                <tr>
                        <%--<td class="pro-num">${main.positiveNumber}</td>
                        <td class="pro-class">${main.dictName}</td>
                        <td class="enquiry-pre">${main.companyName}</td>
                        <td class="discount-rate">${main.positiveMoney}</td>
                        <td class="range">${main.startTime}</td>
                        <td class="enquiry-price">${main.endTime}</td>
                        <td class="enquiry-price">${main.positiveTime}</td>
                        <td class="usance">${main.acceptor}</td>
                        <td class="acceptor">${main.companyName}</td>
                        <td class="property-owner">${main.positiveAddress}</td>--%>

                </tr>
            </c:forEach>

            </tbody>
        </table>


    </div>
    <div class=" market sell-market" id="sell-market">
        <table>
            <thead>

            <tr>
                <th>产品编号</th>
                <th>产品类型</th>
                <%-- <th>询价方</th>--%>
                <th>票据金额</th>
                <th>开始时间</th>
                <th>结束时间</th>
                <th>票据期限(天)</th>
                <th>承兑人</th>
                <th>权属人</th>
                <th>票源地址</th>
            </tr>
            </thead>
            <tbody class="tbody1" id="tbody1">
            <%--<c:forEach items="${lists}" var="main1">
                <tr>
                    <td class="font4">${main1.positiveNumber}</td>
                    <td class="font4">${main1.dictName}</td>
                        &lt;%&ndash;    <td class="font4">${seller.companyName}</td>&ndash;%&gt;
                    <td class="font4">${main1.positiveMoney}</td>
                    <td class="font4">${main1.startTime}</td>
                    <td class="font4">${main1.endTime}</td>
                    <td class="font4">${main1.positiveTime}</td>
                    <td class="font4">${main1.acceptor}</td>
                    <td class="font4">${main1.companyName}</td>
                    <td class="font4">${main1.positiveAddress}</td>
                </tr>
            </c:forEach>--%>
            </tbody>
        </table>
        <!-- 分页功能 start -->
        <div id="page" align="center">
            <span style="cursor:pointer;margin-right:10px;color: white;" id="first" class="button">首页</span>
            <span style="cursor:pointer;margin-right:10px;color: white;" id="prev" class="button">上一页</span>
            <span style="cursor:pointer;margin-right:10px;color: white;" id="next" class="button">下一页</span>
            <span style="cursor:pointer;margin-right:10px;color: white;" id="last"
                  class="button">尾页</span>
        </div>
        <%--计算页面参数 start--%>
        <div id="count" class="count" align="center" style="height:30px;">
            <span style="margin-right:10px;color: white;" id="pageCount">共多少页</span>
            <span style="margin-right:10px;color: white;" id="pageNow">当前第几页</span>
        </div>
        <%--计算页面参数 end--%>

        <!-- 分页功能 End -->
    </div>
</div>
<!-- 系统消息开始 -->
<div class="system-mes" id="system-mes">
    <h2>系统消息</h2>
    <span class="close" id="mes-close">关闭</span>
    <ul>
        <li class="system-list">
            <p>财政部长朱光耀：贸易战两败俱伤，中美要摒弃零和游戏概念，中美要..</p>
            <span>12:00</span>
        </li>
        <li class="system-list">
            <p>财政部长朱光耀：贸易战两败俱伤，中美要摒弃零和游戏概念，中美要..</p>
            <span>12:00</span>
        </li>
        <li class="system-list">
            <p>财政部长朱光耀：贸易战两败俱伤，中美要摒弃零和游戏概念，中美要..</p>
            <span>12:00</span>
        </li>
    </ul>
</div>
<!-- 系统消息结束 -->
<!-- 快捷键设置开始 -->
<div class="key-setting" id="key-setting">
    <h2>快捷键设置</h2>
    <span class="key-close" id="key-close">关闭</span>
    <ul>
        <li class="key-list">
            <label for="">快速截屏：</label>
            <input type="text" value="Ctrl+Alt+A">
        </li>
        <li class="key-list">
            <label for="">弹出交易窗口：</label>
            <input type="text" value="Ctrl+B">
        </li>
        <li class="key-list">
            <label for="">刷新票据信息：</label>
            <input type="text" value="F10">
        </li>
        <li class="key-list">
            <label for="">闪电撤销：</label>
            <input type="text" value="F11">
        </li>
        <li class="key-list">
            <label for="">显示票据行情信息：</label>
            <input type="text" value="F12">
        </li>
    </ul>
    <div class="key-seting-btn">
        <input type="button" value="恢复默认">
        <input type="button" value="保存">
    </div>
</div>
<!-- 快捷键设置结束 -->
<%--<div class="paging-area">
    <input type="button" value="上一页">
    <input type="button" value="下一页">
</div>--%>
<!-- 页面下部结束 -->
<!-- 底部滚动开始 -->
<div class="roll-news">
    <div class="news-info">24小时滚动</div>
    <div class="roll-content">
        <div class="roll-content-bar">
            <span class="news-time">10:36</span>
            <p class="news-title">我国首家采用民办非企业模式建设的喝点研发机构成立</p>
            <span class="news-time">10:32</span>
            <p class="news-title">中央环保督查期间湖北省有六家钢厂停产</p>
            <span class="news-time">10:29</span>
            <p class="news-title">发改委：全面开放养老服务市场</p>
            <span class="news-time">10:29</span>
            <p class="news-title">发改委：全面开放养老服务市场</p>
            <span class="news-time">10:29</span>
            <p class="news-title">发改委：全面开放养老服务市场</p>
            <span class="news-time">10:29</span>
            <p class="news-title">发改委：全面开放养老服务市场</p>
            <span class="news-time">10:29</span>
            <p class="news-title">发改委：全面开放养老服务市场</p>
            <span class="news-time">10:29</span>
            <p class="news-title">发改委：全面开放养老服务市场</p>
        </div>
    </div>
</div>
<!-- 底部滚动结束 -->
<script type="text/javascript">
    //点击卖方市场



    //点击买方市场
    $("#buy-btn").click(function () {
        var ohtml = "";
        $.ajax({
            url: "${ctx}/main/getMainList1",
            type: "POST",
            dataType: "JSON",
            success: function (list1) {
                function getLocalTime(nS) {
                    return new Date(parseInt(nS)).toLocaleString().replace(/:\d{1,2}$/, ' ');
                }

                $.each(list1, function (index, lis) {
                    ohtml += "<tr>" +
                            "<td class='font3'>" + lis.positiveNumber + "</td>" +
                            "<td class='font3'>" + lis.dictName + "</td>" +
                            "<td class='font3'>" + lis.positiveMoney + "</td>" +
                            "<td class='font3'>" + getLocalTime(lis.startTime) + "</td>" +
                            "<td class='font3'>" + getLocalTime(lis.endTime) + "</td>" +
                            "<td class='font3'>" + lis.positiveTime + "</td>" +
                            "<td class='font3'>" + lis.acceptor + "</td>" +
                            "<td class='font4'>" + lis.companyName + "</td>" +
                            "<td class='font4'>" + lis.positiveAddress + "</td>" + "<tr>";
                });
                $(".tbody").html(ohtml);
            },
            error: function (e) {

                console.log("加载失败！")
                console.log(e);
            }
        })

    })


</script>
<script type="text/javascript">
    <%--页面初始值--%>
    (function ($) {
        var num = 5;//每页显示的个数
        var n = 0;
        var m = -num;
        var count = 0;
        var pageNow = 0;

        function ajax(pageType) {
            var ohtml = "";
            var thtml="";
            $.ajax({
                type: "POST",
                url: "${ctx}/main/getMainList",
                dataType: "JSON",
                success: function (data) {
                    console.log(data)
                    if (n < data.length && pageType == "next") { //上一页
                        n += num;
                        m += num;
                    } else if (m > 0 && pageType == "prev") { //下一页
                        n -= num;
                        m -= num;
                    } else if (pageType == "first") { //第一页
                        n = num;
                        m = 0;
                    } else if (pageType == "last") { //最后一页
                        n = data.length + (data.length % num) - 1;
                        m = data.length + (data.length % num) - 6;
                    }
                    /*判断页面总数*/
                    if (data.length % num == 0) {
                        count = parseInt(data.length / num);
                    } else {
                        count = parseInt((data.length / num) + 1);
                    }
                    /*计算当前页面*/
                    if (n % num == 0) {
                        pageNow = parseInt(n / num);
                    }
                    else {
                        pageNow = parseInt((n / num) + 1);
                    }
                    function getLocalTime(nS) {
                        return new Date(parseInt(nS)).toLocaleString().replace(/:\d{1,2}$/, ' ');
                    }

                    $.each(data, function (index, lis) {
                        if (index >= m && index < n) {
                            ohtml += "<tr>" +
                                    "<td class='font3'>" + lis.positiveNumber + "</td>" +
                                    "<td class='font3'>" + lis.dictName + "</td>" +
                                    /*  "<td class='font3'>" + lis.companyName + "</td>" +*/
                                    "<td class='font3'>" + lis.positiveMoney + "</td>" +
                                    "<td class='font3'>" + getLocalTime(lis.startTime) + "</td>" +
                                    "<td class='font3'>" + getLocalTime(lis.endTime) + "</td>" +
                                    "<td class='font3'>" + lis.positiveTime + "</td>" +
                                    "<td class='font3'>" + lis.acceptor + "</td>" +
                                    "<td class='font4'>" + lis.companyName + "</td>" +
                                    "<td class='font4'>" + lis.positiveAddress + "</td>" + "<tr>";
                        }
                    });

                    thtml+=" <span style='margin-right:10px;color: white;' id='pageCount' >共" + count + "页</span>" +
                            "<span style='margin-right:10px;color: white;' id='pageNow'>当前第" + pageNow + "页</span>" +
                            "<span style='margin-right:10px;color: white;' id='pageNow'>共" + data.length + "条记录</span>";
                    $(".count").html(thtml);
                    $(".tbody1").html(ohtml);
                },
                error: function (error) {
                    console.log(error);
                    console.log("加载失败")
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


