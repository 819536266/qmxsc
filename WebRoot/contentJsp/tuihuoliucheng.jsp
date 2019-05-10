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
    <span style="line-height: 2;">企明星商城为您提供了在线受理退换货的服务，您可在申请退换货前了解退换货相关条款，确认符合退换货标准后您只需登陆个人账户，在“我的购物—退换货服务”页面中根据提示在线提交申请信息即可。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;"><strong>1、在线提交退换货申请</strong></span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">您在收到订单签收后，若发现商品存在影响使用的故障，您可以在“我的购物—退换货申请”中在线发起退换货申请，由企明星商城客服根据相关规定为您办理退换货事宜。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;"><strong>2、申请成功</strong></span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">企明星商城客服会第一时间与您取得联系了解产品情况，请您务必登记准确的联系方式，期间保持手机/电话畅通；申请成功后您可在“我的购物—退换货查询”的具体单据中，随时查询了解进度。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;"><strong>3、申请失败</strong></span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">如商品情况不符合企明星商城退换货政策，您的退换货申请将会审核不通过，此时受理终止。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;"><strong>4、上门办理</strong></span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">不需检测报告类：企明星商城工作人员上门详细鉴定后会取走问题商品或反馈至售后，我司工作人员会跟进联系您；需检测报告类：需厂家或授权网点售后人员确认故障现象并提供检测报告，企明星商城收到检测报告后会尽快安排企明星电子科技配送人员上门，到时请准备好发票、商品、赠品、附件、原包装、厂商检测报告，等待配送人员上门。</span>
</p>
<p>
    <br/>
</p>
</div>
<%@include file="../jsps/footer.jsp"%>
</body>
</html>