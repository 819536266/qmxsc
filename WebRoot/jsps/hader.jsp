<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/search-form.css">
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
<div class="header">
	<div class="logo-info">
		<a href="${pageContext.request.contextPath}/" class="logo"> <img width="200px" height="100px" src="${pageContext.request.contextPath}/images/logo.png"></a>
	</div>

	<div class="header_center">
		<div class="search">
			<form action="search" name="Searchform" method="post">
				<div class="search-wrapper active">
					<div class="input-holder">
						<input type="text" class="search-input" name="name"  placeholder="输入您想要的商品"/>
						<button class="search-icon" onclick="searchToggle(this, event);"><span></span></button>
					</div>

				</div>
				<%--<p>
					<input type="text" name="name" placeholder="输入您想要的商品"
						class="search" /><a rel="nofollow" href="javascript:vod(0)"
                                            class="search_btn"><font style="margin-top: 10px" size="5" color="#fffff" face="楷体">搜索</font></a>
				</p>--%>
				<input type="hidden" name="p" value="1" />
				<!-- <input type="hidden" name="type" id="type" value="1" /> -->
			</form>
		</div>
		<br>
		<br>
		<br>
		<br>
		<div class="tag" style="margin: auto" >
			热门搜索： <a href="#">华为笔记本</a> <a href="#">电脑</a> <a href="#">空调</a>
			<a href="#">交换机</a>
		</div>
	</div>
<%--	<div class="top_right">
		<a rel="nofollow" href="index.cart" class="shopping_cart" id="shopping_cart"
			style="display:">购物车<span id="docerCartBtn" class="yellow"></span></a>
		<div id="goods" class="sc_goods" style="display:none;">
			<ul class="sc_goods_ul">
				<!-- 查询购物车 -->
				<c:set var="zongjia" value="0"></c:set>
				<c:forEach items="${gwcGoodsList }" var="g">

					<li>
						<dl>
							<dt class="mini-img">
								<a href="goodsPageServlet?id=${g.id }"><img
									src="${g.proPic }" height="40" width="40" /></a>
							</dt>
							<dd>
								<span class="mini_title"><a
									href="goodsPageServlet?id=${g.id }">${g.name }</a></span> <span
									class="mini-cart-count red"> ￥ ${g.price }<em
									class="${g.id }">*${g.num }</em></span>
							</dd>
							<dd>
								<span class="mini-cart-info"></span> <span
									class="mini-cart-del"><a name="${g.id }" rel="del"
									onclick="delcommon(event);return false;">删除</a></span>
							</dd>
						</dl>
					</li>
				</c:forEach>
				<c:if test="${gwcGoodsList.size()==0 }">
					<p class="sc_goods_none">您的购物车还是空的，赶紧行动吧！</p>
				</c:if>
			</ul>
			<div class="sc_goods_foot" <c:if test="${gwcGoodsList.size()==0 }">style="display:none;"</c:if>>
				<a rel="nofollow" href="index.cart" class="my_shopping_cart_btn">查看我的购物车</a>
			</div>
		</div>
	</div>--%>
</div>