
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/10 0010
  Time: 下午 12:41
  To change this template use File | Settings | File Templates.
--%>
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
  <script type="text/javascript" src="${ctx}/js/jquery1_9.js"></script>
    <script src="${ctx}/js/user.js"></script>

     <script type="text/javascript" language="javascript">





      </script>

</head>
<body>

<div class="main-left">
    <div class="user-content">
    <div class="user-title">
        <h2>用户详情信息</h2>
    </div>
    <!-- 完善信息开始 -->
    <div class="operate-section">

        <div class="center-section" id="center-section">
            <input class="complete-mes" type="button" value="完善信息" id="complete-mes">
            <p>(企业信息，您未完善，点击完善)</p>
        </div>
        <!-- 用户详情信息填写开始 -->
        <div class="input-section" id="input-section">
            <h3>您是一般企业/机构用户</h3>
            <div class="form" >
                <form id="form" action=""  method="post" name="kkk">
                    <%--<input type="hidden" name="companyPersonPhone" value="${users.companyPersonPhone}">--%>
                <ul class="form-left fl">
                    <li>
                        <label for="">企业名称：</label>
                        <input type="text" name="companyName" id="companyName" value="${user.companyName}" >
                    </li>
                    <li>
                        <label for="">企业银行账号：</label>
                        <input type="text" name="companyBankNumber" id="companyBankNumber" value="${user.companyBankNumber}">
                    </li>
                    <li>
                        <label for="">企业联系人姓名：</label>
                        <input type="text" name="" id="companyUname" value="${user.companyUname}">
                    </li>
                    <li>
                        <label for="">企业法人姓名：</label>
                        <input type="text" name="companyPersonName" id="companyPersonName" value="${user.companyPersonName}">
                    </li>
                    <li>
                        <label for="">工商营业执照号：</label>
                        <input type="text" name="licenNumber" id="licenNumber" value="${user.licenNumber}">
                    </li>

                   <%-- <li>
                        <label for="">需要上传的资料：</label>
                            &lt;%&ndash;<input type="text" class="uploading-mo" name="files">
                            <input type="file" class="uploading-tr">&ndash;%&gt;
                        <form action="${ctx}/user/upload" method="post" enctype="multipart/form-data">
                            <input type="file" name="file" />
                            <input type="submit" value="Submit" />
                        </form>
                    </li>--%>
                </ul>
                <ul class="form-right">
                    <li>
                        <label for="">企业账户开户行：</label>
                        <select name="companyBank"  value="${user.companyBank}" id="select-bank">
                            <option value="中国工商银行">中国工商银行</option>
                            <option value="中国农业银行">中国农业银行</option>
                            <option value="中国银行">中国银行</option>
                            <option value="中国建设银行">中国建设银行</option>
                            <option value="中国光大银行">中国光大银行</option>
                            <option value="中国民生银行">中国民生银行</option>
                            <option value="华夏银行">华夏银行</option>
                            <option value="中信银行">中信银行</option>
                            <option value="恒丰银行">恒丰银行</option>
                            <option value="上海浦东发展银行">上海浦东发展银行</option>
                            <option value="交通银行">交通银行</option>
                            <option value="浙商银行">浙商银行</option>
                            <option value="兴业银行">兴业银行</option>
                            <option value="深圳发展银行">深圳发展银行</option>
                            <option value="招商银行">招商银行</option>
                            <option value="广东发展银行">广东发展银行</option>
                            <option value="中国邮政储蓄银行">中国邮政储蓄银行</option>
                            <option value="中国工商银行">中国工商银行</option>
                        </select>
                    </li>
                    <li>
                        <label for="">企业银行账户名称：</label>
                        <input type="text" name="companyBankName" id="companyBankName" value="${user.companyBankName}">
                    </li>
                    <li>
                        <label for="">企业联系人手机号：</label>
                        <input type="text" name="companyUphone" id="companyUphone" value="${user.companyUphone}">
                    </li>
                    <li>
                        <label for="">企业地址：</label>
                        <input type="text" name="address" id="address" value="${user.address}">
                    </li>
                    <li>
                        <label for="">企业法人联系人手机号：</label>
                        <input type="text" name="companyPersonPhone" id="companyPersonPhone" value="${user.companyPersonPhone}">
                    </li>
                    <%--<li>
                        <label for="">手机验证码：</label>
                        <input type="text">
                        <input type="button" value="获取验证码" class="get-num" id="get-num">
                    </li>--%>
                </ul>
                <textarea name="" id="" cols="30" rows="10">附：注册过程中，需要用户上传资料：
						（1）加盖公章的《业务服务申请书》(影音件)，申请书载明公司名称，公司账户，公司开户行，营业执照注册号，金融业务许可证码，深圳金融电子结算中心用户编码（介入深圳金融电子结算中心的银行需填写）：附：注册过程中，需要用户上传资料：（1）加盖公章的《业务服务申请书》(影音件)，申请书载明公司名称，公司账户，公司开户行，营业执照注册号，金融业务许可证码，深圳金融电子结算中心用户编码（介入深圳金融电子结算中心的银行需填写）：附：注册过程中，需要用户上传资料：（1）加盖公章的《业务服务申请书》(影音件)，申请书载明公司名称，公司账户，公司开户行，营业执照注册号
					</textarea>

                <div>
                    <input  class="cancel" id="cancel" type="button" value="取消">
                    <input calss="submit" id="submit" name="submit" type="button" value="提交" >
                </div>
                </form>


            </div>
            <!-- 信息确认弹出框开始-->
            <from class="mes-confirm" id="mes-confirm">
                <h3>信息确认</h3>
                <div class="fl mes-confirm-left">
                    <p class="company-name">
                        <span>企业名称：</span>
                        <span id="company-name"></span>
                    </p>
                    <p class="company-type">
                        <span>企业类型：</span>
                        <span id="company-type">${msg }</span>
                    </p>
                    <p class="company-bank">
                        <span>企业账户开户行：</span>
                        <span id="company-bank">中国公司银行深圳福田支行</span>
                    </p>
                </div>
                <div class="mes-confirm-right">
                    <p class="company-count">
                        <span>账户账号：</span>
                        <span id="company-count">63968526595</span>
                    </p>
                    <p class="company-person">
                        <span>企业法人代表：</span>
                        <span id="company-person">张三</span>
                    </p>
                </div>
                <div class="clearfl btn">
                    <input type="button" value="取消" id="conform-cancel">
                    <input type="submit" name="conform-conform" value="确定" id="conform-conform" >
                </div>

            </from>

            </div>
            <!-- 信息确认弹出框结束 -->

        </div>
        <!-- 用户详情信息填写结束 -->
        <!-- 用户详情信息展示开始 -->
        <div class="mes-show" id="mes-show">
            <c:forEach items="${userList}" var="user">
            <p>企业名称：<span class="company-name-show" id="name-show">${user.companyName}</span></p>
            <p>企业类型：<span class="company-type-show" id="type-show">${user.dictName }</span></p>
            <p>账户账户：<span class="company-count-show" id="count-show">${user.companyBankNumber}</span></p>
            <p>企业账户开户行：<span class="company-bank-show" id="bank-show">${user.companyBank}</span></p>
            <p>企业法人代表：<span class="company-person-show" id="person-show">${user.companyPersonName}</span></p>
            </c:forEach>
        </div>
        <!-- 用户详情信息展示结束 -->
        <!-- 用户详情信息结束 -->
    </div>
    <!-- 完善信息结束 -->
    </div>
</div>
<!-- 主体内容结束 -->
</body>
</html>

