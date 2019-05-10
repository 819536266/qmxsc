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

<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px; font-weight: bold;">
    <span style="line-height: 2;">1、在企明星电子科技商城上，有哪几种支付方式？</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px;">
    <span style="line-height: 2;">答：商城中支付方式有银行卡支付、微信支付、支付宝支付等支付方式。</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px; font-weight: bold;">
    <span style="line-height: 2;">2、自提订单是否缴费？</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px;">
    <span style="line-height: 2;">答：不缴费。</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px; font-weight: bold;">
    <span style="line-height: 2;">3、为什么我的页面里选择不了货到付款？</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px;">
    <span style="line-height: 2;">答：</span><span style="line-height: 2;">1)、商品和延保同时购买时，不能选择货到付款；</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px;">
    <span style="line-height: 2;">2)、延保商品不能选择货到付款；</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px;">
    <span style="line-height: 2;">3)、购买商品选择货到付款，需要将自己填写的配送信息经系统确认无误后，方可选择货到付款；</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px;">
    <span style="line-height: 2;">4)、购买商品选择“门店自提”时不能选择货到付款；</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px;">
    <span style="line-height: 2;">5)、前五个货到付款订单未支付前，不能再选择货到付款支付方式，付款页面也会提示您有货到付款未销订单，这表示您之前下过货到付款的订单尚未支付成功，需要您第二次下单时，选择非货到付款的支付方式，以消除前一未销订单记录；</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px;">
    <span style="line-height: 2;">6)、有不良信用记录是不能选择货到付款的，比如有过拒收货物的行为等。</span><span style="line-height: 3;"></span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px; font-weight: bold;">
    <span style="line-height: 2;">4、分期付款可以同时购买多件商品吗？</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px;">
    <span style="line-height: 2;">答：可以的，最多5件。</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px; font-weight: bold;">
    <span style="line-height: 2;">5、分期付款可以同时购买多件商品吗？</span>
</p>
<p class="lead" style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; font-size: 15px;">
    <span style="line-height: 2;">在提交订单页面，在“发票信息—发票类型”，选择发票类型，按提示填写发票抬头。</span>
</p>
<p>
    <br/>
</p>
</div>
<%@include file="../jsps/footer.jsp"%>
</body>
</html>