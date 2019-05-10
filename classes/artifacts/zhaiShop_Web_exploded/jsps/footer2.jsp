<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath}/css/css(1)" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style-t.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/qmx/common-c.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/qmx/color-style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/qmx/flow.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/qmx/layui.css">
<script src="${pageContext.request.contextPath}/qmx/common.js.下载" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/qmx/Area.js.下载" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/qmx/jquery.cookie.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/qmx/layui.js.下载"></script>

<div class="links-box main_w"><img src="${pageContext.request.contextPath}/qmx/14803038465459.png"></div>

<div class="foot-classification main_w">
    <ul>
        <li>新手上路</li>
        <li><a href="${pageContext.request.contextPath}/contentJsp/gouwuliucheng.jsp" target="_blank">购物流程</a></li>
        <li><a href="${pageContext.request.contextPath}/contentJsp/cahngjianwenti.jsp">常见问题</a></li>
    </ul>
    <ul>
        <li>支付方式</li>
        <li><a href="${pageContext.request.contextPath}/contentJsp/zhuanzhangzhifu.jsp" target="_blank">转账支付</a></li>
        <%-- <li><a href="http://www.baidu.com" target="_blank">公务卡支付</a></li>
         <li><a href="http://www.baidu.com" target="_blank">银行支票支付</a></li>--%>
    </ul>
    <ul>
        <li>配送服务</li>
        <li><a href="${pageContext.request.contextPath}/contentJsp/yanhuo.jsp" target="_blank">验货与签收</a></li>
        <%--<li><a href="http://www.baidu.com" target="_blank">订单进度查询</a></li>--%>
        <li><a href="http://www.baidu.com" target="_blank">配送范围及收费标准</a></li>
    </ul>
    <ul>
        <li>售后服务</li>
        <li><a href="${pageContext.request.contextPath}/contentJsp/tuikuan.jsp" target="_blank">退款说明</a></li>
        <li><a href="${pageContext.request.contextPath}/contentJsp/tuihuan.jsp" target="_blank">退换货政策</a></li>
        <li><a href="${pageContext.request.contextPath}/contentJsp/tuihuoliucheng.jsp"  target="_blank">退换货流程</a></li>
    </ul>
    <ul>
        <li>合作入驻</li>
        <li><a href="http://www.baidu.com">伙伴入驻</a></li>
        <li><a href="${pageContext.request.contextPath}/contentJsp/lianxiwomen.jsp" target="_blank">联系我们</a></li>
    </ul>
    <ul class="classification_time">
        <li class="phone">6018-3288</li>
        <li class="service_time"><a href="javascript:void(0);"> 24小时电话客服</a></li>
        <li class="customer"><a href="javascript:void(0);">（仅收市话费）</a></li>
    </ul>
</div>

<div class="site-footer clear">
    <div class="footer-related">
        <div class="footer-info">
            <div class="info-text">
                <!-- 底部导航 -->
                <p class="nav-bottom">
                    <a href="${pageContext.request.contextPath}/index.jsp" target="_blank">首页</a> <em>|</em>
                    <a href="" target="_blank">资讯</a> <em>|</em>
                    <a href="" target="_blank">品牌专区</a> <em>|</em>
                    <a href="" target="_blank">采购流程</a> <em>|</em>
                    <a href="" target="_blank">专属服务</a> <em>|</em>
                    <a href="" target="_blank">我要合作</a> <em>|</em>
                    <a href="${pageContext.request.contextPath}/contentJsp/lianxiwomen.jsp" target="_blank">联系我们</a> <em>|</em>
                    <a href="" target="_blank">关于企明星</a> <em>|</em>
                    <a href="http://222.143.21.205:8081/" target="_blank">政采商城</a>
                </p>
                <p> Copyright 企明星科技有限公司 (www.qmxchina.cn) 版权所有 <a href="http://www.beian.miit.gov.cn/">  豫ICP备17002894  </a> </p>
                <p class="company-info" style="display: none;">洛阳王城大道111号洛阳信息科技城2楼C-204、205、206、207</p>

            </div>
        </div>
    </div>
</div><!-- 底部 _end-->
<!-- 回到顶部代码 开始 -->
<div class="go-top dn" id="go-top">
    <a href="javascript:;" class="uc-2vm"></a>
	<%--<div class="uc-2vm-pop dn">
		<h2 class="title-2wm">用微信扫一扫</h2>
		<div class="logo-2wm-box">
			&lt;%&ndash;<img src="${pageContext.request.contextPath}/images/weixin.jpg" alt="IT技术宅" width="240" height="240">&ndash;%&gt;
		</div>
	</div>--%>
    <a href="javascript:;" class="go"></a>
</div>
<div class="cd-cart-container">
    <div class="cd-cart">

        <div class="wrapper">
            <div style="padding-top: 10px;padding-left: 13px"><br>
                <a href="${pageContext.request.contextPath}/" ><FONT FACE="楷体" color="red" size="5">购物</FONT></a></div>


        </div>

    </div>
</div>
  <script>
$(function(){
	$(window).on('scroll',function(){
		var st = $(document).scrollTop();
		if( st>0 ){
			if( $('#main-container').length != 0  ){
				var w = $(window).width(),mw = $('#main-container').width();
				if( (w-mw)/2 > 70 )
					$('#go-top').css({'left':(w-mw)/2+mw+20});
				else{
					$('#go-top').css({'left':'auto'});
				}
			}
			$('#go-top').fadeIn(function(){
				$(this).removeClass('dn');
			});
		}else{
			$('#go-top').fadeOut(function(){
				$(this).addClass('dn');
			});
		}
	});
	$('#go-top .go').on('click',function(){
		$('html,body').animate({'scrollTop':0},500);
	});

	$('#go-top .uc-2vm').hover(function(){
		$('#go-top .uc-2vm-pop').removeClass('dn');
	},function(){
		$('#go-top .uc-2vm-pop').addClass('dn');
	});
});
</script>