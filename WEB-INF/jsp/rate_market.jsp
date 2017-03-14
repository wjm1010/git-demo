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
    <title>票据指数</title>
    <link rel="stylesheet" type="text/css" href="../../css/iconfont/iconfont.css">
    <link rel="stylesheet" href="../../css/index.css">
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
            <li  class="active"><a href="${ctx}/rate_market/rate_market"><i class="iconfont icon-iconzhishubao01"></i>票据指数</a></li>
            <li><a href="${ctx}/bill_property/bill_property"><i class="iconfont icon-zichan"></i>票据资产</a></li>
            <li><a href="${ctx}/newest_mes/newest_mes"><i class="iconfont icon-news"></i>最新资讯</a></li>
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
    <!-- 头部导航结束 -->
    <!-- 主体内容开始 -->
    <div class="rate-market">
        <div class="header">
            <h2>利率市场</h2>
        </div>
        <!-- 产品类型开始 -->
        <div class="product-type-title">
            <h3>产品类型</h3>
        </div>
        <div class="product-type-content">
            <div class=" item bank-paper">
               <p class="name"> 银承纸票</p>
               <div class="number">
                <p>3.65</p>
                <p>
                    <span>-1.5</span>
                    <span>+0.09%</span>
                </p>
            </div>
        </div>
        <div class=" item bank-electric">
            <p class="name"> 银承电票</p>
            <div class="number">
                <p>3.85</p>
                <p>
                    <span>+150</span>
                    <span>+0.09%</span>
                </p>
            </div>
        </div>
        <div class=" item business-electric">
            <p class="name">银承电票</p>
            <div class="number">
                <p>3.65</p>
                <p>
                    <span>-1.50</span>
                    <span>-0.09%</span>
                </p>
            </div>
        </div>
    </div>
    <!-- 产品类型结束 -->
    <!-- 承兑人类型开始 -->
    <div class="acceptor-type">
        <div class="acceptor-type-title">
            <h3>承兑人类型</h3>
        </div>
        <div class="acceptor-type-content">
            <div class="item policy-bank">
                <p class="name">政策银行</p>
                <div class="number">
                    <p>3.65</p>
                    <p>
                        <span>+1.50</span>
                        <span>+0.09%</span>
                    </p>
                </div>
            </div>
            <div class="item nation-bank">
                <p class="name">国有大行</p>
                <div class="number">
                    <p>3.85</p>
                    <p>
                        <span>-1.50</span>
                        <span>-0.09%</span>
                    </p>
                </div>
            </div>
            <div class="item stock-bank">
                <p class="name">股份制行</p>
                <div class="number">
                    <p>3.97</p>
                    <p>
                        <span>0.00</span>
                        <span>0.00%</span>
                    </p>
                </div>
            </div>
            <div class="item province-city">
                <p class="name">省级城商</p>
                <div class="number">
                    <p>4.85</p>
                    <p>
                        <span>+1.50</span>
                        <span>+0.09%</span>
                    </p>
                </div>
            </div>
            <div class="item province-agriculture">
                <p class="name">省级农商</p>
                <div class="number">
                    <p>4.86</p>
                    <p>
                        <span>+1.50</span>
                        <span>+0.09%</span>
                    </p>
                </div>
            </div>
            <div class="item foreign-bank">
                <p class="name">外资银行</p>
                <div class="number">
                    <p>4.21</p>
                    <p>
                        <span>+1.50</span>
                        <span>+0.09%</span>
                    </p>
                </div>
            </div>
            <div class="item state-city">
                <p class="name">地市城商</p>
                <div class="number">
                    <p>5.10</p>
                    <p>
                        <span>+1.50</span>
                        <span>+0.09%</span>
                    </p>
                </div>
            </div>
            <div class="item state-agriculture">
                <p class="name">地方农商</p>
                <div class="number">
                    <p>5.11</p>
                    <p>
                        <span>+1.50</span>
                        <span>+0.09%</span>
                    </p>
                </div>
            </div>
            <div class="item villages-bank">
                <p class="name">村镇农信</p>
                <div class="number">
                    <p>6.30</p>
                    <p>
                        <span>-1.50</span>
                        <span>-0.09%</span>
                    </p>
                </div>
            </div>
            <div class="item finance-company">
                <p class="name">财务公司</p>
                <div class="number">
                    <p>6.30</p>
                    <p>
                        <span>-1.50</span>
                        <span>-0.09%</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- 承兑人类型结束 -->     
</div>

<!-- 主体内容结束 -->
</body>
</html>
