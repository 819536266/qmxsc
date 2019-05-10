<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>


<body>
<div class="category-box" >
    <script>
        function fun() {
            $("#layer").attr("style","display: block");
        }
        function funout() {
            $("#layer").attr("style","display: none");
        }

    </script>
    <div class="main_w">
        <div class="home-category fl"> <a href="javascript:;"  onmouseout="funout()" onmouseover="fun()" class="menu-event" title="全部商品分类"> <i></i> 全部商品分类 </a> </div>
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
                    <a class="nav" href=" target="_blank" title="采购流程">采购流程</a>
                </li>
                <li class="fl">
                    <a class="nav" href="" target="_blank" title="专属服务">专属服务</a>
                </li>
                <li class="fl">
                    <a class="nav" href="" target="_blank" title="我要合作">我要合作</a>
                </li>
                <li class="fl">
                    <a class="nav" href="" target="_blank" title="联系我们">联系我们</a>
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
        <div class="category-layer" id="layer"  onmouseout="funout()" onmouseover="fun()"  style="display:none">
            <span class="category-layer-bg bg-color"></span>
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
</body>
</html>
