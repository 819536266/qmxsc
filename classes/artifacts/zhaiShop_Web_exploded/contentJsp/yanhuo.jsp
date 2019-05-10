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
    <span style="line-height: 2;"><strong>一、收货</strong></span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">1、什么是校验码？</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">校验码是为了确定收货人身份，保障您的货物安全，在您购物后向您发送的四位数字的提货密码。目前企明星电子科技已经取消了配送的校验码，但自提点或门店自提仍需要提供校验码。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">2、如何查询校验码？</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">我们会在您的货物到达自提点之时发送一条短信通知您可以自提您的包裹，通知的短信内包含校验码。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">您还可登录企明星电子科技商城，进入”我的商城-订单中心-订单详情“页面查询（仅自提需校验码收货）。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">3、门店自提的订单</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">当货物配送到订单指定的门店后，企明星电子科技商城工作人员会在第一时间与您短信联系，您在提货时需要提供“收货校验码”方可提货、验机。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">4、配送上门的订单</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">当货物按您订单地址配送前，企明星电子科技商城配送人员会在第一时间与您电话联系，如您已经在线支付全款，则您在收货时即可直接收货、验机；如您下单时选择货到付款方式支付，请提前备好零钱或者银行卡，为了保障您的权益，请当面点清货款。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;"><strong>二、验货</strong></span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">在您付款和签收前，请先核对以下内容：</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">1、货物订单编号和收货人姓名等信息是否正确；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">2、货物外包装是否有明显挤压变形、破损或受潮状况；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">3、货物外包装上印有企明星电子科技商城logo的封带是否完好，包装是否完好；</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">4、如果是货到付款，配送人员收取的费用与订单上标明的费用是否一致。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">如您在检查后发现有异常，请您一定要向配送人员说明情况并由配送人员联系企明星电子科技商城客服（拨打400-699-0786），您可以当场拒收。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;"><strong>三、试机</strong></span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">由于配送人员非专业的销售人员，对您购买的产品不具备专业的判断能力，所以货到后您只需要确认产品外观是否有损伤即可，不提供当场通电检测服务，请您谅解。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">若您所购商品为手机数码类产品，您可在配送人员在场的情况下对商品进行简单试用，检查是否能正常开关机。并且请您检查装内的三包卡，查看保修单是否已贴IMEI条码，未张贴的则从包装盒上揭下，将其贴在保单上，在配送人员指导下按规范填写三包卡。如试机后发现不能正常使用，请务必向配送人员说明情况并联系企明星电子科技商城客服或商家客服进行反馈和登记，企明星电子科技商城会根据实际情况为您做相应处理。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;"><strong>四、签收</strong></span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">1、当一切检查无误之后，请在我们为您提供的客户面单上签上您的姓名，确认收货。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">2、无需安装的商品收货时，请检查外包装是否完好无损并开箱检查机器外观、核实配件是否齐全后进行签收；需安装类商品请在安装工人上门后开箱验机，货物签收后安装 工人未上门前，请勿拆箱。部分城市会有所差异，请按照物流工人指导进行验机、收货。</span>
</p>
<p style="box-sizing: content-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;">
    <span style="line-height: 2;">3、对于保修卡空白需要盖章的情况，自营商品您可凭购物发票至企明星电子科技当地任意门店盖章即可；第三方商家商品请联系商家盖章。</span>
</p>
<p>
    <br/>
</p>
</div>
<%@include file="../jsps/footer.jsp"%>
</body>
</html>