<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/iconfont/iconfont.css">
    <link rel="stylesheet" href="${ctx}/css/index.css">
    <script type="text/javascript" src="${ctx}/js/jquery1_9.js"></script>
    <style>
        /*用户弹窗*/
        .user-group-manage #agree {
            width: 550px;
            height: 230px;
            border: 1px solid #ddd;
            background: #1a2d44;
            text-align: center;
            padding-top: 30px;
            position: absolute;
            left: 50%;
            top: 50%;
            margin-top: -116px;
            margin-left: -225px;
        }
        .user-group-manage .agree p {
            margin-bottom: 37px;
            color: #ff1827;
        }
        .user-group-manage .agree p input#abolish {
            width: 120px;
            height: 37px;
            background: #666666;
            color: #333;
            font-size: 16px;
            margin-right: 127px;
        }
        .user-group-manage .agree p input#determine {
            width: 120px;
            height: 37px;
            background: #3179b1;
            color: #333;
            font-size: 16px;
        }
        /*.user-group-limit{
            max-width: 100px;
            white-space: nowrap;
            text-overflow: ellipsis;
            overflow: hidden;
        }*/

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
<div class="user-group-manage" id="user-group-manage">
    <div class="add-user-btn">
        <c:forEach items="${rol}" var="r">
            <%--<c:forEach items="${r.rolePowerList}" var="rolepower">
                <c:forEach items="${rolepower.powersList}" var="ss">--%>
                    <c:if test="${r.powerName=='添加用户组'}">
                  <span id="add-user-group">添加用户组</span>
             </c:if>
          <%--  </c:forEach>
        </c:forEach>--%>
    </c:forEach>
           <%--<span id="add-user-group">添加用户</span>--%>
    </div>

    <table id="user-table" >
        <thead>
        <tr>
            <th>用户名组名</th>
            <th>用户组描述</th>
            <th>用户组权限</th>
            <th>创建时间</th>
            <th>经办人</th>
            <th>审核人</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody id="user-table-body">
        <c:forEach items="${rList}" var="role">
            <tr>
                <td hidden="hidden">${role.id}</td>
                <td hidden="hidden">${role.userId}</td>
                <td><div class="table-describe">${role.roleName}</div></td>
                <td><div class="table-describe">${role.remark}</div></td>
                <td><div class="table-describe"> <c:forEach items="${role.rolePowerList}" var="rolepowerList">
                        <c:forEach items="${rolepowerList.powersList}" var="power">
                            ${power.powerName}
                        </c:forEach>

                    </c:forEach></div>
                </td>
                <td>${role.createTime}</td>
                <td>${role.companyUname}</td>
                <td>${role.desPerson}</td>
                <td>
                    <c:forEach items="${rol}" var="rol">
                       <%-- <c:forEach items="${rol.rolePowerList}" var="powerlists">
                            <c:forEach items="${powerlists.powersList}" var="powers">--%>
                                <c:if test="${rol.powerName=='用户组审核'}">

                                    <c:if test="${role.state==0}">
                                        <input type="button" value="待审核" class="wait-audit">
                                    </c:if>

                                    <c:if test="${role.state==1}">
                                        <input type="button" value="审核通过" class="wait-audit">
                                    </c:if>
                                    <c:if test="${role.state==2}">
                                        <input type="button" value="审核失败" class="wait-audit">
                                    </c:if>

                                </c:if>
                        <%--    </c:forEach>
                        </c:forEach>--%>
                    </c:forEach>
                </td>

                <td>
                    <c:forEach items="${rol}" var="roles">
                      <%--  <c:forEach items="${roles.rolePowerList}" var="powerlistss">
                            <c:forEach items="${powerlistss.powersList}" var="powerss">--%>
                                <c:if test="${roles.powerName=='用户组修改'}">
                                    <span class="modify"><i class="iconfont icon-bianji"></i></span>
                                </c:if>

                                <c:if test="${roles.powerName=='用户组删除'}">
                                    <span class="trash"><i class="iconfont icon-shanchu" onclick="PASS(${role.id})"></i></span>
                                </c:if>
                     <%--       </c:forEach>
                        </c:forEach>--%>
                    </c:forEach>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
    <br>
    <br>
   <div>
       <center>
           <a href="${ctx}/power/selPower?pageNow=1" class="btn">首页</a>
           <c:choose>
               <c:when test="${page.pageNow - 1 > 0}">
                   <a href="${ctx}/power/selPower?pageNow=${page.pageNow - 1}"class="btn">上一页</a>
               </c:when>
               <c:when test="${page.pageNow - 1 <= 0}">
                   <a href="${ctx}/power/selPower?pageNow=1"class="btn">上一页</a>
               </c:when>
           </c:choose>
           <c:choose>
               <c:when test="${page.totalPageCount==0}">
                   <a href="${ctx}/power/selPower?pageNow=${page.pageNow}"class="btn">下一页</a>
               </c:when>
               <c:when test="${page.pageNow + 1 < page.totalPageCount}">
                   <a href="${ctx}/power/selPower?pageNow=${page.pageNow + 1}"class="btn">下一页</a>
               </c:when>
               <c:when test="${page.pageNow + 1 >= page.totalPageCount}">
                   <a href="${ctx}/power/selPower?pageNow=${page.totalPageCount}"class="btn">下一页</a>
               </c:when>
           </c:choose>
           <c:choose>
               <c:when test="${page.totalPageCount==0}">
                   <a href="${ctx}/power/selPower?pageNow=${page.pageNow}"class="btn">尾页</a>
               </c:when>
               <c:otherwise>
                   <a href="${ctx}/power/selPower?pageNow=${page.totalPageCount}"class="btn">尾页</a>
               </c:otherwise>
           </c:choose>
           <br>
         <%-- <a href="#"> 就看过会儿 如果用户日益高企如国瑞恶搞</a>--%>
           <span style="color: #fff"class="total-page">共 ${page.totalPageCount} 页</span> <span style="color: #fff"class="total-page">第${page.pageNow} 页</span>
       </center>

     </div>
    <%--审核弹出框--%>
    <div class="check-user-window" id="check-user-window" style="top:30%;">
        <h3>审核用户组</h3>
        <form action="" id="roleGroupFrom">
            <ul>

                <input type="hidden" id="user-group-id" name="id">
                <input type="hidden" id="user-group-userId" name="userId">
                <li>
                    <label for="">用户组名：</label>
                    <input type="text" id="user-group-name" disabled="true" name="roleName">
                </li>
                <li>
                    <label for="">用户组描述：</label>
                    <textarea name="" id="user-group-describe" cols="30" rows="10"  disabled="true" name="remark"></textarea>
                </li>
                <%--<li>
                    <label for="">用户组权限：</label>
                    <textarea name="" id="user-group-limits" cols="30" rows="10" disabled="true"></textarea>
                </li>--%>
                <li >
                    <label for="">创建时间：</label>
                    <input type="text" id="creat-time" disabled="true" name="createTime">
                </li>
                <li class="check-user-btn" id="check-user-btn">
                    <input type="button" value="审核不通过" id="no">
                    <input type="button" value="审核通过"  id="yes">
                </li>
            </ul>

        </form>
    </div>

<%--删除弹窗--%>
 <%--   <div class="agree" id="agree">
        <p>再次确认</p>
        <p>是否确认删除信息</p>
        <p>
            <input type="button" value="取消" id="abolish">
            <input type="button" value="确定" id="determine">
        </p>
    </div>--%>
</div>
<!-- 主体内容结束 -->
<!-- 选项主体内容开始 -->

<div class="main-left choose-area" id="choose-area">
    <form action="" method="post" id="addrole">
        <!--添加用户组头部开始-->
        <div class="add-group-title">
            <h2>添加用户组</h2>
            <div class="checkbtn fr">
                <input type="button" value="取消" id="cancel">
                <input type="button"  value="确定" id="submit">
            </div>
        </div>
        <!--添加用户组头部结束-->

        <div class="product-class ">
            <div class="fl">
                <label for="">交易产品类别：</label>
                <select name="">
                    <option value="">票据</option>
                    <option value="">证券</option>
                    <option value="">股票</option>
                    <option value="">现金</option>
                </select>
            </div>
            <div class="user-name">
                <label for="">用户组名称：</label>
                <input name="roleName" id="roleName" type="text">
            </div>
        </div>
        <!--用户组描述开始-->
        <div class="user-group-describe">
            <label for="">用户组描述:</label>
            <input name="remark" id="remark">
            </input>
        </div>
        <!--选项区域开始-->
        <div class="agent-person">

            <div class="agent-person-content">
                <c:forEach items="${pList}" var="power">
                    <dl>
                        <dt><input type="checkbox" name="id" value="${power.id}"
                                   id="aa"/><label>${power.powerName}</label></dt>

                        <c:forEach items="${power.powerList}" var="ss">
                            <dd><input type="checkbox" name="id"
                                       value="${ss.MINId}"/><label> ${ss.powerMinName}</label></dd>

                        </c:forEach>
                    </dl>
                </c:forEach>


            </div>

        </div>



    </form>
    <!--用户组描述结束-->
    <!--选项区域结束-->
</div>
<!-- 选项主体内容结束 -->
<script>

    $("#yes").click(function () {
       var id = $("#user-group-id").val();
       var userId = $("#user-group-userId").val();
        $.ajax({
            url:"${ctx}/role/describesRoleGroup",
            type:"post",
            data:{"state":1,"id":id,"userId":userId},
            dataType:"text",
            success:function (abc,bcd) {
                if(abc != null){
                    alert("审核通过");
                    window.location.href="${ctx}/power/selPower"
                }

            },error:function () {

            }

        })

    })

    $("#no").click(function () {
        var id = $("#user-group-id").val();
        var userId = $("#user-group-userId").val();
        $.ajax({
            url:"${ctx}/role/describesRoleGroup",
            type:"post",

            data:{"state":2,"id":id,"userId":userId},
            dataType:"text",
            success:function (abc) {
                if(abc === "success"){
                    alert("审核不通过");
                    window.location.href="${ctx}/power/selPower"
                }
            },error:function () {

            }

        })

    })
    function desGroup(id) {
        $.ajax({
            url: "${ctx}/role/selRoleGroupPower",
            type: "post",
            data: {"id":id},
            dataType: 'text',
            success: function(mes) {

            }
        })


    }


    function PASS(id) {
        var msg=confirm("你确定要进行删除吗？");
        if(msg==true)
        {
            $.ajax({
                url: "${ctx}/role/delRole",
                type: "post",
                data: {"id":id},
                dataType: 'text',
                success: function(mes) {
                    if(mes==="abc")
                        window.location.href="${ctx}/power/selPower";
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    alert(XMLHttpRequest.status);
                    alert(XMLHttpRequest.readyState);
                    alert(textStatus);
                },
                complete: function(XMLHttpRequest, textStatus) {
                    this; // 调用本次AJAX请求时传递的options参数
                }
            });

        }
    }

    window.onload = function () {
        var addUserGroup = document.getElementById("add-user-group");
        var chooseArea = document.getElementById("choose-area");
        var userGroupMan = document.getElementById("user-group-manage");
        var cancel = document.getElementById("cancel");
        var otab=document.getElementById("user-table");
        var PASS=document.getElementById("PASS");
        var agree=document.getElementById("agree");
        var abolish=document.getElementById("abolish");
        var determine=document.getElementById("determine");

//       agree.style.display="none";
//        var roleName;
//
//
//        abolish.onclick=function(){
//            agree.style.display="none";
//        }
//
//        determine.onclick=function del(){
//            agree.style.display="none";
//
//        };
//

        addUserGroup.onclick = function () {


            userGroupMan.style.display = "none";
            chooseArea.style.display = "block";
        }
        cancel.onclick = function () {
            userGroupMan.style.display = "block";
            chooseArea.style.display = "none";
        }
        var dl = document.getElementsByTagName('dl');
        for (var i = 0; i < dl.length; i++) {
            var firstInput = dl[i].getElementsByTagName('input')[0];
            firstInput.onclick = function () {
                var dl = document.getElementsByTagName('dl');
                for (var i = 0; i < dl.length; i++) {
                    var inputs = dl[i].getElementsByTagName('input');
                    if (inputs[0].value == this.value) {
                        for (var j = 0; j < inputs.length; j++) {
                            inputs[j].checked = inputs[0].checked;
                        }
                    }
                }
            }
        }
        //用户组移入显示全部信息
        var descripe=document.getElementsByClassName("table-describe");
        for(var i=0;i<descripe.length;i++){
            descripe[i].onmouseover=function(){
                var detail=document.createElement("div");
                detail.innerHTML=this.innerHTML;
                detail.style.color="#649ee7";
                detail.style.position="absolute";
                detail.style.backgroundColor="#d8d9b3";
                detail.style.borderRadius="10px";
                detail.style.zIndex="10";
                detail.style.whiteSpace="normal"
                detail.style.wordBreak="break-all";
//                detail.style.left="50px";
                detail.style.lineHeight="25px";
                detail.style.maxWidth="300px"
                this.parentNode.appendChild(detail);
                this.onmouseout=function(){
                    this.parentNode.removeChild(detail);
                }
            }
        }

        //单击审核状态弹出审核框
        function $id(id){
            return document.getElementById(id);
        }

        var check=document.getElementsByClassName("wait-audit");
        var checkWindow= document.getElementById("check-user-window");
        for(var i=0;i<check.length;i++){
            check[i].onclick=function(){
                //获取td中的值，导入弹出框中
                var thisParentNode=this.parentNode.parentNode;
                var thisTd=thisParentNode.getElementsByTagName('td');
                $id('user-group-id').value=thisTd[0].innerHTML;
                $id('user-group-userId').value=thisTd[1].innerHTML;

                console.log($id('user-group-userId').value);

                $id('user-group-name').value=thisTd[2].children[0].innerHTML;
                $id("user-group-describe").value=thisTd[3].children[0].innerHTML;
               // $id("user-group-limits").value=thisTd[3].children[0].innerHTML;
                $id("creat-time").value=thisTd[5].innerHTML;
                checkWindow.style.display="block";
                var checkConfirm=document.getElementById("check-user-btn");
                var checkBtn=checkConfirm.getElementsByTagName("input");
                var that=this;
                checkBtn[0].onclick=function(){
                    checkWindow.style.display="none";
                    that.style.backgroundColor="#ab661c";
                    that.className="unable-audit";
                    that.value="未通过";
                    that.disabled=true;
                }
                checkBtn[1].onclick=function(){
                    checkWindow.style.display="none";
                    that.style.backgroundColor="#476ea1";
                    that.className="pass-audit";
                    that.value="已审核";
                    that.disabled=true;
                }
            }
        }

    }

    $("#submit").click(function() {

        var roleName = document.getElementById("roleName").value;
        var remark = document.getElementById("remark").value;
        var id =[];
//        var id = $("input[name='id']:checked").serialize();
        $("input[name='id']:checked").each(function () {
            id.push($(this).val());
        })
        if(roleName == undefined){
              alert("用户组名称不能为空");
              return false;
        }
        $.ajax({
            url: "${ctx}/role/addRoles",
            type: "post",
            data: {"id":id,"roleName":roleName,"remark":remark},
            dataType: 'text',
            success: function (result) {
                console.log()
                if(result ==="success"){
                    window.location.href="${ctx}/power/selPower"
                }
            },
            error:function (e) {
                alert("用户组名称不能为空")
            }
        });
    })
</script>

</body>
</html>

