<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/14 0014
  Time: 上午 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../css/iconfont/iconfont.css">
    <link rel="stylesheet" href="../../css/index.css">
</head>
<body>
<!-- 头部导航开始 -->
<header>
    <ul class=" header-left fl">
        <li class="active"><a href=""><i class="iconfont icon-shouye_shouye"></i>首页</a></li>
        <li><a href=""><i class="iconfont icon-d"></i>票据行情</a></li>
        <li><a href=""><i class="iconfont icon-jiaoyi"></i>人工交易</a></li>
        <li><a href=""><i class="iconfont icon-shouye_shouye"></i>自动交易</a></li>
        <li><a href=""><i class="iconfont icon-iconzhishubao01"></i>票据指数</a></li>
        <li><a href=""><i class="iconfont icon-zichan"></i>票据资产</a></li>
        <li><a href=""><i class="iconfont icon-news"></i>最新资讯</a></li>
        <li><a href=""><i class="iconfont icon-zhanghu"></i>账户管理</a></li>
        <li><a href=""><i class="iconfont icon-yonghu"></i>信息管理</a></li>
    </ul>
    <ul class=" header-right fr">
        <li class="cop-name">欢迎你，广州腾飞信息技术有限公司</li>
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
    <div class="product-type-area">
        <div class="product-type fl">
            产品类型:
            <div>
                <span>银承纸票</span>
                <span>银承电票</span>
                <span>商承电票</span>
            </div>

        </div>
        <div class="acceptor-type">
            承兑人类型：
            <div>
                <span>政策银行</span>
                <span>国有大行</span>
                <span>股份制行</span>
                <span>省级城商</span>
                <span>省级农商</span>
                <span>外资银行</span>
                <span>地市城商</span>
                <span>地市农商</span>
                <span>村镇农信</span>
            </div>
        </div>
        <div class="note-date">
            票据期限
            <div>
                <span>一天</span>
                <span>七天</span>
                <span>一月期</span>
                <span>二月期</span>
                <span>三月期</span>
                <span>四月期</span>
                <span>五月期</span>
                <span>六月期</span>
                <span>七月期</span>
                <span>八月期</span>
                <span>九月期</span>
                <span>十月期</span>
                <span>十一月期</span>
                <span>十二月期</span>
            </div>
        </div>
    </div>
    <!-- 产品类型结束 -->
    <!-- 承兑人类型开始 -->

    <!-- 承兑人类型结束 -->
</div>

<!-- 主体内容结束 -->
</body>
</html>
