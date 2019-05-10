<%--
  Created by IntelliJ IDEA.
  User: 81953
  Date: 2019/5/2
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>后台登录</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" type="image/x-icon">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/login/common.css">
    <link href="${pageContext.request.contextPath}/login/login.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/login/layui.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/login/jquery.js.下载"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/login/layui.js.下载"></script>
    <script type="text/javascript">
        var timeout;
        $(document).ready(function() {
            $(".login_style .ewm_login").on("click",function(){
                var text = $(this).text();
                if(text == "二维码登录"){
                    $(".zh_login").hide();
                    $(".whewm_login").show();
                    $(".zh_zc").hide();
                    $(this).text("账号登录");
                }else if(text == "账号登录"){
                    $(".zh_login").show();
                    $(".whewm_login").hide();
                    $(".zh_zc").hide();
                    $(this).text("二维码登录");
                }
            })
        });
        function password(){
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.open({
                    type: 1,
                    anim: 2,
                    title:'重设密码',
                    area:['550px'],
                    maxHeight : '450px',
                    content: $('.forget_password_new'),
                    btn:['确定','返回'],
                    btn1:function(index){
                        registerCode();
                    },
                    cancel: function(index){

                    }
                })
            })
        }
        function getTicket(){
            $.ajax({
                async: true,
                type : "POST",
                url : "/getTicket",
                data : {
                },
                success : function(data) {
                    if(data.success==true){
                        $("#qrcode_login").attr("src",data.src);
                        $("#ticketId").val(data.ticketId);
                        $("#sessionId").val(data.sessionId);
                        timeout=setInterval("cxTicket()", 3000);
                        setTimeout("clearInterval("+timeout+")",300000);
                    }
                }
            });

        }
        function cxTicket(){
            $.ajax({
                async: false,
                type : "POST",
                url : "/cxTicket",
                data : {
                    ticketId : $("#ticketId").val() ,
                    sessionId : $("#sessionId").val() ,
                },
                success : function(data) {
                    if(data.success==true){
                        clearInterval(timeout)
                       /* window.location.href="http://www.hngpmall.com/shop/member/ajaxWxLogin?id="+data.id;*/
                    }
                }
            });
        }

        function getMobileCode(){
            var reg_mob = /^[1][3,4,5,7,8][0-9]{9}$/;
            var mobile=jQuery("#mobile").val();
            if(mobile==""){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.alert('手机号码不能为空', {
                        icon: 2,
                        title:'温馨提示'
                    })
                });
                return false;
            }else if(!reg_mob.test(mobile)){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.alert('请输入正确的手机号码', {
                        icon: 2,
                        title:'温馨提示'
                    })
                });
                return false;
            }else{
                jQuery.ajax({
                    async: true,
                    type : "POST",
                    url : "/shop/member/ajaxGetMobileCode",
                    data : {
                        "mobile" : mobile,
                        "isExsit": "true"
                    },
                    success : function(dat) {
                        if(dat.isExsit =='false'){
                            layui.use('layer', function(){
                                var layer = layui.layer;
                                layer.alert('该手机号未注册,请先注册', {
                                    icon: 2,
                                    title:'温馨提示',
                                    btn:['确定','返回'],
                                    btn1:function(index){
                                      /*  window.location.href="http://www.hngpmall.com/shop/member/register";*/
                                    },
                                    cancel: function(){

                                    }
                                })
                            });
                        }else{
                            layui.use('layer', function(){
                                var layer = layui.layer;
                                layer.msg(dat.msg)
                            });
                        }

                    }
                });
            }
        }

        function registerCode(){
            var mobileCode=jQuery("#mobileCode").val();
            var password =  jQuery("input[name='member.password']").val();
            var rePassword = jQuery("input[name='rePassword']").val();
            var mobile = jQuery("input[name='member.mobile']").val();
            var reg_mob = /^[1][3,4,5,7,8][0-9]{9}$/;
            if(password==""){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.alert('密码不能为空', {
                        icon: 2,
                        title:'温馨提示'
                    })
                });
                return false;
            }else if(rePassword != password){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.alert('两次输入的密码不一致', {
                        icon: 2,
                        title:'温馨提示'
                    })
                });
                return false;
            }else if(mobile==""){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.alert('手机号码不能为空', {
                        icon: 2,
                        title:'温馨提示'
                    })
                });
                return false;
            }else if(!reg_mob.test(mobile)){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.alert('请输入正确的手机号码', {
                        icon: 2,
                        title:'温馨提示'
                    })
                });
                return false;
            }else{
                jQuery.ajax({
                    async: true,
                    type : "POST",
                    url : "/shop/member/ajaxRegisterCode",
                    data : {
                        "mobileCode" : mobileCode,
                        "mobile" : mobile
                    },
                    success : function(dat) {
                        if(dat.success==true){
                            $("#updatePasswordForm").submit();
                            layer.close(index);
                        }else{
                            layui.use('layer', function(){
                                var layer = layui.layer;
                                layer.msg('请核对手机号和验证码')
                            });
                            return false;
                        }
                    }
                });
            }

        }

    </script>
</head>
<body>
<%--
<div class="layui-row forget_password_new" style="display:none;width: 500px;margin: 0 auto;">
    <form action="mainLogin.user" method="post" id="updatePasswordForm">
        <div class="layui-row layui-top" style="margin-top: 25px;">
            <span>手机号码：</span>
            <input type="text" id="mobile" name="member.mobile" class="layui-input input-medium" value="">
            <button type="button" class="layui-btn yzm_password" onclick="getMobileCode()">发送验证码</button>
        </div>

        <div class="layui-row layui-top">
            <span>验证码：</span>
            <input type="text" id="mobileCode" name="mobileCode" class="layui-input input-small" value="" style="width:310px;">
        </div>

        <div class="layui-row layui-top">
            <span>新密码：</span>
            <input type="password" name="member.password" class="layui-input input-medium" value="" style="width:310px;">
        </div>
        <div class="layui-row layui-top">
            <span>确认密码：</span>
            <input type="password" name="rePassword" class="layui-input input-medium" value="" style="width:310px;">
        </div>
    </form>
</div>
--%>




<div class="logo-info">
    <a href="${pageContext.request.contextPath}/" class="logo" target="_blank"><img src="${pageContext.request.contextPath}/login/mall_logo_0.png" width="200" height="100"></a>
    <span class="findpw">欢迎登录</span>
    <a href="${pageContext.request.contextPath}/" class="adver"> <img src="${pageContext.request.contextPath}/login/onestop.png"></a>
</div>
<input type="hidden" id="ticketId">
<input type="hidden" id="sessionId">
<div class="platform_login">
    <div class="wanghang_tab">
        <div class="sc-login">
            <div class="message"><span>企明星电子商城登录</span></div>
            <div class="zh_login">
                <form method="post"  action="mainLogin.user">
                    <input name="username" placeholder="用户名/手机号" required="" type="text" style="margin-bottom:15px"><span>${loginFail}</span>
                    <input name="password" placeholder="密码" required="" type="password" style="margin-bottom:15px">

                   <%-- <div class="forget_password" style="float:right;cursor: pointer;margin-bottom:10px" onclick="password()">
                        <span>忘记密码</span>
                    </div>--%>
                    <input value="登录" style="width:100%;margin-bottom:15px" type="submit" class="login_scwh">
                </form>
            </div>
            <div class="whewm_login" style="display:none">
               <%-- <form method="post">
                    <img src="${pageContext.request.contextPath}/login/timg.gif" id="qrcode_login">
                    <span>微信,扫一扫免密码登录</span>
                </form>--%>
            </div>
            <div class="login_style">
                <a href="${pageContext.request.contextPath}/rege.jsp" target="_top">注册账号</a>
                <a href="${pageContext.request.contextPath}/login.jsp" target="_top"><em class="ewm_login">手机登录</em></a>
              <%--  <em class="ewm_login" onclick="getTicket()">二维码登录</em>--%>
            </div>
        </div>
    </div>
</div>


</body></html>