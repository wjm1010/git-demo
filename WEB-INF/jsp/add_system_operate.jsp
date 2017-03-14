<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/14 0014
  Time: 上午 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../css/iconfont/iconfont.css">
    <link rel="stylesheet" href="../../css/index.css">
    <script src="../../js/add_system_operate.js"></script>
</head>
<body>
<!-- 主体内容开始 -->
<div class="main-left">
    <div class="user-title">
        <h2>添加系统操作员</h2>
    </div>
    <!-- 中部用户类型信息开始 -->
    <div class="operate-mes">
        <form action="">
            <div class="user-type">
                <span for="">用户类型：</span>
                <input  name=" user-type" type="checkbox" id="handle-person" value="" checked="false">
                <label for="handle-person">经办人</label>
                <input name=" user-type" type="checkbox" id="check-preson" value="" checked="false">
                <label  for="check-preson">审核人</label>
            </div>
            <div class="user-mes">
                <ul>
                    <li>
                        <label for="">手机号：</label>
                        <input type="text" id="phone-num">
                    </li>
                    <li>
                        <label for="">姓名：</label>
                        <input type="text" id="name">
                    </li>
                    <li>
                        <label for="">密码：</label>
                        <input type="text" id="code">
                    </li>
                    <li>
                        <label for="">邮箱：</label>
                        <input type="text" id="email">
                    </li>

                </ul>
                <input type="button"  class="user-mes-btn" value="确认" id="affirm">
            </div>
        </form>
    </div>
    <!-- 中部用户类型信息结束 -->
    <!-- 底部表格开始 -->
    <div class="operate-count-form">
        <table>
            <thead>
            <tr>
                <td>姓名</td>
                <td>用户类型</td>
                <td>手机号</td>
                <td>邮箱</td>
                <td>密码</td>
                <td>创建时间</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody id="operator-table-body">
            <tr>
                <td>admin</td>
                <td>经办人/审核人</td>
                <td>1377788888</td>
                <td>4564645@qq.com</td>
                <td>a54154665</td>
                <td>2016/12/03</td>
                <td>
                           <span class="model-10">
                              <span class="checkbox">
                               <input type="checkbox"/>
                               <label></label>
                           </span>
                       </span>
                    <span class="trash"><i class="iconfont icon-shanchu"></i></span>
                </td>
            </tr>
            <tr>
                <td>admin</td>
                <td>经办人/审核人</td>
                <td>1377788888</td>
                <td>4564645@qq.com</td>
                <td>a54154665</td>
                <td>2016/12/03</td>
                <td>
                   <span class="model-10">
                      <span class="checkbox">
                       <input type="checkbox"/>
                       <label></label>
                   </span>
               </span>
                    <span class="trash"><i class="iconfont icon-shanchu"></i></span>
                </td>
            </tr>
            <tr>
                <td>admin</td>
                <td>经办人/审核人</td>
                <td>1377788888</td>
                <td>4564645@qq.com</td>
                <td>a54154665</td>
                <td>2016/12/03</td>
                <td>
           <span class="model-10">
              <span class="checkbox">
               <input type="checkbox"/>
               <label></label>
           </span>
       </span>
                    <span class="trash"><i class="iconfont icon-shanchu"></i></span>
                </td>
            </tr>
            <tr>
                <td>admin</td>
                <td>经办人/审核人</td>
                <td>1377788888</td>
                <td>4564645@qq.com</td>
                <td>a54154665</td>
                <td>2016/12/03</td>
                <td>
     <span class="model-10">
      <span class="checkbox">
       <input type="checkbox"/>
       <label></label>
   </span>
</span>
                    <span class="trash"><i class="iconfont icon-shanchu"></i></span>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <!-- 底部表格结束 -->
</div>
<!-- 主体内容结束 -->
</body>
</html>
