
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
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/iconfont/iconfont.css">
    <link rel="stylesheet" href="${ctx}/css/index.css">
    <script src="${ctx}/js/tabCut.js"></script>
</head>
<body>
<!-- 主体内容开始 -->
<div class="operate_account">
    <div class="operate-title">
        <ul id="user-tab">
            <c:forEach items="${roles}" var="rol">
              <c:if test="${rol.powerName=='用户组管理'}">
            <li class="user-mes active">
                <a href="javascript:;" _link="power/selPower" class="title-tab ">用户组管理</a>
            </li>
             </c:if>

            <c:if test="${rol.powerName=='用户管理'}">
            <li>
                <a href="javascript:;" _link="${ctx}/user/selUserGroup" class="title-tab">用户管理</a>
            </li>
             </c:if>

             <c:if test="${rol.powerName=='组织架构'}">
            <li>
                <a href="javascript:;"  _link="" class="title-tab">组织架构</a>
            </li>
             </c:if>
                </c:forEach>
        </ul>
    </div>

    <div class="content">
        <div class="iframe-content" id="iframe-content">
          <c:forEach items="${roles}" var="rol">
                <c:if test="${rol.powerName=='用户组管理'}">
            <iframe id="account-iframe" src="power/selPower" frameborder="0"></iframe>
          </c:if>
                </c:forEach>
        </div>
    </div>

</div>

<!-- 主体内容结束 -->
</body>
</html>