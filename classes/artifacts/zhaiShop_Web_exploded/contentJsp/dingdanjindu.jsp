<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>企明星电子商城</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" type="image/x-icon">
    <link href="${pageContext.request.contextPath}/css/top.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/detail.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/layer/layer.js"></script>
    <style>
        body,td,th {
            font-size: 15px;color: #1d1007;
            font-family: 楷体;
        }
    </style>
</head>
<body>
<%@include file="topp.jsp"%>
<div class="yershop_wrapper">
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">您在网站成功提交订单后，订单可能会有以下几种状态：</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">1、等待支付：订单有效期限内（一般为提交订单的当天），顾客尚未付款；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">2、支付完成：顾客成功提交订单，并完成支付；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">3、货到付款：顾客成功提交订单，且支付方式已选择货到付款；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">4、正在出库：发货仓库正在拣配和包装订单商品；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">5、商品出库：订单商品已从发货仓库配送出库；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">6、等待收货：企明星电子科技已安排送货上门，请做好收货准备；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">7、等待自提：企明星电子科技自提门店已收货，请尽快上门自提；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">8、收货完成：企明星电子科技已送货上门，且顾客已收到订单货物；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">9、自提完成：顾客已到自提点完成订单商品的自提；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">10、订单取消：在订单有效期限内，未完成支付，订单则会自动取消；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">11、退货处理中：顾客已提交退货申请，企明星电子科技正在处理退货商品入库，待商品入库后将退还顾客支付的订单金额；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">12、退货完成：顾客提交的退货申请企明星电子科技已处理完成，且已退还顾客所支付的订单金额。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">13、安装完成：顾客收到需要安装的商品，且企明星电子科技售后已完成上门安装服务；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 3;">14、异常订单：您在下单时操作不当或系统原因，会出现异常订单，请您及时联系我们400-699-0786或在线客服，我们会在第一时间为您解决。</span>
</p>
<p>
    <br/>
</p>
</div>
<%@include file="../jsps/footer.jsp"%>
</body>
</html>