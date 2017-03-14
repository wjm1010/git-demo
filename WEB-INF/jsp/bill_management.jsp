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
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>人工交易-票据管理</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="${ctx}/css/iconfont/iconfont.css" rel="stylesheet">
    <link href="${ctx}/css/reset.css" rel="stylesheet">
    <link href="${ctx}/css/ArtificialTrading.css" rel="stylesheet">
    <script src="${ctx}/js/jquery.js"></script>
    <%--<script src="${ctx}/js/distpicker.data.js"></script>--%>
    <script src="${ctx}/js/main.js"></script>
    <style>
        input.specifics {
            border-radius: 2px;
            padding: 6px;
            color: #0a0d14;
        }

        .positive {
            position: absolute;
            left: 86px;
            top: 5px;
        }

        .positive1 {
            position: absolute;
            right: -29px;
            top: 5px;
        }
    </style>
    <script>


        /**前端针对表格数据展现的分页插件
         * *思路：将所有数据列出来后 根据展现开始id和展现结束id 给当前页添加display：展现熟悉 其他掩藏
         * 使用方法：id='mytbody'属性赋给<tr>的父标签
         *
         *
         *
         * */
        function  minmypage(numb){
            var trCount = numb ;//总行数
            var pageSize = 6; //每页显示条数
            var pageIndex = 1; //当前页数
            var pageCount = 0; //总页数
            var startnumb = 0 ;//展现开始id
            var endnumb = 0 ; //展现结束id
            var insteall = new Array();//将行数据以数组的形式存储



            /**获取所有行数据 将行数据以数组形式存储*/
            function savePage(){

                var str = $("#mytbody").html();//id='mytbody'属性赋给<tr>的父标签
                var strs = new Array();
                strs = str.split("</tr>");
                for(var i = 0 ; i <= endnumb-startnumb ; i++){
                    var index = startnumb + i ;
                    insteall[index] = strs[i] + "</tr>" ;
                }
            }

            /**展现开始id 展现结束id */
            function countPage(){
                startnumb = (pageIndex -1) * pageSize ;
                if((pageIndex* pageSize) > (insteall.length) ){
                    endnumb = insteall.length -1;
                }else{
                    endnumb = pageIndex* pageSize -1
                }

            }
            //初始化 基本参数
            this.init = function(){
                var str = $("#mytbody").html();
                insteall = str.split("</tr>");
                pageCount = Math.ceil(trCount / pageSize) ;//总页数
                countPage();

            }
            /**外部调用展现函数*/
            this.show = function() {
                var html = "";
                for(var i = startnumb ; i < endnumb + 1 ; i++){
                    html += insteall[i] + "</tr>" ;
                }
                $("#mytbody").html(html);


            }
            /**下一页函数*/
            this.next = function() {
                if(pageIndex >= pageCount){
                    return ;
                }
                savePage(); //将页面数据保存到数组
                pageIndex++;//当前页加一
                countPage();//给展现开始id 展现结束id 赋值
                this.show();
            }
            /**上一页*/
            this.pageUp = function() {
                if(pageIndex <= 1 ){
                    return ;
                }
                savePage(); //将页面数据保存到数组
                pageIndex--;//当前页加一
                countPage();//给展现开始id 展现结束id 赋值
                this.show();
            }
            /**首页*/
            this.pageFirst = function() {
                if(pageIndex == 1 ){
                    return ;
                }
                savePage(); //将页面数据保存到数组
                pageIndex = 1;//当前页首页
                countPage();//给展现开始id 展现结束id 赋值
                this.show();
            }

            /**尾页*/
            this.pageEnd = function() {
                if(pageIndex == pageCount ){
                    return ;
                }
                savePage(); //将页面数据保存到数组
                pageIndex = pageCount;//当前末页
                countPage();//给展现开始id 展现结束id 赋值
                this.show();
            }
        }

    </script>

</head>
<body>

<div class="artificial-content">
    <div class="main1">
        <div class="bargainOffer">
            <div class="clearfix">
                <div class="Part-One">
                    <form action="" style="font-size:0px">
                        <div class="clearfix producttype">
                            <p class="fl font2 l"> 产品类型：</p>
                            <div class="fl inbtn">
                                <input type="button" value="银承纸票" class="button" name="2">
                                <input type="button" value="银承电票" class="button" name="3">
                                <input type="button" value="商承纸票" class="button" name="4">
                            </div>
                            <div class="acceptor">
                                <p class="fl font2 l"> 承兑人类型：</p>
                                <div class="fl inbtn">
                                    <input type="button" value="政策银行" class="button" name="6">
                                    <input type="button" value="国有大行" class="button" name="7">
                                    <input type="button" value="股份制行" class="button" name="8">
                                    <input type="button" value="省级城商" class="button" name="9">
                                    <input type="button" value="省级农商" class="button" name="10">
                                    <input type="button" value="外资银行" class="button" name="11">
                                    <input type="button" value="地市城商" class="button" name="12">
                                    <input type="button" value="地市农商" class="button" name="13">
                                    <input type="button" value="村镇农信" class="button" name="14">
                                </div>
                            </div>
                        </div>
                        <div class="bill_condition clearfix">
                            <p class="fl amount font2">
                                票据金额：<input type="text" id="positiveMoney_min" class="box1" style="width:78px;">
                                <i></i>
                                <input type="text" id="positiveMoney_max" class="box1" style="width:78px;">
                            </p>
                            <%--<div style="margin:0 116px 0 69px">--%>
                            <%--<label class="address">票源地址：</label>
                            <input type="text" class="box1"
                                   style="width:96px">--%>
                            <%--<label class="address">票源地址：</label>--%>
                            <%--<div class="box1 district" style="width:160px">
                                <div id="show"></div>
                                <div class="info" style="display:none">
                                    <div>
                                        <select id="s_province" class="ellipsis" name="s_province"></select>
                                        <select id="s_city" class="ellipsis" name="s_city"></select>
                                        <select id="s_county" class="ellipsis" name="s_county"></select>
                                    </div>
                                </div>
                            </div>--%>
                            <%--</div>--%>
                            <p><label for="" class="font2">票源地址：</label><input type="text" class="box1"
                                                                               id="positiveAddress_"
                                                                               style="width:96px"></p>
                            <p><label for="" class="font2">票号：</label><input type="text" class="box1"
                                                                             id="positiveNumber_"
                                                                             style="width:96px"></p>
                        </div>
                        <div class="clearfix bill inbtn time" style="margin-top:15px;">
                            <p class="fl font2 l"> 票据期限：</p>
                            <input type="button" value="一月期" class="button" name="1">
                            <input type="button" value="二月期" class="button" name="2">
                            <input type="button" value="三月期" class="button" name="3">
                            <input type="button" value="四月期" class="button" name="4">
                            <input type="button" value="五月期" class="button" name="5">
                            <input type="button" value="六月期" class="button" name="6">
                        </div>
                        <div class="publish clearfix">
                            <input type="button" value="票据发布" class="fr font6" id="publish">
                        </div>
                    </form>
                    <button id="select">查询</button>
                </div>
                <div class="Part-Two">
                    <div style="height:500px;overflow: auto">
                    <table>
                        <thead>
                        <tr>
                            <th>产品编号</th>
                            <th>产品类型</th>
                            <th>票面金额(万)</th>
                            <th>票据期限(天)</th>
                            <th>承兑人</th>
                            <th>票源地址</th>
                            <th>票据状态</th>
                            <th>审核状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody id="mytbody">


                        <c:forEach items="${lists}" var="bill_management">
                            <tr>
                                <td class="font3 getpositiveNumber">${bill_management.positiveNumber}</td>
                                <td class="font3 positivetype0">${bill_management.positiveType}</td>
                                <td class="font5">${bill_management.positiveMoney}</td>
                                <td class="font5">${bill_management.positiveTime}</td>
                                <td class="font5">${bill_management.acceptor}</td>
                                <td class="font3">${bill_management.positiveAddress}</td>
                                <td class="font3 state0" id="state0">${bill_management.state}
                                </td>
                                <td class="font3"><b class="auditstate0" name="type_sp"
                                                     style="">${bill_management.auditState}</b>
                                </td>
                                <td>
                                    <input type="button" class="specifics details"  value="详情">
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    </div>
                    <div class="paging-area">
                    <%--    <a onclick="pageFirst()">首页</a><a onclick="pageUp()">上一页</a><a onclick="next()">下一页</a><a onclick="pageLast()">末页</a>--%>

                    </div>
                </div>
                <div class="Part-Three product_details">
                    <ul class="clearfix">
                        <li class="fl">产品编号：<span>001</span></li>
                        <li class="fl">票号：<span>03280016</span></li>
                        <li class="fl">票面金额(万)：<span>1000</span></li>
                        <li class="fl">承兑人：<span>招商银行</span></li>
                        <li class="fl">票源地址：<span>重庆</span></li>
                    </ul>
                    <ul class="clearfix">
                        <li class="fl">出票日期：<span>2016-11-15</span></li>
                        <li class="fl">承兑日期：<span>2017-02-15</span></li>
                        <li class="fl">持票人：<span>×××公司</span></li>
                        <li class="fl"><input type="button" value="查看影像" id="image"></li>
                    </ul>
                </div>
            </div>
            <!-- 票据发布弹窗 -->
            <div class="pub clearfix" style="display: none">
                <p class="back fr">&times;</p>
                <p class="lish">发布票据</p>
                <p>
                    <input type="button" value="银承纸票" id="paper_tickets">
                    <input type="button" value="银承电票" id="tele_tickets">
                    <input type="button" value="商承电票" id="tele_tickets1">
                </p>
            </div>
            <!-- 银承纸票部分 -->
            <div class="paper_tickets" style="display: none">
                <form>
                    <p class="back">&times;</p>
                    <p class="title">产品类型：银承纸票</p>
                    <div class="content clearfix">
                        <p class="list">
                            <label>票据正面：</label>
                            <input type="text" value="" class="choose">
                            <input type="file" class="positive" id="positiveNote0" name="positiveNote0">
                            <label class="side">票据背面：</label>
                            <input type="text" value="" class="choose">
                            <input type="file" class="positive1" id="positiveBack0" name="positiveBack0">
                        </p>
                        <ul class="fl">
                            <li>
                                <label>票号：</label>
                                <input type="text" id="positiveNumber0" name="positiveNumber0">
                            </li>
                            <li>
                                <label>承兑人：</label>
                                <%--<input type="text" id="acceptorid0" name="acceptorid0">--%>
                                <select name="" id="acceptor0">
                                    <option value="1">国家开发银行</option>
                                    <option value="2">中国工商银行</option>
                                    <option value="3">招商银行</option>
                                    <option value="4">北京银行</option>
                                    <option value="5">北京农村商业银行</option>
                                    <option value="6">汇丰银行</option>
                                    <option value="7">西安市商业银行</option>
                                    <option value="8">上海农商银行</option>
                                    <option value="9">农业发展银行</option>
                                    <option value="10">进出口银行</option>
                                    <option value="11">中国农业银行</option>
                                    <option value="12">中国银行</option>
                                    <option value="13">中国建设银行</option>
                                    <option value="14">交通银行</option>
                                    <option value="15">中信银行</option>
                                    <option value="16">深圳发展银行</option>
                                    <option value="17">兴业银行</option>
                                    <option value="18">广发银行</option>
                                    <option value="19">中国光大银行</option>
                                    <option value="20">上海浦东发展银行</option>
                                    <option value="21">华夏银行</option>
                                    <option value="22">中国民生银行</option>
                                    <option value="23">恒丰银行</option>
                                    <option value="24">浙商银行</option>
                                    <option value="25">渤海银行</option>
                                </select>
                            </li>
                            <li>
                                <label>出票日期：</label>
                                <%--<input type="date" id="startTime0" name="startTime0">--%>
                                <input type="date" id="startTime0" name="startTime0">
                            </li>
                            <li>
                                <label>票源地址：</label>
                                <input type="text" id="positiveAddress0" name="positiveAddress0">
                            </li>
                            <li>
                                <label>联系电话：</label>
                                <input type="number" id="contactsPhone0" name="contactsPhone0">
                            </li>
                        </ul>
                        <ul class="fl">

                            <li>
                                <label>持票人：</label>
                                <input type="text" id="ticketPerson0" name="ticketPerson0">
                            </li>
                            <li>
                                <label>票面金额：</label>
                                <input type="text" id="positiveMoney0" name="positiveMoney0">
                            </li>
                            <li>
                                <label>到期日期：</label>
                                <%--<input type="date" id="endTime0" name="endTime0">--%>
                                <input type="date" id="endTime0" name="endTime0">
                            </li>
                            <li>
                                <label>联系人：</label>
                                <input type="text" id="contacts0" name="contacts0">
                            </li>
                        </ul>
                    </div>
                    <p class="remark">
                        <label for="">备注：</label><textarea id="remark0" name="remark0"></textarea>
                    </p>
                    <p class="submit">
                        <input type="submit" value="提交" id="submit" name="submit">
                    </p>
                </form>
            </div>
            <!-- 银承电票部分 -->
            <div class="tele_tickets"  style="display: none">
                <form>
                    <p class="back">&times;</p>
                    <p class="title">产品类型：银承电票</p>
                    <div class="content clearfix">
                        <p class="list">
                            <label>票据正面：</label>
                            <input type="text" value="" class="choose">
                            <input type="file" class="positive" id="positiveNote1" name="positiveNote1">
                            <label class="side">票据背面：</label>
                            <input type="text" value="" class="choose">
                            <input type="file" class="positive1" id="positiveBack1" name="positiveBack1">
                        </p>
                        <ul class="fl">
                            <li>
                                <label>票号：</label>
                                <input type="text" id="positiveNumber1" name="positiveNumber1">
                            </li>
                            <li>
                                <label>承兑人：</label>
                                <%--<input type="text" id="acceptorid0" name="acceptorid0">--%>
                                <select name="" id="acceptor1">
                                    <option value="1">国家开发银行</option>
                                    <option value="2">中国工商银行</option>
                                    <option value="3">招商银行</option>
                                    <option value="4">北京银行</option>
                                    <option value="5">北京农村商业银行</option>
                                    <option value="6">汇丰银行</option>
                                    <option value="7">西安市商业银行</option>
                                    <option value="8">上海农商银行</option>
                                    <option value="9">农业发展银行</option>
                                    <option value="10">进出口银行</option>
                                    <option value="11">中国农业银行</option>
                                    <option value="12">中国银行</option>
                                    <option value="13">中国建设银行</option>
                                    <option value="14">交通银行</option>
                                    <option value="15">中信银行</option>
                                    <option value="16">深圳发展银行</option>
                                    <option value="17">兴业银行</option>
                                    <option value="18">广发银行</option>
                                    <option value="19">中国光大银行</option>
                                    <option value="20">上海浦东发展银行</option>
                                    <option value="21">华夏银行</option>
                                    <option value="22">中国民生银行</option>
                                    <option value="23">恒丰银行</option>
                                    <option value="24">浙商银行</option>
                                    <option value="25">渤海银行</option>
                                </select>
                            </li>
                            <li>
                                <label>出票日期：</label>
                                <%--<input type="date" id="startTime0" name="startTime0">--%>
                                <input type="date" id="startTime1" name="startTime1">
                            </li>
                            <li>
                                <label>票源地址：</label>
                                <input type="text" id="positiveAddress1" name="positiveAddress1">
                            </li>
                            <li>
                                <label>联系电话：</label>
                                <input type="number" id="contactsPhone1" name="contactsPhone1">
                            </li>
                        </ul>
                        <ul class="fl">
                            <li>
                                <label>持票人：</label>
                                <input type="text" id="ticketPerson1" name="ticketPerson1">
                            </li>
                            <li>
                                <label>票面金额：</label>
                                <input type="text" id="positiveMoney1" name="positiveMoney1">
                            </li>
                            <li>
                                <label>到期日期：</label>
                                <%--<input type="date" id="endTime0" name="endTime0">--%>
                                <input type="date" id="endTime1" name="endTime1">
                            </li>
                            <li>
                                <label>联系人：</label>
                                <input type="text" id="contacts1" name="contacts1">
                            </li>
                        </ul>
                    </div>
                    <p class="remark">
                        <label for="">备注：</label><textarea id="remark1" name="remark1"></textarea>
                    </p>
                    <p class="submit">
                        <input type="submit" value="提交" id="submit1" name="submit1">
                    </p>
                </form>
            </div>
            <!-- 商承电票部分 -->
            <div class="tele_tickets1" style="display: none">
                <form>
                    <p class="back">&times;</p>
                    <p class="title">产品类型：商承电票</p>
                    <div class="content clearfix">
                        <p class="list">
                            <label>票据正面：</label>
                            <input type="text" value="" class="choose">
                            <input type="file" class="positive" id="positiveNote2" name="positiveNote2">
                            <label class="side">票据背面：</label>
                            <input type="text" value="" class="choose">
                            <input type="file" class="positive1" id="positiveBack2" name="positiveBack2">
                        </p>
                        <ul class="fl">
                            <li>
                                <label>票号：</label>
                                <input type="text" id="positiveNumber2" name="positiveNumber2">
                            </li>
                            <li>
                                <label>承兑人：</label>
                                <%--<input type="text" id="acceptorid0" name="acceptorid0">--%>
                                <select name="" id="acceptor2">
                                    <option value="1">国家开发银行</option>
                                    <option value="2">中国工商银行</option>
                                    <option value="3">招商银行</option>
                                    <option value="4">北京银行</option>
                                    <option value="5">北京农村商业银行</option>
                                    <option value="6">汇丰银行</option>
                                    <option value="7">西安市商业银行</option>
                                    <option value="8">上海农商银行</option>
                                    <option value="9">农业发展银行</option>
                                    <option value="10">进出口银行</option>
                                    <option value="11">中国农业银行</option>
                                    <option value="12">中国银行</option>
                                    <option value="13">中国建设银行</option>
                                    <option value="14">交通银行</option>
                                    <option value="15">中信银行</option>
                                    <option value="16">深圳发展银行</option>
                                    <option value="17">兴业银行</option>
                                    <option value="18">广发银行</option>
                                    <option value="19">中国光大银行</option>
                                    <option value="20">上海浦东发展银行</option>
                                    <option value="21">华夏银行</option>
                                    <option value="22">中国民生银行</option>
                                    <option value="23">恒丰银行</option>
                                    <option value="24">浙商银行</option>
                                    <option value="25">渤海银行</option>
                                </select>
                            </li>
                            <li>
                                <label>出票日期：</label>
                                <%--<input type="date" id="startTime0" name="startTime0">--%>
                                <input type="date" id="startTime2" name="startTime2">
                            </li>
                            <li>
                                <label>票源地址：</label>
                                <input type="text" id="positiveAddress2" name="positiveAddress2">
                            </li>
                            <li>
                                <label>联系电话：</label>
                                <input type="number" id="contactsPhone2" name="contactsPhone2">
                            </li>
                        </ul>
                        <ul class="fl">

                            <li>
                                <label>持票人：</label>
                                <input type="text" id="ticketPerson2" name="ticketPerson2">
                            </li>
                            <li>
                                <label>票面金额：</label>
                                <input type="text" id="positiveMoney2" name="positiveMoney2">
                            </li>
                            <li>
                                <label>到期日期：</label>
                                <%--<input type="date" id="endTime0" name="endTime0">--%>
                                <input type="date" id="endTime2" name="endTime2">
                            </li>
                            <li>
                                <label>联系人：</label>
                                <input type="text" id="contacts2" name="contacts2">
                            </li>
                        </ul>
                    </div>
                    <p class="remark">
                        <label for="">备注：</label><textarea id="remark2" name="remark2"></textarea>
                    </p>
                    <p class="submit">
                        <input type="submit" value="提交" id="submit2" name="submit2">
                    </p>
                </form>
            </div>

        </div>
    </div>
</div>

<!--详情弹窗-->

<div class="particulars" id="particulars">
    <p class="back">&times;</p>
    <p class="title">详情信息</p>
    <div class="content clearfix">
        <ul class="fl">
            <li>
                <span>票号：</span>
                <span id="positiveNumber"></span>
            </li>

            <li>
                <span>联系人：</span>
                <span id="contacts"></span>
            </li>
            <li>
                <span>联系电话：</span>
                <span id="contactsPhone"></span>
            </li>
            <li>
                <span>创建人：</span>
                <span id="createPerson"></span>
            </li>
            <li>
                <span>创建时间：</span>
                <span id="createTime"></span>
            </li>
        </ul>
        <ul class="fl">
            <li>
                <span>票面金额：</span>
                <span id="positiveMoney"></span>
            </li>
            <li>
                <span>出票日期：</span>
                <span id="startTime"></span>
            </li>
            <li>
                <span>到期日期：</span>
                <span id="endTime"></span>
            </li>
            <li>
                <span>票源地址：</span>
                <span id="positiveAddress"></span>
            </li>
            <li>
                <span>用户：</span>
                <span id="userId"></span>
            </li>
            <li>
                <span>承兑人类型：</span>
                <span id="acceptorType"></span>
            </li>
        </ul>
        <ul class="fl">
            <li>
                <span>持票人：</span>
                <span id="ticketPerson"></span>
            </li>
            <li>
                <span>承兑人：</span>
                <span id="acceptorid"></span>
            </li>
            <li>
                <span>经办人：</span>
                <span id="managers"></span>
            </li>
            <li>
                <span>审核人：</span>
                <span id="auditPerson"></span>
            </li>
            <li>
                <span>修改人：</span>
                <span id="updatePerson"></span>
            </li>
            <li>
                <span>修改时间：</span>
                <span id="updateTime"></span>
            </li>
        </ul>
    </div>
    <div class="audit" id="check-user-btn">
        <input type="button" id="AuditState_no" value="审核不通过" class="no_pass">
        <input type="button" id="auditState_yes" value="审核通过" class="pass">
    </div>
</div>
<script type="text/javascript">

    window.onload = function () {
        //票据状态 状态(0.待交易1.交易中2.交易完成3.交易失败4.已删除)
        var st0 = document.getElementsByClassName('state0');
        var au0 = document.getElementsByClassName('auditstate0');
        //var po0 = document.getElementsByClassName('positivetype0');
        for (var i = 0; i < st0.length; i++) {
            if (st0[i].innerHTML == 0) {
                st0[i].innerHTML = "待交易";
            }
            if (st0[i].innerHTML == 1) {
                st0[i].innerHTML = "交易中";
            }
            if (st0[i].innerHTML == 2) {
                st0[i].innerHTML = "交易完成";
            }
            if (st0[i].innerHTML == 3) {
                st0[i].innerHTML = "交易失败";
            }
            if (st0[i].innerHTML == 4) {
                st0[i].innerHTML = "已删除";
            }
        }
        //审核状态（0.待审核1.审核中2.审核成功）
        for (var j = 0; j < au0.length; j++) {
            if (au0[j].innerHTML == 0) {
                au0[j].innerHTML = "待审核";
                au0[j].style.color = "#d66628";
            }
            if (au0[j].innerHTML == 1) {
                au0[j].style.color = "#22b14c";
                au0[j].innerHTML = "审核中";
            }
            if (au0[j].innerHTML == 2) {
                au0[j].style.color = "#32689f";
                au0[j].innerHTML = "已通过";
            }
            if (au0[j].innerHTML == 3) {
                au0[j].style.color = "#ed1c24";
                au0[j].innerHTML = "未通过";
            }
        }
       /* var page = new minmypage(27);
        page.init();
        page.show();
      var next = function(){page.next()};
        var pageUp = function(){ page.pageUp() };
        var pageFirst =function(){ page.pageFirst() };
        var pageLast = function(){ page.pageEnd()};*/
    }


    //===========================================================================
    //点击详情页 根据票据号获取票据对象
    var _that = null;
    $(".details").click(function () {
        var positiveNumber = $(this).parent().parent().children(':first').html();
        _that = this;
        $.ajax({
            url: "${ctx}/transaction/getPositiveByNumber",
            type: "post",
            data: {positiveNumber: positiveNumber},
            dataType: "json",
            success: function (date) {
                function getLocalTime(nS) {
                    return new Date(parseInt(nS)).toLocaleString().replace(/:\d{1,2}$/, ' ');
                }

                $("#positiveNumber").html(date.positiveNumber);
                $("#contacts").html(date.contacts);
                $("#contactsPhone").html(date.contactsPhone);
                $("#createPerson").html(date.createPerson);
                $("#createTime").html(getLocalTime(date.createTime));
                $("#positiveMoney").html(date.positiveMoney);
                $("#startTime").html(getLocalTime(date.startTime));
                $("#endTime").html(getLocalTime(date.endTime));
                $("#positiveAddress").html(date.positiveAddress);
                $("#userId").html(date.userId);
                $("#acceptorType").html(date.acceptorType);
                $("#ticketPerson").html(date.ticketPerson);
                $("#acceptorid").html(date.acceptorid);
                $("#managers").html(date.managers);
                $("#auditPerson").html(date.auditPerson);
                $("#updatePerson").html(date.updatePerson);
                $("#updateTime").html(getLocalTime(date.updateTime));
            },
            error: function (e) {
                //alert("错误");
            }
        });
    })

    //======================================================================
    //审核票据 点击“审核不通过”  审核状态（0.待审核  1.审核中   2.审核通过  3.审核不通过）
    //获取党情审批状态
    $("#AuditState_no").click(function () {
        var auditState = _that.parentNode.parentNode.children[7].children[0].innerHTML;
        if (auditState == "待审核") {
            //传给后台的参数  ：String auditState（审核状态）,String positiveNumber（对应票号）
            var auditState = 3;
            $.ajax({
                url: "${ctx}/transaction/AuditState_no",
                type: "post",
                data: {auditState: '3'},
                dataType: "text",
                success: function (date) {
                    alert("确认此操作？");
                    //location.reload();
                    window.location.href = "${ctx}/transaction/bill_management";
                },
                error: function (e) {
                    //alert("错误");
                }
            });
        }
    })
    $("#auditState_yes").click(function () {
        //传给后台的参数  ：String auditState（审核状态）,String positiveNumber（对应票号）
        var auditState = _that.parentNode.parentNode.children[7].children[0].innerHTML;
        if (auditState == "待审核") {
            var auditState = 2;
            $.ajax({
                url: "${ctx}/transaction/AuditState_yes",
                type: "post",
                data: {auditState: '2'},
                dataType: "text",
                success: function (date) {

                    alert("确认此操作？");
                    window.location.href = "${ctx}/transaction/bill_management";
                    //location.reload();
                },
                error: function (e) {
                    //alert("错误");
                }

            });
        }
    })
    //=========================================================================
    //添加票据
    //2.银承纸票
    var hh = null;
    $("#acceptor0").change(function () {
        hh = $("#acceptor0").val(); //取option标签value属性值
    })
    $("#submit").click(function () {
        var positiveNote = $("#positiveNote0").val();
        var positiveBack = $("#positiveBack0").val();
        var positiveNumber = $("#positiveNumber0").val();
        var ticketPerson = $("#ticketPerson0").val();
        var acceptor = hh;//承兑人  获取选择的 对应承兑人的value属性值
        var positiveMoney = $("#positiveMoney0").val();
        var startTime = $("#startTime0").val();
        var endTime = $("#endTime0").val();
        var positiveAddress = $("#positiveAddress0").val();
        var contacts = $("#contacts0").val();
        var contactsPhone = $("#contactsPhone0").val();
        var remark = $("#remark0").val();
        var positiveType = '2';
        if(positiveNote==""||positiveBack==""||positiveNumber==""||ticketPerson==""||acceptor==""||positiveMoney==""
                ||startTime==""||endTime==""||positiveAddress==""||contacts==""||contactsPhone==""||remark==""||positiveType==""){
            alert('请完善信息');
            return false;
        }else{
    $.ajax({
        url: "${ctx}/transaction/addPositive",
        type: "GET",
        async: false,
        data: {
            positiveNote: positiveNote,
            positiveBack: positiveBack,
            positiveNumber: positiveNumber,
            ticketPerson: ticketPerson,
            acceptor: acceptor,
            positiveMoney: positiveMoney,
            startTime: startTime,
            endTime: endTime,
            positiveAddress: positiveAddress,
            contacts: contacts,
            contactsPhone: contactsPhone,
            remark: remark,
            positiveType: positiveType
        },
         dataType: "JSON",
         success: function () {
             window.location.href = "${ctx}/transaction/bill_management";
         },
         error: function (e) {
             window.location.href = "${ctx}/transaction/bill_management";
         }
    })
        }
    });
    //3.银承电票
    var hh1 = null;
    $("#acceptor1").change(function () {
        hh1 = $("#acceptor1").val(); //取option标签value属性值
    })
    $("#submit1").click(function () {
        var positiveNote = $("#positiveNote1").val();
        var positiveBack = $("#positiveBack1").val();
        var positiveNumber = $("#positiveNumber1").val();
        var ticketPerson = $("#ticketPerson1").val();
        var acceptor = hh1;//承兑人  获取选择的 对应承兑人的value属性值
        var positiveMoney = $("#positiveMoney1").val();
        var startTime = $("#startTime1").val();
        var endTime = $("#endTime1").val();
        var positiveAddress = $("#positiveAddress1").val();
        var contacts = $("#contacts1").val();
        var contactsPhone = $("#contactsPhone1").val();
        var remark = $("#remark1").val();
        var positiveType = '3';
        if(positiveNote==""||positiveBack==""||positiveNumber==""||ticketPerson==""||acceptor==""||positiveMoney==""
                ||startTime==""||endTime==""||positiveAddress==""||contacts==""||contactsPhone==""||remark==""||positiveType==""){
            alert('请完善信息');
            return false;
        }else{
        $.ajax({
            url: "${ctx}/transaction/addPositive",
            type: "GET",
            async: false,
            data: {
                positiveNote: positiveNote,
                positiveBack: positiveBack,
                positiveNumber: positiveNumber,
                ticketPerson: ticketPerson,
                acceptor: acceptor,
                positiveMoney: positiveMoney,
                startTime: startTime,
                endTime: endTime,
                positiveAddress: positiveAddress,
                contacts: contacts,
                contactsPhone: contactsPhone,
                remark: remark,
                positiveType: positiveType
            },
            dataType: "JSON",
            success: function () {
                window.location.href = "${ctx}/transaction/bill_management";
            },
            error: function (e) {
                window.location.href = "${ctx}/transaction/bill_management";
            }
        })
        }
    });
    //4.商承电票
    var hh2 = null;
    $("#acceptor2").change(function () {
        hh2 = $("#acceptor2").val(); //取option标签value属性值
    })
    $("#submit2").click(function () {
        var positiveNote = $("#positiveNote2").val();
        var positiveBack = $("#positiveBack2").val();
        var positiveNumber = $("#positiveNumber2").val();
        var ticketPerson = $("#ticketPerson2").val();
        var acceptor = hh2;//承兑人  获取选择的 对应承兑人的value属性值
        var positiveMoney = $("#positiveMoney2").val();
        var startTime = $("#startTime2").val();
        var endTime = $("#endTime2").val();
        var positiveAddress = $("#positiveAddress2").val();
        var contacts = $("#contacts2").val();
        var contactsPhone = $("#contactsPhone2").val();
        var remark = $("#remark2").val();
        var positiveType = '4';
        if(positiveNote==""||positiveBack==""||positiveNumber==""||ticketPerson==""||acceptor==""||positiveMoney==""
                ||startTime==""||endTime==""||positiveAddress==""||contacts==""||contactsPhone==""||remark==""||positiveType==""){
            alert('请完善信息');
            return false;
        }else{

        $.ajax({
            url: "${ctx}/transaction/addPositive",
            type: "GET",
            async: false,
            data: {
                positiveNote: positiveNote,
                positiveBack: positiveBack,
                positiveNumber: positiveNumber,
                ticketPerson: ticketPerson,
                acceptor: acceptor,
                positiveMoney: positiveMoney,
                startTime: startTime,
                endTime: endTime,
                positiveAddress: positiveAddress,
                contacts: contacts,
                contactsPhone: contactsPhone,
                remark: remark,
                positiveType: positiveType
            },
            dataType: "JSON",
            success: function () {
                window.location.href = "${ctx}/transaction/bill_management";
            },
            error: function (e) {
                window.location.href = "${ctx}/transaction/bill_management";
            }
        })
        }
    });

    //=========================================================================
    /*$(document).ready(function (e) {
     $('#select').click();
     })*/
    $("#select").click(function () {

        //产品类型  positiveType( 数字  获得数据字典表中对应的 id)
        var positiveType = $(".producttype .inbtn .button1").attr("name");
        console.log(positiveType);
        //票据金额 positiveMoney
        var positiveMoney_min = $("#positiveMoney_min").val();
        var positiveMoney_max = $("#positiveMoney_max").val();
        console.log(positiveMoney_min);
        console.log(positiveMoney_max);
        //票号 positiveNumber
        var positiveNumber = $("#positiveNumber_").val();
        console.log(positiveNumber);

        //承兑人类型 acceptorType  (数字   获得数据字典表中对应的 id)
        var acceptorType = $(".acceptor .inbtn .button1").attr("name");
        console.log(acceptorType);

        // 票据期限 positiveTime (获得数字)
//      var positiveTime = $(".bill .inbtn .button1").val();
        var positiveTime = $(".time .button1").attr("name");
        console.log(positiveTime);

        //票源地址 positiveAddress
        var positiveAddress = $("#positiveAddress_").val();
        console.log(positiveAddress);
        //var positive="{\"positiveNumber\":23334}"
        //var positive="{\"positiveType\":positiveType}";
        $.ajax({
            url: "${ctx}/transaction/bill_management",
            type: "POST",
            async: false,

            data: {
                positiveType: positiveType,//票据类型
                positiveMoney_min: positiveMoney_min,//票价最大值
                positiveMoney_max: positiveMoney_max,//票价做小值
                positiveNumber: positiveNumber,//询价方（先不做）
                acceptorType: acceptorType,//承兑人类型
                positiveTime: positiveTime,//票据期限
                positiveAddress: positiveAddress//票源地址
            },
            success: function (d) {
                location.reload();
            },
            error: function (e) {
                location.reload();
            }
        })

    });

    // 票据期限 positiveTime (获得数字)

    //============================================================================
    //    单击审核状态弹出审核框
    $(".particulars .back").click(function () {
        $(".particulars").hide();
    })

    var check = document.getElementsByClassName("specifics");
    var checkWindow = document.getElementById("particulars");
    var b = document.getElementsByTagName('b');

    for (var i = 0; i < b.length; i++) {
        b[i].index = i;
        if (b[i].className == "audit1") {
            for (var j = 0; j < check.length; j++) {
                check[b[i].index].disabled = false;
            }
        }
    }
    for (var i = 0; i < check.length; i++) {
        check[i].index = i
        check[i].onclick = function () {
            checkWindow.style.display = "block";
            var checkConfirm = document.getElementById("check-user-btn");
            var checkBtn = checkConfirm.getElementsByTagName("input");
//            this.disabled = true;
            var that = b[this.index];
            checkBtn[0].onclick = function () {
                checkWindow.style.display = "none";
//                that.className = "audit2";
//                that.innerHTML = "未通过";
                that.disabled = true;
            }
            checkBtn[1].onclick = function () {
                checkWindow.style.display = "none";
                // that.className = "audit3";
                // that.innerHTML = "已通过";
                that.disabled = true;
            }
        }
    }

    /*    _init_area();
     document.getElementById('show').innerHTML = "请选择地区";
     var showArea = function () {
     document.getElementById('show').innerHTML = "<p>" + document.getElementById('s_province').value +
     document.getElementById('s_city').value +
     document.getElementById('s_county').value + "</p>"
     }
     document.getElementById('s_county').setAttribute('onchange', 'showArea()')*/





</script>

</body>

</html>