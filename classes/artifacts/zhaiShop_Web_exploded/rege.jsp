<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>企明星商城---一站式服务平台</title>
    <link rel="icon" href="${pageContext.request.contextPath}/images/logo.png" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath}/rege/register.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/rege/layui.css">
<script src="${pageContext.request.contextPath}/rege/jquery.js.下载" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/rege/register.js.下载" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/rege/layui.js.下载" type="text/javascript"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/public.js"></script>

</head>
<body>
<!--头部-->
<div class="header"   >
   <a class="logo" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/rege/mall_logo_0.png" ></a>
  <div class="desc">欢迎注册</div>
</div>
<!--版心-->
<div class="container"> 
  <!--企明星注册模块-->
  <div class="register">

  <form name="frm" action="regeuser.user"  role="form" method="post" onsubmit="return bdtj() ">
    <!--用户名-->
    <div class="register-box"> 
      <!--表单项-->
      <div class="box default">
        <label for="userName">用&nbsp;户&nbsp;名</label>
        <input type="text" width="20" height="20" id="tusername"  autocomplete="off" placeholder="您的账户名和登录名" name="username">

      </div>
      <!--提示信息-->
      <div class="tip"><label id="regejc"></label> <i></i> <span> </span> </div>
    </div>
    <!--设置密码-->
    <div class="register-box"> 
      <!--表单项-->
      <div class="box default">
        <label for="pwd">设 置 密 码</label>
        <input type="password" id="tpassword1"  autocomplete="new-password" placeholder="建议至少两种字符组合" name="password">

      </div>
      <!--提示信息-->
      <div class="tip"> <label id="mm"></label> <i></i> <span></span> </div>
    </div>
    <!--确认密码-->
    <div class="register-box"> 
      <!--表单项-->
      <div class="box default">
        <label for="pwd2">确 认 密 码</label>
        <input type="password" id="tpassword2" placeholder="请再次输入密码" name="rePassword">

        <!--提示信息-->
          <div class="tip">  <label id="mm2"></label> <i></i> <span></span> </div>
        </div>
    </div>
      <div class="register-box">
          <!--表单项-->
          <div class="box default">
              <label for="phon">手 机 号</label>
              <input type="text" id="phone" placeholder="请输入手机号" name="phone">

              <!--提示信息-->
              <div class="tip">  <label id="mmphone"></label> <i></i> <span></span> </div>
          </div>
      </div>
   <%-- <!--设置密码-->
    <div class="register-box"> 
      <!--表单项-->
      <div class="box default">
        <label for="email">邮 箱 验 证</label>
        <input type="text" id="email" placeholder="请输入邮箱" name="member.email">
        <i></i> </div>
      <!--提示信息-->
      <div class="tip"> <i></i> <span></span> </div>
    </div>--%>
    <!--手机验证-->
    <%--<div class="register-box molibecode_wh">
      <!--表单项-->
      <div class="box default">
        <label for="mobile">手 机 验 证</label>
        <input type="text" id="mobile" placeholder="请输入验证码" name="member.mobile">
        <input onclick="changeImage()" id="yzm" class="v_inp" placeholder="请输入验证码" name="yzm" type="text">
        &lt;%&ndash;<input type="button" value="获取验证码" onclick="getMobileCode()" class="button_molibecode">&ndash;%&gt;
        <i></i> </div>
      <!--提示信息-->
      <div class="tip"> <i></i> <span></span> </div>
    </div>--%>
    <div class="register-box">
    <div class="box default">
      <label for="yzm">验 证 码 验 证</label>
      <input type="text" id="yzm" placeholder="请输入验证码" name="member.mobile">
      <img id="CreateCheckCode" src="genImage.yzm" onclick="changeImage()">
    <!--提示信息-->
    <div class="tip">       <label id="tyzm"></label></div>
      <span></span> </div>
 </div>
   <%-- <div class="register-box" style="display:none" id="mobileCode_parent">
      <!--表单项-->
      <div class="box default">
        <label for="mobile">验 证 码</label>
        <input type="text" name="mobileCode" id="mobileCode" placeholder="请输入验证码" onchange="registerCode()">
        <i></i> </div>
      <!--提示信息-->
      <div class="tip"> <i></i> <span></span> </div>
    </div>&ndash;%&gt;
    --%>
    <!--注册协议-->
    <div class="register-box xieyi"> 
      <!--表单项-->
      <div class="box default">
        <input type="checkbox" id="ck" name="isAgreeAgreement" value="1" checked="checked">
        <span>我已阅读并同意<a href="javaScript:;">《企明星用户注册协议》</a></span> </div>
        <div id="agreement">
          <div class="agreement_top"><span>企明星用户注册协议</span><em>X</em></div> 
          <p><strong>注册条款<br></strong></p><p>&nbsp;</p><p>尊敬的用户，欢迎您注册成为本网站会员。请用户仔细阅读以下全部内容。如用户不同意本服务条款任意内容，请不要注册或 使用本网站服务。如用户通过进入注册程序并勾选&amp;ldquo;我同意服务条款&amp;rdquo;，即表示用户与本网站已达成协议，自愿接受本 服务条款的所有内容。此后，用户不得以未阅读本服务条款内容作任何形式的抗辩。</p><p>&nbsp;</p><p>一、&nbsp;本站服务条款的确认和接纳<br>本网站涉及的各项服务的所有权和运作权归本网站所有。本网站所提供的服务必 须按照其发布的服务条款和操作规则严格执行。本服务条款的效力范围及于本网站的一切产品和服务，用户在享受本网站的任何服 务时，应当受本服务条款的约束。</p><p>&nbsp;</p><p>二、&nbsp;服务简介<br>本网站运用自己的操作系统通过国际互联网络为用户提供各项服务。用户必须：<br>1.&nbsp;提 供设备，如个人电脑、手机或其他上网设备。<br>2.&nbsp;个人上网和支付与此服务有关的费用。</p><p>&nbsp;</p><p>三、&nbsp;用户在不得在本网站上发布下列违法信息<br>1.&nbsp;反对宪法所确定的基本原则的；<br>2.&nbsp;危害国家 安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；<br>3.&nbsp;损害国家荣誉和利益的；<br>4.&nbsp;煽动民族仇恨、 民族歧视，破坏民族团结的；<br>5.&nbsp;破坏国家宗教政策，宣扬邪教和封建迷信的；<br>6.&nbsp;散布谣言，扰乱社会秩 序，破坏社会稳定的；<br>7.&nbsp;散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；<br>8.&nbsp;侮辱或者诽谤 他人，侵害他人合法权益的；<br>9.&nbsp;含有法律、行政法规禁止的其他内容的。</p><p>&nbsp;</p><p>四、&nbsp;有关个人资料<br>用户同意：<br>1.&nbsp;提供及时、详尽及准确的个人资料。<br>2.&nbsp;同意接收来自 本网站的信息。<br>3.&nbsp;不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。<br>4.&nbsp;本网站不公开用户的姓名、地址、电子邮箱和笔名。除以下情况外：<br>a)&nbsp;用户授权本站透露这些信息。 <br>b)&nbsp;相应的法律及程序要求本站提供用户的个人资料。</p><p>&nbsp;</p><p>五、&nbsp;服务条款的修改<br>本网站有权在必要时修改服务条款，一旦条款及服务内容产生变动，本网站将会在重要页面 上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的本网站信息服务。如果用户继续享用本网站信息服务，则视 为接受服务条款的变动。<br><br>六、&nbsp;用户隐私制度<br>尊重用户个人隐私是本网站的一项基本政策。所以，本网站 一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在本网站中的非公开内容，除非有法律许可要求或本网站在诚 信的基础上认为透露这些信息在以下四种情况是必要的：<br>1.&nbsp;遵守有关法律规定，遵从本网站合法服务程序。<br>2.&nbsp;保持维护本网站的商标所有权。<br>3.&nbsp;在紧急情况下竭力维护用户个人和社会大众的隐私安全。<br>4.&nbsp;符合其他相关的要求。</p><p>&nbsp;</p><p>七、&nbsp;用户的帐号、密码和安全性<br>用户一旦注册成功，将获得一个密码和用户名。用户需谨慎合理的保存、使用用 户名和密码。如果你不保管好自己的帐号和密码安全，将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。 你可随时根据指示改变你的密码。用户若发现任何非法使用用户帐号或存在安全漏洞的情况，请立即通告本网站。</p><p>&nbsp;</p><p>八、&nbsp;拒绝提供担保<br>用户明确同意信息服务的使用由用户个人承担风险。 本网站不担保服务不会受中断，对服务的 及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。</p><p>&nbsp;</p><p>九、&nbsp;有限责任<br>如因不可抗力或其它本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完 成或丢失有关的信息、记录等本站会尽可能合理地协助处理善后事宜，并努力使客户免受经济损失，同时会尽量避免这种损害的发 生。</p><p>&nbsp;</p><p>十、&nbsp;用户信息的储存和限制<br>本站有判定用户的行为是否符合国家法律法规规定及本站服务条款权利，如果用户违 背本网站服务条款的规定，本网站有权中断对其提供服务的权利。</p><p>&nbsp;</p><p>十一、&nbsp;用户管理<br>用户单独承担发布内容的责任。用户对服务的使用是根据所有适用于本站的国家法律、地方法律 和国际法律标准的。用户必须遵循：<br>1.&nbsp;使用网络服务不作非法用途。 <br>2.&nbsp;不干扰或混乱网络服务。 <br>3.&nbsp;遵守所有使用网络服务的网络协议、规定、程序和惯例。 <br>用户须承诺不传输任何非法的、骚扰性的、中伤他人 的、辱骂性的、恐性的、伤害性的、庸俗的，淫秽等信息资料。另外，用户也不能传输何教唆他人构成犯罪行为的资料；不能传输 助长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法律的资料。未经许可而非法进入其它 电脑系统是禁止的。<br>若用户的行为不符合以上提到的服务条款，本站将作出独立判断立即取消用户服务帐号。用户需对自己 在网上的行为承担法律责任。用户若在本站上散布和传播反动、色情或其它违反国家法律的信息，本站的系统记录有可能作为用户 违反法律的证据。</p><p>&nbsp;</p><p>十二、&nbsp;通告<br>所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务 变更、或其它重要事件的通告都会以此形式进行。</p><p>&nbsp;</p><p>十三、&nbsp;信息内容的所有权<br>本网站定义的信息内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内 容；本网站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本网站和 广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。本站所有的文章版权归原文作 者和本站共同所有，任何人需要转载本站的文章，必须征得原文作者或本站授权。</p><p>&nbsp;</p><p>十四、&nbsp;法律<br>本协议的订立、执行和解释及争议的解决均应适用中华人民共和国的法律。用户和本网站一致同意服 从本网站所在地有管辖权的法院管辖。如发生本网站服务条款与中华人民共和国法律相抵触时，则这些条款将完全按法律规定重新 解释，而其它条款则依旧保持对用户的约束力。<br><br><b>&nbsp;</b></p>
          <div class="agreement_foot">同意并继续</div> 
         </div>
      <!--提示信息-->
      <div class="tip"> <i></i> <span></span> </div>
    </div>
    <!--注册-->
    <input id="btn" type="submit" value="注册" >
    </form>
  </div>
</div>
<script>

    function changeImage() {
        var url = document.getElementById("CreateCheckCode");
        url.src = "genImage.yzm?" + new Date().getMilliseconds();
    }
</script>
<script type="text/javascript">
    nameisyz = false; //用户名验证
    yzmisyz = false; //验证码验证
    mmyz = false; //密码验证
    rmmyz = false; //重复密码验证
    phone1=false;
    tusername= document.getElementById("tusername");
    phone= document.getElementById("phone");
    regejc=document.getElementById("regejc");
    mm=document.getElementById("mm");
    tpassword1=document.getElementById("tpassword1");
    tpassword2=document.getElementById("tpassword2");
    mm2=document.getElementById("mm2");
    mmphone=document.getElementById("mmphone");
    tyzm=document.getElementById("tyzm");
    yzm=document.getElementById("yzm");
    window.onload=function(){

        yhmzz = /^[a-zA-z][a-zA-Z0-9_]{3,15}$/; //用户名正则
        tusername.onblur=function(){
            var username=frm.username.value; //昵称
            if(!yhmzz.exec(username)){
                $(regejc).html("<font color='red' size='-1'>*开头为字母,长度为3-15位</font>");
                nameisyz = false;
                return;
            }
            $.ajax({
                type:'post',
                url:'${pageContext.request.contextPath}/rege.user', //发送数据的地址
                data:{
                    name:username
                },
                dataType: "json",
                success:function(result){
                    if(result.success=="true"){
                        $(regejc).html("<font color='green' size='-1'>可以使用</font>");
                        nameisyz = true;
                    }else{
                        $(regejc).html("<font color='red' size='-1'>*已被占用</font>");
                        nameisyz = false;
                    }
                }
            });
        }
        tpassword1.onblur=function(){
            if(tpassword1.value!=""){
                mm.innerHTML="<font color='green' size='-1'>ok</font>";
                rmmyz = true;
            }else{
                mm.innerHTML="<font color='red' size='-1'>*请输入密码</font>";
                rmmyz = false;
            }
        }
        phone.onblur=function () {
            if(!$("#phone").val().match(/^((([0-9][0-9][0-9]{1})|159|153)+\d{8})$/)){
                mmphone.innerHTML="<font color='red' size='-1'>*手机号码格式不正确!</font>";
                phone1 = false;
            }else if($("#phone").val()==""){
                mmphone.innerHTML="<font color='red' size='-1'>*请输入手机号!</font>";
                phone1 = false;
            }else{
                $.ajax({
                    type:'post',
                    url:'${pageContext.request.contextPath}/phone', //发送数据的地址
                    data:{
                        phone:$("#phone").val()
                    },
                    success:function(result){
                        if(result=="success"){
                            $(mmphone).html("<font color='green' size='-1'>可以使用</font>");
                            phone1 = true;
                        }else{
                            $(mmphone).html("<font color='red' size='-1'>*已被占用</font>");
                            phone1 = false;
                        }
                    }
                });

            }
        }
        tpassword2.onblur=function(){
            if(tpassword1.value==""){
                //请先填写上方密码
                mm2.innerHTML="<font color='red' size='-1'>请输入上方密码</font>";
                mmyz = false;
            }else{
                if(tpassword1.value!=tpassword2.value){
                    //两次密码输入不一致
                    mm2.innerHTML="<font color='red' size='-1'>*两次密码不一致</font>";
                    mmyz = false;
                }else{
                    mm2.innerHTML="<font color='green' size='-1'>ok</font>";
                    mmyz = true;
                }
            }
        }
        yzm.onblur=function(){
            yz = yzm.value;
            $.ajax({
                type:'post',
                url:'${pageContext.request.contextPath}/yzm.user', //发送数据的地址
                data:{jyzm:yz},
                dataType: "json",
                success:function(result){
                    if(result.yzm=="false"){
                        tyzm.innerHTML="<font color='red' size='-1'>*验证码输入有误</font>";
                        changeImage();//验证码输入错误刷新图片
                        yzmisyz = false;
                    }else{
                        tyzm.innerHTML="<font color='green' size='-1'>ok</font>";
                        yzmisyz = true;
                    }
                }});
        }
    }
    function bdtj(){
        if(nameisyz && yzmisyz && mmyz && rmmyz && phone1){
            alert("注册成功,登陆");
            return true; //验证通过  提交
        }else{
            alert("请填写完整");
            return false;
        }
    }
</script>
</body></html>