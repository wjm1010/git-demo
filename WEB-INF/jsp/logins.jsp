<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <base href="<%=basePath%>">
    <title></title>
    <style type="text/css">
        td{text-align: center;}
        .td2{text-align: right;}
        .table1{
            border:1px solid #ddd;
            width:900px;
        }
        thead{
            background-color:lightblue;
        }
    </style>
    <script type="text/javascript">
        function list() {
            $.ajax({
                url:"${pageContext.request.contextPath }${ctx}/role/main?currentPage=${requestScope.pagemsg.currPage-1}",
                type:"post",
                data:{currentPage:${requestScope.pagemsg.currPage-1}},
                sucess:function () {
                    
                }
                
            })
            
        }
        
        
    </script>   
</head>
<body>
欢迎你：${currentUser}
<br>
<%-- 当前用户：${pageScope.currentUser}<!-- (只能在同一个页面中使用) --> <br>
当前用户：${requestScope.currentUser}-${roleName} 有重定向数据就访问不到<br>
当前用户：${sessionScope.currentUser}-${roleName} 可以使用<br> --%>
<hr>
<a href="add"> 添加用户</a><br>
<c:if test="${empty requestScope.pagemsg}">
    没有任何用户信息！
</c:if>
<c:if test="${!empty requestScope.pagemsg}">
    <table border="1" cellpadding="10" cellspacing="0" class="table1">
        <thead>
        <tr>
            <td>编号</td>
            <td>角色名称</td>
            <td>级别</td>
            <td>角色状态</td>
            <td>remark</td>
            <td>创建人</td>
            <td>创建时间</td>
            <td>更新人</td>
            <td>更新时间</td>
            <td>describesPerson</td>
        </tr>
        </thead>
        <c:forEach items="${requestScope.pagemsg.lists}" var="u">
            <tr>
                <th>${u.id }</th>
                <th>${u.roleName }</th>
                <th>${u.level }</th>
                <th>${u.roleState }</th>
                <th>${u.remark }</th>
                <th>${u.createperson }</th>
                <th>${u.createtime }</th>
                <th>${u.updateperson }</th>
                <th>${u.updatetime }</th>
                <th>${u.describesPerson }</th>
            </tr>
        </c:forEach>
    </table>
</c:if>

<table  border="0" cellspacing="0" cellpadding="0"  width="900px">
    <tr>
        <td class="td2">
            <span>第${requestScope.pagemsg.currPage }/ ${requestScope.pagemsg.totalPage}页</span>&nbsp;&nbsp;
            <span>总记录数：${requestScope.pagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.pagemsg.pageSize}</span>&nbsp;&nbsp;
            <span>
       <c:if test="${requestScope.pagemsg.currPage != 1}">
           <a href="${pageContext.request.contextPath }${ctx}/role/main?currentPage=1">[首页]</a>&nbsp;&nbsp;
          <%-- <a href="${pageContext.request.contextPath }${ctx}/role/main?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;--%>
           <input type="button" value="上一页" onclick="list()"> 
       </c:if>

       <c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">
           <a href="${pageContext.request.contextPath }${ctx}/role/main?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }${ctx}/role/main?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
       </c:if>
   </span>
        </td>
    </tr>
</table>
</body>
</html>

