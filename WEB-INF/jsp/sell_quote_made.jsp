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
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../css/iconfont/iconfont.css">
    <link rel="stylesheet" href="../../css/index.css">
     <script src="../../js/typeCut.js"></script>
</head>
<body>
    <!-- 主体内容开始 -->
    <div class="rate-market">
        <!-- 产品类型开始 -->
        <div class="product-type-area">
            <div class="product-type fl">
                产品类型:
                <div id="product-type">
                  <input type="button" value="银承纸票">
                  <input type="button" value="银承电票" class="active">
                  <input type="button" value="商承电票">
              </div>
          </div>
          <div class="acceptor-type">
            承兑人类型：
            <div id="acceptor-type">
                <input type="button" value="政策银行">
                <input type="button" value="国有大行">
                <input type="button" value="股份制行">
                <input type="button" value="省级城商">
                <input type="button" value="省级农商">
                <input type="button" value="外资银行" class="active">
                <input type="button" value="地市城商">
                <input type="button" value="地市农商">
                <input type="button" value="村镇农信">
                <input type="button" value="财务公司">
            </div>
        </div>
        <div class="note-date">
            票据期限:
            <div id="note-date">
                <input type="button" value="一天" class="active">
                <input type="button" value="七天">
                <input type="button" value="一月期">
                <input type="button" value="二月期">
                <input type="button" value="三月期">
                <input type="button" value="四月期">
                <input type="button" value="五月期">
                <input type="button" value="六月期">
                <input type="button" value="七月期">
                <input type="button" value="八月期">
                <input type="button" value="九月期">
                <input type="button" value="十月期">
                <input type="button" value="十一月期">
                <input type="button" value="十二月期">
            </div>   
        </div>
        <div class="accept-type">
            <span class="accept-bank">
                <label for="">承兑行行号:</label>
                <input type="text">
            </span>
            <span class="accept-man">
                <label for="">承兑人:</label>
                <input type="text">
            </span>
            <span class="par-value">
                <label for="">票面金额(万元):</label>
                <input type="text">
                —
                <input type="text">
            </span>
        </div>
        <div class="quote-type">
            <span class="build-group">
                <label for="">建立定制交易组:</label>
                <input type="checkbox">
                <label for="">是</label>
            </span>
            <span class="lowest-earning">
                <label for="">最低收益率:</label>
                <input type="text" value="%">
            </span>
            <span class="quote-decrease">
                <label for="">报价递减幅度:</label>
                <input type="text" value="bp">
            </span>
            <span class="quote-address">
                <label for="">报价方地址:</label>
                <select name="" id="">
                    <option value="">地址1</option>
                    <option value="">地址2</option>
                    <option value="">地址3</option>
                </select>
            </span>
        </div>
        <div class="made-confirm">
            <input type="button" value="重置">
            <input type="button" value="定制">
            <input type="button" value="提交">
        </div>
    </div>
    <!-- 产品类型开始 -->
</div>
<!-- 主体内容结束 -->
<!-- 自动报价交易开始 -->
<div class="quote-header">
    <h3>
        自动报价交易
    </h3>
</div>
<!-- 自动报价交易结束 -->
<div class="quote-show">
    <table id="user-table">
        <thead>
            <tr>
                <th>选择</th>
                <th>定制编号</th>
                <th>产品类型</th>
                <th>贴现率（%）</th>
                <th>询价递减幅度（bp）</th>
                <th>票据期限</th>
                <th>承兑人类型</th>
                <th>承兑人</th>
                <th>票源地址</th>
                <th>审核状态</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody id="user-table-body">
            <tr>
                <td><input type="checkbox"></td>
                <td>10301001</td>
                <td>银承纸票</td>
                <td>3.61</td>
                <td>3</td>
                <td>三月期</td>
                <td>股份制行</td>
                <td>民生银行</td>
                <td>深圳</td>
                <td class="check-situation"><input type="button" value="待审核" class="wait-audit"></td>
                <td> 
                   <span class="modify"><i class="iconfont icon-bianji"></i></span>
                   <span class="trash"><i class="iconfont icon-shanchu"></i></span>
               </td>
           </tr>
           <tr>
                <td><input type="checkbox"></td>
                <td>10301001</td>
                <td>银承纸票</td>
                <td>3.61</td>
                <td>3</td>
                <td>三月期</td>
                <td>股份制行</td>
                <td>民生银行</td>
                <td>深圳</td>
                <td class="check-situation"><input type="button" value="未通过" class="unable-audit"></td>
                <td> 
                   <span class="modify"><i class="iconfont icon-bianji"></i></span>
                   <span class="trash"><i class="iconfont icon-shanchu"></i></span>
               </td>
           </tr>
           <tr>
                <td><input type="checkbox"></td>
                <td>10301001</td>
                <td>银承纸票</td>
                <td>3.61</td>
                <td>3</td>
                <td>三月期</td>
                <td>股份制行</td>
                <td>民生银行</td>
                <td>深圳</td>
                <td class="check-situation"><input type="button" value="已审核" class="pass-audit"></td>
                <td> 
                   <span class="modify"><i class="iconfont icon-bianji"></i></span>
                   <span class="trash"><i class="iconfont icon-shanchu"></i></span>
               </td>
           </tr>
       </tbody>
   </table>
</div>
    <div class="paging-area">
        <input type="button" value="上一页">
        <span class="page-now">当前第<span class="page-num">2</span>页</span>
        <span class="page-total">共<span class="page-num">10</span>页</span>
        <input type="button" value="下一页">
    </div>
<div class="quote-publish">
    <span>
        <label for="">
            自动询价发布：
            <input type="checkbox">
            全部
        </label>
    </span>
    <span class="auto-deal">
        <input type="button" value="自动交易">
    </span>
</div>
</body>
</html>
