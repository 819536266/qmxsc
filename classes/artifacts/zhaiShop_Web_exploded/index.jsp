<%@page import="me.ilt.Bean.goodsBean"%>
<%@page import="me.ilt.Bean.smallTypeBean"%>
<%@page import="me.ilt.Bean.bigTypeBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	if(request.getAttribute("gwcGoodsList")==null){
		pageContext.forward("/indexServlet");
	}
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="${pageContext.request.contextPath}/">

<title>首页_企明星电子商城</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" type="image/x-icon">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/csss.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.caroufredsel-6.0.4-packed.js" ></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/focus.js" ></script>
<link href="${pageContext.request.contextPath}/css/top.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/lunbo.css" rel="stylesheet" />
	<%--<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/common-c.css" rel="stylesheet" />--%>
<!-- 轮播css -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.lazyload.min.js"></script>
    <div id="mark_mask" style="display:none;position:fixed;top:40px;left:0;z-index:99999999;height:1000px;width:100%;background:rgba(0,0,0,0.4);">

    </div>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/qmx/index.css">
    <script src="${pageContext.request.contextPath}/qmx/jquery_003.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/qmx/index.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/qmx/common-c.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/qmx/color-style.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/qmx/layui.css">
    <script src="${pageContext.request.contextPath}/qmx/jquery_003.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/qmx/common.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/qmx/template.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/qmx/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/qmx/floatadv.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/qmx/layui.js"></script>
	<style>
		body,td,th {
			font-size: 15px;color: #1d1007;
			font-family: 楷体;
		}
	</style>
</head>

<body>
<%@ include file="jsps/top.jsp"  %>
<div class="yershop_wrapper">
    <%@ include file="jsps/hader.jsp" %>
</div>
<div >

    <div class="category-box" >

        <div class="main_w">
            <div class="home-category fl"> <a href="javascript:;" class="menu-event" title="全部商品分类"> <i></i> 全部商品分类 </a> </div>
            <div class="all-category fl" id="nav">
                <ul>
                    <li class="fl">
                        <a class="nav current" href="${pageContext.request.contextPath}/" target="_top" title="首页">首页</a>
                    </li>
                    <li class="fl">
                        <a class="nav" href="" target="_blank" title="资讯">资讯</a>
                        <span class="nav-icon"><img src="${pageContext.request.contextPath}/qmx/14764350481652.png"></span>
                    </li>
                    <li class="fl">
                        <a class="nav" href="" target="_blank" title="品牌专区">品牌专区</a>
                    </li>
                    <li class="fl">
                        <a class="nav" href="" target="_blank"  title="采购流程">采购流程</a>
                    </li>
                    <li class="fl">
                        <a class="nav" href="" target="_blank" title="专属服务">专属服务</a>
                    </li>
                    <li class="fl">
                        <a class="nav" href="" target="_blank" title="我要合作">我要合作</a>
                    </li>
                    <li class="fl">
                        <a class="nav" href="${pageContext.request.contextPath}/contentJsp/lianxiwomen.jsp" target="_blank" title="联系我们">联系我们</a>
                    </li>
                    <li class="fl">
                        <a class="nav" href="http://222.143.21.205:8081/" target="_blank" title="政采商城">政采商城</a>
                        <span class="nav-icon"><img src="${pageContext.request.contextPath}/qmx/14884400690790.gif"></span>
                    </li>
                    <li class="fl">
                        <a class="nav phone-wh" href="javascript:;" title="400-400-400"><img src="${pageContext.request.contextPath}/qmx/400-phone.png"><span>服务热线 0379-6018-3288</span></a>
                    </li>

                </ul>
            </div>
            <!-- 全部分类 -->
            <div class="category-layer" >
                <span class="category-layer-bg bg-color" ></span>
                <c:forEach items="${floor }" var="bigType">
                                   <div class="list">
                                   <dl class="cat">
                                            <dt class="cat-name"> <a href="search?bid=${bigType.id }&p=1" target="_blank" title="${bigType.name }">${bigType.name }</a></dt>
                                            <i class="right-arrow">&gt;</i>
                                    </dl>

                                      <div class="categorys" style="display: none;">
                        <div class="item-left fl">
                            <div class="subitems">

                                <dl class="fore1">
                                                       <c:forEach items="${bigType.smallTypeList }"
                                                           var="smallType">
                                                            <dd> <a href="search?sid=${smallType.id }&p=1" target="_blank" title="${smallType.name
                                                                       }">${smallType.name
                                                                       }</a>
                                                            </dd>
                                                       </c:forEach>
                                </dl>
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                               </c:forEach>


            </div>
        </div>
    </div>
    <input type="hidden" id="ticketId">
    <input type="hidden" id="sessionId">
    <div class="template-one">
        <div class="banner">
            <ul id="fullScreenSlides" class="full-screen-slides">
                <c:forEach items="${slideList }" varStatus="s"  var="u">
                    <c:if test="${s.index==0}">
                        <li style="background: rgba(0, 0, 0, 0) url('${pageContext.request.contextPath}/${u.proPic }') repeat scroll center center; display: list-item;"></li>
                    </c:if>
                    <c:if test="${s.index!=0}">
                        <li style="background: rgba(0, 0, 0, 0) url('${pageContext.request.contextPath}/${u.proPic }') repeat scroll center center; display:none;"></li>
                    </c:if>


                </c:forEach>

                <%--<li style="background: rgba(0, 0, 0, 0) url(&quot;http://image.hngpmall.com/upload/image/20170904/4c3262f72bb449d29fcc1f281560f189.jpg&quot;) repeat scroll center center; display: none;"><a href="http://www.hngpmall.com/" target="_blank" title="">&nbsp;</a> </li>
                <li style="background: rgba(0, 0, 0, 0) url(&quot;http://image.hngpmall.com/upload/image/20171030/1a5aa697d09a433ab03f6266169d28ab.png&quot;) repeat scroll center center; display: none;"><a href="http://www.hngpmall.com/shop/product/list?id=fd06caeeac4d489cba6a15bf068ae78b" target="_blank" title="">&nbsp;</a> </li>
                <li style="background: rgba(0, 0, 0, 0) url(&quot;http://image.hngpmall.com/upload/image/20171030/52e40c9963684276af422f79c2c35d1f.png&quot;) repeat scroll center center; display: none;"><a href="http://www.hngpmall.com/shop/product/list?id=6382a2edacae466f912aaebcfe748762" target="_blank" title="">&nbsp;</a> </li>
                <li style="background: rgba(0, 0, 0, 0) url(&quot;http://image.hngpmall.com/upload/image/20171030/cc87774f63f74326b5012f9ab04ddf40.png&quot;) repeat scroll center center; display: none;"><a href="http://www.hngpmall.com/shop/product/list?id=9b7abd40a5954b02a14af711d7962c8c" target="_blank" title="">&nbsp;</a> </li>--%>
            </ul>
            <ul class="full-screen-slides-pagination">
                <li class="current"> <a href="javascript:void(0);"></a> </li>
                <c:forEach items="${slideList }" varStatus="s" end="${slideList.size()-2}" var="u">
                    <c:if test="${s.index==0}">
                        <li class="current"> <a href="javascript:void(0);"></a> </li>
                    </c:if>
                    <c:if test="${s.index!=0}">
                        <li > <a href="javascript:void(0);"></a> </li>
                    </c:if>
                </c:forEach>
            </ul>

        </div>

    </div>

					<script type="text/javascript" src="${pageContext.request.contextPath}/js/slide.js"></script>
					<!-- 轮播js -->
<script>
$('.ck-slide').ckSlide({
	dir: 'x', //左右滚动
	autoPlay: true
});
</script>
<script type="text/javascript" language="javascript">
var PicTotal = 5;
var CurrentIndex;
var ToDisplayPicNumber = 0;
$("div.LunBo div.LunBoNum span").click(DisplayPic);
function DisplayPic() {
// 测试是父亲的第几个儿子
CurrentIndex = $(this).index();
// 删除所有同级兄弟的类属性
$(this).parent().children().removeClass("CurrentNum")
// 为当前元素添加类
$(this).addClass("CurrentNum");
// 隐藏全部图片
var Pic = $(this).parent().parent().children("ul");
$(Pic).children().hide();
// 显示指定图片
$(Pic).children("li").eq(CurrentIndex).show();
}
function PicNumClick() {
$("div.LunBo div.LunBoNum span").eq(ToDisplayPicNumber).trigger("click");
ToDisplayPicNumber = (ToDisplayPicNumber + 1) % PicTotal;
setTimeout("PicNumClick()",3000);
}
setTimeout("PicNumClick()",3000);
</script>
					<!--pic over-->
					<!-- <div class="rside">
						<span> 首页广告位2 <a href="#" target="_blank"
							title="首页广告位2"> <img src="images/ad.jpg" /></a> 首页广告位2</span>
						<div class="note">
							<ul>
								<li class="selected">公告</li>
								<li>活动</li>
							</ul>
						</div>
						<div id="msg">
							<div class="message">
								<ul>
								</ul>
							</div>
							<div class="message" style="display: none">
								<ul>
									<li><a href="#"> 元朗荣华</a></li>
								</ul>
							</div>
							<div class="message" style="display: none"></div>
						</div>
					</div> -->
				<!--screen over-->
			<!--flexcontainer over-->
			<!-- 楼层循环go -->
<div class="yershop_wrapper">
			<ul class="w1210 company-wh">
				<li>
					<!--<a href="http://www.hngpmall.com/shop/article/localization" target="_blank">--> <img width="31%" src="${pageContext.request.contextPath}/images/area.jpg" style="float : right ;margin-top: 30px;margin-right: 20px">  <!--</a> -->
				</li>
				<li></li>
				<li>
					<img src="${pageContext.request.contextPath}/images/serive.jpg" width="32%"  style="float : right;margin-top: 30px;margin-right: 20px"/>
				</li>
				<li></li>
				<li>
					<img src="${pageContext.request.contextPath}/images/gao.jpg"width="31%" style="float: right;margin-top: 30px;margin-right: 20px">
				</li>
			</ul>
			<c:forEach items="${floor }" var="bigType" varStatus="big">
				<div class="list">
					<h3>
						<span class="floor">${big.index+1 }F</span><span>${bigType.name
							}</span>
					</h3>
					<div class="category">
						<div class="icon">
							<ul class="tag clearfix" data-tpc="3">
								<c:forEach items="${bigType.smallTypeList }" var="sm">
									<a target="_blank" title="${sm.name }"
										href="search?sid=${sm.id }&p=1"> ${sm.name }</a>
								</c:forEach>
							</ul>
							<a href="search?bid=${bigType.id }&p=1" target="_blank">
							<img class="lazy" src="${bigType.imgUrl }" data-original="${bigType.imgUrl }" /> </a>
						</div>
						<!--栏目推荐位调用结束-->
						<!--栏目文章调用开始-->
						<ul class="article" id="list_52">
							<!-- 循环展示商品go -->
							<c:forEach items="${bigType.goods }" varStatus="stat" var="goods">
								<li>
									<div class="pic">
										<a class="yershop_img" href="goodsPageServlet?id=${goods.id }"
											target="_blank" title="${goods.name }"> 
											<img class="lazy" src="${goods.proPic }" data-original="${goods.proPic }" /><em></em></a>
									</div>
									<div class="name">
										<a href="goodsPageServlet?id=${goods.id }" target="_blank"
											title="${goods.name }">${goods.name }</a>
									</div>
									<div class="price">
										<font>￥</font> <span>${goods.price }</span> <span></span>
									</div>
								</li>
							</c:forEach>
							<!-- 循环展示商品end -->
						</ul>
					</div>
					<!--栏目文章调用结束-->

                </div>
                <br>
                <br>
                <br>
                <div class="floor-adver">
                        <img src="${pageContext.request.contextPath}/images/shu_banner_${(big.index%7)+1}.jpg"></div>
            </c:forEach>
			<!-- 楼层循环end -->
<script type="text/javascript" language="javascript">
function getlist(id,pid) {
$("#category_"+id).addClass('active').siblings().removeClass('active'); 		
$.post('/index.php?s=/Home/Index/getGoodlist.html', {cateid:id},function(data){
	  var html = '';
	 
$("ul#list_"+pid).empty(); 		  
$.each(data, function(i,n){			
var html='<li><div class="pic" > <a class="yershop_img" href="'+n.url+'" target="_blank" title="'+n.title+'"> <img src="'+n.pic+'" ></a>  </div> <div class="name"><a href="'+n.url+'"  target="_blank" title="'+n.title
+'">'+n.title+'</a></div> <div  class="price">  <font>￥</font><span>'+n.price+'</span></div></li> ';	
						 $("ul#list_"+pid).append(html);
						 });

});
}

</script>
		<!-- /主体 -->
		<!-- 购物车js -->
		<script>
	//购物车显示与隐藏
	 var Shopcart= document.getElementById('shopping_cart');
     var Goodsmenu= document.getElementById('goods');
            var timerr = null;//定义定时器变量
            //鼠标移入div1或div2都把定时器关闭了，不让他消失
            Shopcart.onmouseover =Goodsmenu.onmouseover = function ()
            {
                Goodsmenu.style.display = 'block';
                clearTimeout(timerr);
            }
            //鼠标移出div1或div2都重新开定时器，让他延时消失
            Shopcart.onmouseout =Goodsmenu.onmouseout = function ()
            {
                //开定时器
                timerr= setTimeout(function () { 
                    Goodsmenu.style.display = 'none'; }, 10);
            }
			
//购物车动态删除
	function delcommon(event)
		{ //获取事件源
event = event ? event : window.event; 
var obj = event.srcElement ? event.srcElement : event.target; 
//这时obj就是触发事件的对象，可以使用它的各个属性 
//还可以将obj转换成jquery对象，方便选用其他元素 
str = obj.innerHTML.replace(/<\/?[^>]*>/g,''); //去除HTML tag

	var $obj = $(obj);
	var str=$obj.parent().prev().html();
	if(obj.rel=="del")
{ var str=obj.name;
var uexist="";
	//全选的实现 定义删的发送路径
	if(uexist){
		var del='/index.php?s=/Home/Shopcart/delItemByuid.html';	
	}
else{
var del='delShoppingCart.goods';
	
	}

$.ajax({
type:'post', //传送的方式,get/post
url:del, //发送数据的地址
data:{sort:str},
 dataType: "json",
success:function(data)
{var $obj = $(obj);
	$obj.parents("li").remove();
	if(data.sum=="0"){  //判断购物车数量是否为0，为0则隐藏底部查看工具
						$("div.sc_goods_foot").hide();
					   	var html='<p class="sc_goods_none" >您的购物车还是空的，赶紧行动吧！</p>';
					   $("ul.sc_goods_ul").html(html);
				
	
	}
	else{$("div.sc_goods_foot").show();}

},
error:function (event, XMLHttpRequest, ajaxOptions, thrownError) {
alert(XMLHttpRequest+thrownError); }
		})
}
        window.location.reload();
	} 
//购物车删除结束
//图片延时加载开启
$('img.lazy').lazyload({ 
	  effect:'fadeIn' 
	});
</script>
		<!-- 购物车js -->
		<!-- 底部 -->
		<!-- 底部-->
		<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/menudown.js"></script>
	</div>
<%@ include file="jsps/footer.jsp" %>
	<!-- /底部 -->


</body>
</html>
