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
    <script type="text/javascript" src="${pageContext.request.contextPath}/qmx/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.lazyload.min.js"></script>
    <script type="text/javascript">
        //检查输入的数据是不是电话号码
        function checkSubmitMobil() {
            if ($("#phone").val() == "") {
                alert("手机号码不能为空！");
//$("#moileMsg").html("<font color='red'>手机号码不能为空！</font>");
                $("#phone").focus();
                return false;
            }

            if (!$("#phone").val().match(/^(((13[0-9]{1})|159|153)+\d{8})$/)) {
                alert("手机号码格式不正确！");
//$("#moileMsg").html("<font color='red'>手机号码格式不正确！请重新输入！</font>");
                $("#phone").focus();
                return false;
            }else{
                var tel=$("#phone").val();
                $.ajax({
                    url: "sendmsg.ali",
                    data:{
                        phonenumber:tel
                    },
                    success: function(rs){
                        alert(rs);
                    }});
            }

        }

    </script>

</head>
<body>





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
            <div class="message"><span>企明星电子商城手机登录</span></div>
            <div class="zh_login">
                <form method="post"  action="mainLogin.ali">
                    <input name="phonenumber" id="phone" placeholder="请输入手机号"    autocomplete="new-password"   required="" type="text" style="margin-bottom:15px">
                    <tr><input type="text" name="yzm" placeholder="验证码" required="" style="margin-bottom:15px">

                        <input value="获取验证码" style="width:100%;margin-bottom:15px" onclick="checkSubmitMobil()" type="button" class="login_scwh"></tr>
                    <input value="登录" style="width:100%;margin-bottom:15px" type="submit" class="login_scwh">
                </form>
            </div>


            <div class="whewm_login" style="display:none">

            </div>
            <div class="login_style">
                <a href="${pageContext.request.contextPath}/rege.jsp" target="_top">注册账号</a>
                <a href="${pageContext.request.contextPath}/loginbyphone.jsp" target="_top"><em class="ewm_login">账号密码登录</em></a>
            </div>
        </div>
    </div>
</div>

<script>

    //检查输入的数据是不是电话号码
    function checkSubmitMobil() {
        if ($("#phone").val() == "") {
            alert("手机号码不能为空！");
//$("#moileMsg").html("<font color='red'>手机号码不能为空！</font>");
            $("#phone").focus();
            return false;
        }

        if (!$("#phone").val().match(/^((([0-9][0-9][0-9]{1})|159|153)+\d{8})$/)) {
            alert("手机号码格式不正确！");
//$("#moileMsg").html("<font color='red'>手机号码格式不正确！请重新输入！</font>");
            $("#phone").focus();
            return false;
        }else{
            var tel=$("#phone").val();
            $.ajax({
                url: "sendmsg.ali",
                data:{
                    phonenumber:tel
                },
                success: function(rs){
                    alert(rs);
                }});
        }

    }

</script>
</body></html>