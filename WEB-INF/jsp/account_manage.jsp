
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <base href="<%=basePath%>">
    <title></title>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/iconfont/iconfont.css">
    <link rel="stylesheet" href="${ctx}/css/index.css">
    <script src="${ctx}/js/sidebarCut.js"></script>
    <script type="text/javascript" src="${ctx}/js/jquery1_9.js"></script>
    <script type="text/javascript">
        function loginout() {
            var mes = confirm("确定要退出吗？");
            if(mes == true){
                $.ajax({
                    url: "${ctx}/user/loginout",
                    type: "get",
                    data: {},
                    dataType: "text",
                    success: function (result) {
                        if(result ==="success"){
                            window.location.href ="${ctx}/login.jsp";
                        }
                    }
                })
            }
        }

    </script>
</head>
<body>
<!-- 头部导航开始 -->
<header>
    <ul class=" header-left fl">

        <li ><a href="${ctx}/main/getMain"><i
                class="iconfont icon-shouye_shouye"></i>首页</a></li>
        <li><a id="bill_market" href="${ctx}/sellers/getSellersList2"><i class="iconfont icon-d"></i>票据行情</a></li>
        <li><a href="${ctx}/transaction/artificial_deal"><i class="iconfont icon-jiaoyi"></i>人工交易</a></li>
        <li><a href="${ctx}/automatic_deal/automatic_deal"><i class="iconfont icon-shouye_shouye"></i>自动交易</a></li>
        <li><a href="${ctx}/rate_market/rate_market"><i class="iconfont icon-iconzhishubao01"></i>票据指数</a></li>
        <li><a href="${ctx}/bill_property/bill_property"><i class="iconfont icon-zichan"></i>票据资产</a></li>
        <li><a href="${ctx}/newest_mes/newest_mes"><i class="iconfont icon-news"></i>最新资讯</a></li>
        <li class="active"><a href=${ctx}/power/toAM><i class="iconfont icon-zhanghu"></i>账户管理</a></li>
        <li><a href="${ctx}/mes_manage/mes_manage"><i class="iconfont icon-yonghu"></i>信息管理</a></li>


    </ul>
    <ul class=" header-right fr">
        <li class="cop-name">欢迎你,上海梵缇歌信息技术有限公司</li>
        <li class="setting" id="setting"><i class="iconfont icon-xitongshezhi"></i></li>
        <li class="infor" id="info"><i class="iconfont icon-xitongxiaoxi"></i><span>(5)</span></li>
        <li class="exit" onclick="loginout()"><i class="iconfont icon-yonghu"></i>退出</li>
        <li class="register"><i></i>注册</li>
    </ul>
</header>
<!-- 头部导航结束 -->
<!-- 右侧侧边栏开始 -->
<div class="user-sidebar" id="user-sidebar">
    <ul>
       <c:forEach items="${roles}" var="rol">
    <%--   <c:forEach items="${rol.rolePowerList}" var="powerlist">
           <c:forEach items="${powerlist.powersList}" var="power">--%>
               <c:if test="${rol.powerName=='用户信息'}">
        <li class="user-mes active">
            <a href="javascript:;" _link="${ctx}/user/toUsers" class="">用户信息</a>
        </li>
        </c:if>
       <c:if test="${rol.powerName=='登录账户'}">
        <li>
            <a href="javascript:;" _link="" class="">登录账户</a>
        </li>
       </c:if>
          <c:if test="${rol.powerName=='操作账户'}">
        <li>
            <a href="javascript:;"  _link="${ctx}/power/toPower" class="operate-count">操作账户</a>
        </li>
      </c:if>
          <%-- </c:forEach>
            </c:forEach>--%>
        </c:forEach>
    </ul>
</div>
<!-- 右侧侧边栏结束 -->
<!-- 主体内容开始 -->
<div class="right-main">
    <div class="right-content" id="right-content">
        <iframe id="main" name="main" frameborder="0" scrolling="yes" src="user/toUsers"></iframe>
    </div>
</div>
</body>
</html>
