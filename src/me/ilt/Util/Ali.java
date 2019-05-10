package me.ilt.Util;


import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;

import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;




public class Ali {

 public void aliyun(String phonenumber,String num){




     DefaultProfile profile = DefaultProfile.getProfile("default", "LTAIAhXMgcLiuxuO", "sj1KTOKIN6E3JpbpH2x6um5YYwT95k");
     IAcsClient client = new DefaultAcsClient(profile);


     CommonRequest request = new CommonRequest();
     //request.setProtocol(ProtocolType.HTTPS);
     request.setMethod(MethodType.POST);
     request.setDomain("dysmsapi.aliyuncs.com");
     request.setVersion("2017-05-25");
     request.setAction("SendSms");

     request.putQueryParameter("PhoneNumbers", phonenumber);
     request.putQueryParameter("SignName", "河南企明星科技有限公司");
     request.putQueryParameter("TemplateCode", "SMS_164385149");
     request.putQueryParameter("TemplateParam", "{\"code\":\""+num+"\"}");

     try {
         CommonResponse response = client.getCommonResponse(request);
         System.out.println(response.getData());
     } catch (ServerException e) {
         e.printStackTrace();
     } catch (ClientException e) {
         e.printStackTrace();
     }


 }

}
