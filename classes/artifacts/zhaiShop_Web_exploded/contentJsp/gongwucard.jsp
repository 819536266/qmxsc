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
    <span style="line-height: 2;">一、预算单位公务员（以下简称“持卡人”）持公务员卡，在信用额度内进行公务消费后，将发票和POS凭证（以下简称“报销凭证”）交给财务部门报销。&nbsp;</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">二、预算单位财务人员（以下简称“财务人员”）收到报销凭证后，要在免息还款期结束前完成报销。&nbsp;</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">三、财务人员登录公务卡支付管理系统，录入报销凭证中的卡号、交易日期、交易金额等要素，查询、核实要报销的公务消费是否属实。如果属实，则系统自动显示这笔交易的明细数据。&nbsp;</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">四 、财务人员对公务消费核实后，在公务卡支付管理系统进行还款明细的汇总，在正式提交还款前可对还款明细进行新增、维护。&nbsp;</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">五、财务人员对还款明细确认报销后，打印财政授权支付凭证和公务卡汇总还款明细信息，并发送支付凭证信息给发卡银行。&nbsp;</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">六、银行柜员在营业柜台收到财务人员提交的财政授权支付凭证和公务卡汇总还款明细信息后，登录银行侧公务卡支付管理系统，通过该系统与纸质的财政授权支付凭证和公务卡汇总还款明细信息进行核对，核对无误后，通过柜面交易逐笔进行转帐还款，或者在日终批量时由系统自动进行逐笔转帐还款。&nbsp;</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">七、账务处理：首先由零余额账户转账到过渡账户，再由过渡账户账转账到公务卡上。&nbsp;</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">八、公务卡还款的次日，发卡银行将公务卡还款日期返传给财政侧的公务卡支付管理系统。</span>
</p>
<p>
    <br/>
</p>
</div>
<%@include file="../jsps/footer.jsp"%>
</body>
</html>