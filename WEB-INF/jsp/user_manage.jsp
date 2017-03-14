<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@taglib uri="/struts-tags" prefix="s" %>--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>


    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/iconfont/iconfont.css">
    <link rel="stylesheet" href="${ctx}/css/index.css">
    <script type="text/javascript" src="${ctx}/js/jquery1_9.js"></script>
    <script src="${ctx}/js/user_manage.js"></script>
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
<!-- 主体内容开始 -->
<!-- 主体内容开始 -->
<div class="main-left">
    <div class="add-user-btn">
 <c:forEach items="${rle}" var="rr">
         <%-- <c:forEach items="${r.rolePowerList}" var="rolepower">
              <c:forEach items="${rolepower.powersList}" var="ss">--%>
          <c:if test="${rr.powerName=='添加用户'}">
             <span id="add-user">添加用户</span>
         </c:if>
           <%--     </c:forEach>
            </c:forEach>--%>
        </c:forEach>
    </div>
    <table id="user-table">
        <thead>
        <tr>
            <th>姓名</th>
            <th>所属用户组</th>
            <th>手机号</th>
            <th>邮箱</th>
            <th>密码</th>
            <th>创建时间</th>
            <th>经办人</th>
            <th>审核人</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody id="user-table-body">
        <c:forEach items="${roles}" var="role">
            <tr>
                <td style="display: none" >${role.id}</td>
                <td style="display: none" >${role.userId}</td>
                <td>${role.companyUname}</td>
                <td>${role.roleName}</td>
                <td>${role.companyUphone}</td>
                <td>${role.email}</td>
                <td>${role.password}</td>
                <td>${role.createTime}</td>
                <td>${role.createPerson}</td>
                <td>${role.desPerson}</td>
                <td>
                    <c:forEach items="${rle}" var="rol">
                   <%--  <c:forEach items="${rol.rolePowerList}" var="powerlists">
                         <c:forEach items="${powerlists.powersList}" var="powers">--%>
                             <c:if test="${rol.powerName=='用户审核'}">
                    <c:if test="${role.state==0}">
                        <input type="button" value="待审核" class="wait-audit" id="state">
                    </c:if>
                    <c:if test="${role.state==2}">
                        <input type="button" value="审核失败" class="wait-audit">
                    </c:if>
                    <c:if test="${role.state==3}">
                        <input type="button" value="审核成功" class="wait-audit">
                    </c:if>

                             </c:if>
                 <%--        </c:forEach>
                     </c:forEach>--%>
                    </c:forEach>
                </td>

                <td>
                    <span class="model-10">
                          <span class="checkbox">
                              <c:if test="${role.isdisables==0}">
                                  <input type="checkbox" checked="checked" onclick="updateUserIsdisables(${role.id},${role.isdisables})"/>
                              </c:if>
                               <c:if test="${role.isdisables==1}">
                                   <input type="checkbox" onclick="updateUserIsdisables(${role.id},${role.isdisables})" />
                               </c:if>
                             <label></label>
                         </span>
                     </span>
                      <c:forEach items="${rle}" var="roles">

                                       <c:if test="${roles.powerName=='用户删除'}">
                          <span class="trash"><i class="iconfont icon-shanchu" onclick="delUser(${role.id})" ></i></span>
                             </c:if>
               </c:forEach>
                </td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="add-user-window" id="add-user-window">
        <h3>添加用户</h3>
        <form  method="post" id="userFrom">
            <ul>

                <li>
                    <label for="">手机号：</label>
                    <input type="text" id="phone-num" name="companyUphone">
                </li>
                <li class="add-user-name">
                    <label for="">姓名：</label>
                    <input type="text" id="name" name="companyUname">
                </li>
                <li>
                    <label for="">密码：</label>
                    <input type="text" id="code" name="password">
                </li>
                <li class="add-user-email">
                    <label for="">邮箱：</label>
                    <input type="text" id="email" name="email">
                </li>
                <li>
                    <label for="">所属用户组:</label>


                    <select name="userGroup" id="belong-group">
                        <c:forEach items="${rl}" var="r">
                            <option  name="" value="${r.id}" onclick="('${r.id}')">${r.roleName}</option>
                        </c:forEach>
                    </select>

                </li>

                <li>
                    <label for="">组织架构:</label>
                    <select name="" id="belong-group1">
                        <option value="发布经办">example</option>
                        <option value="交易审核">example</option>
                        <option value="发布经办">example</option>
                    </select>
                </li>
                <li class="add-user-describe">
                    <label for="">描述：</label>
                    <textarea name="remarks" id="remarks"></textarea>
                </li>
                <li class="add-user-btn">
                    <input type="button" value="取消" id="cancel">
                    <input type="button" value="确认" id="sumitUser">
                </li>
            </ul>
        </form>
    </div>
    <div class="check-user-window" id="check-user-window">

        <h3>审核用户</h3>
        <form  id="inforss">
            <ul>
                <input type="hidden" id="userId" name="userId">
               <input type="hidden" id="roId" name="id">
                <li>
                    <label for="">手机号：</label>
                    <input type="text" name="companyPhone" id="check-phone-num">
                </li>
                <li class="check-user-name">
                    <label for="">姓名：</label>
                    <input type="text" name="companyName" id="check-name">
                </li>
                <li>
                    <label for="">密码：</label>
                    <input type="text" name="password" id="check-password">
                </li>
                <li class="check-user-email">
                    <label for="">邮箱：</label>
                    <input type="text" name="email" id="check-email">
                </li>
                <li>
                    <label for="">所属用户组:</label>
                    <%--<select name="userGroup" id="check-group">--%>
                        <%--<option value="">发布经办</option>--%>
                        <%--<option value="">交易审核</option>--%>
                        <%--<option value="">发布经办</option>--%>
                    <%--</select>--%>
                    <input type="text"   id="check-group">
                </li>
                <%--<li class="check-user-describe">
                    <label for="">描述：</label>
                    <textarea name="remarks" id="4"></textarea>
                </li>--%>
                <li class="check-user-describe">
                    <label for="">审核人描述：</label>
                    <textarea name="describe" id=""></textarea>
                </li>
                <li class="check-user-btn" id="check-user-btn">
                    <input type="button"  id="no"  value="审核不通过">
                    <input type="button" id="yes"  value="审核通过" >
                </li>
            </ul>
        </form>

    </div>
</div>

<div class="paging-area">
    <a href="${ctx}/user/selUserGroup?pageNow=1"class="btn">首页</a>
    <c:choose>
        <c:when test="${page.pageNow - 1 > 0}">
            <a href="${ctx}/user/selUserGroup?pageNow=${page.pageNow - 1}"class="btn">上一页</a>
        </c:when>
        <c:when test="${page.pageNow - 1 <= 0}">
            <a href="${ctx}/user/selUserGroup?pageNow=1"class="btn">上一页</a>
        </c:when>
    </c:choose>
    <c:choose>
        <c:when test="${page.totalPageCount==0}">
            <a href="${ctx}/user/selUserGroup?pageNow=${page.pageNow}"class="btn">下一页</a>
        </c:when>
        <c:when test="${page.pageNow + 1 < page.totalPageCount}">
            <a href="${ctx}/user/selUserGroup?pageNow=${page.pageNow + 1}"class="btn">下一页</a>
        </c:when>
        <c:when test="${page.pageNow + 1 >= page.totalPageCount}">
            <a href="${ctx}/user/selUserGroup?pageNow=${page.totalPageCount}"class="btn">下一页</a>
        </c:when>
    </c:choose>
    <c:choose>
        <c:when test="${page.totalPageCount==0}">
            <a href="${ctx}/user/selUserGroup?pageNow=${page.pageNow}"class="btn">尾页</a>
        </c:when>
        <c:otherwise>
            <a href="${ctx}/user/selUserGroup?pageNow=${page.totalPageCount}"class="btn">尾页</a>
        </c:otherwise>
    </c:choose><br>
    <font size="2" class="total-page">共 ${page.totalPageCount} 页</font> <font size="2"class="total-page">第${page.pageNow} 页</font>
</div>
<!-- 主体内容结束 -->

</body>
<script type="text/javascript">



    $("#sumitUser").click(function () {
        $.ajax({
            url:"${ctx}/user/addUser",
            type: "post",
            data:$("#userFrom").serialize(),
            dataType:"text",
            success:function (result) {
                if (result === "success") {
                    window.location.href="${ctx}/user/selUserGroup"
                }
            }
        })

    })


    $("#yes").click(function () {
        $.ajax({
            url:"${ctx}/role/describesRole"+'?state=3',
            type:"post",
            data:$("#inforss").serialize(),
            dataType:"text",
            success:function (abc) {
                if(abc ==="success"){
                    alert("经办审核不能为同一人");
                }
                window.location.href="${ctx}/user/selUserGroup"
            },error:function () {

            }

        })

    })

    $("#no").click(function () {
        $.ajax({
            url:"${ctx}/role/describesRole"+'?state=2',
            type:"post",
            data:$("#inforss").serialize(),
            dataType:"text",
            success:function (abc) {
                if(abc ==="success"){
                    alert("审核经办不能为同一人");
                }
                window.location.href="${ctx}/user/selUserGroup";
            },error:function () {

            }

        })

    })

    function updateUserIsdisables(id,isdisables) {
        $.ajax({
            url:"${ctx}/user/updateUserIsdisables",
            type: "post",
            data:{"id":id,"isdisables":isdisables},
            dataType:"text",
            success:function (result) {
                if(result ==="success"){
                    window.location.href="${ctx}/user/selUserGroup";
                }
            }
        })
    }

    function delUser(id) {
        $.ajax({
            url:"${ctx}/user/delUser",
            type: "post",
            data:{"id":id},
            dataType:"text",
            success:function (result) {
                if (result === "success") {
                    window.location.href="${ctx}/user/selUserGroup"
                }
            }
        })
    }

</script>
</html>
