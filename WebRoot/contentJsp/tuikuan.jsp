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
    <span style="line-height: 2;"><strong>一、退款方式</strong></span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">1、页面申请：您可以在首页“我的购物车-退换货申请”中申请退货成功后，企明星商城将按原支付方式原路退回；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">2、与客服联系：若因卡注销等异常状态导致退款失败，请联系客服协助为您办理退款事宜。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;"><strong>二、退款说明</strong></span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">1、银行卡退款：我们将您的货款退至您支付时使用的银行卡账户，其中货到付款现金支付需要您提供准确的银行卡账户信息（包括持卡人姓名、银行卡号、开户行名称（5元以下的退款需精确到支行）），方便我们尽快给您打款；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">2、其他支付方式组合的，支付部分退回，非支付部分同以上退款方式。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;"><strong>三、退款周期</strong></span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">1、在线支付，1-5个工作日，若超过5个工作日退款仍未到账请联系客服协助您解决；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">2、货到付款，3-5个工作日；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">3、退款周期仅供您参考，具体退款周期可能会受银行、相关机构规定等相关因素影响。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;"><strong>四、退货取件费</strong></span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">1、企明星商城自营且由企明星商城发货的商品在完成收货后，对于商品质量或企明星商城原因导致的退货，我司上门取件时免收取件费；对于顾客原因（选购失误、无理由退货）导致的退货，将收取取件费，取件费从退款中扣减，小件商品收取8元/件，大件商品收取30元/件（企明星商城自营且由厂家发货的商品，取件费以厂家的收费标准为准）；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">2、订单原送货方式非送货上门的，请您将需要办理退货的商品送至我司就近门店或寄回（详细邮寄地址请点击在线客服获取），待我司收到商品后，我们会尽快为您办理退货。详细说明详见《企明星商城自营商品退货取件费说明》。</span>
</p>
<p>
    <span style="line-height: 2;"><br/></span>
</p>
<p>
    <br/>
</p>
</div>
<%@include file="../jsps/footer.jsp"%>
</body>
</html>