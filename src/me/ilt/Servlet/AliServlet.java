package me.ilt.Servlet;

import me.ilt.Bean.goodsBean;
import me.ilt.Bean.shoppingCart;
import me.ilt.Dao.shoppingCartDao;
import me.ilt.Dao.usersDao;
import me.ilt.Util.Ali;
import me.ilt.Util.Sui;
import me.ilt.Util.responseUtil;
import net.sf.json.JSONObject;
import net.sf.json.util.JSONUtils;
import org.apache.commons.collections.bag.SynchronizedSortedBag;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.Result;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

@WebServlet(name = "AliServlet")
public class AliServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("�յ�����");
        doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String MethodName = request.getServletPath();
        MethodName = MethodName.substring(1, MethodName.length() - 4);
        System.out.println("MethodName��"+MethodName);
        try {
            Method method = getClass().getDeclaredMethod(MethodName,
                    HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(this, request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void sendmsg(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        String phonenumber=request.getParameter("phonenumber");
        String userName = usersDao.loginbypgone(phonenumber);

        System.out.println(userName);

           if(userName!=null) {
               String num = Sui.getFourRandom();
               Ali a = new Ali();
              a.aliyun(phonenumber, num);
               request.getSession().setAttribute("num", num);
               System.out.println(num);

               response.getWriter().write("��֤�뷢�ͳɹ�!");
           }else{

               response.getWriter().write("�ֻ���δע��!");

           }


    }

    public void mainLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("�������˵�½");
        String phonenumber=request.getParameter("phonenumber");
        String yzm=request.getParameter("yzm");
        System.out.println(phonenumber);
        String username = usersDao.loginbypgone(phonenumber);
        String num=(String) request.getSession().getAttribute("num");
        System.out.println(username);
        if(num.equals(yzm)){
            //��¼�ɹ�
            request.getSession().setAttribute("username", username);
            HashMap<String, goodsBean> gwc = (HashMap)request.getSession().getAttribute("gwc");
            int userId = usersDao.nameIsId(username); //��ȡ�û�ID
            //�ж�δ��¼֮ǰ���ﳵ�Ƿ��й�����
            int gwcSize = gwc.size();
            if(gwcSize>0){
                Set keyList = gwc.keySet();
                Iterator it = keyList.iterator();

                while(it.hasNext()){
                    String hid = (String)it.next();
                    goodsBean hgoods = gwc.get(hid);
                    int i = shoppingCartDao.count(userId, hgoods.getId());
                    if(i>0){
                        //���ڹ�����  ��������
                        shoppingCartDao.updateNum(new shoppingCart(userId, hgoods.getId(), hgoods.getNum(), 0));
                    }else{
                        //������  ��ӹ�����
                        shoppingCartDao.add(new shoppingCart(userId, hgoods.getId(), hgoods.getNum(), hgoods.getPrice()));
                    }
                }
                gwc.clear(); //��յ�ǰsession�Ĺ��ﳵ
            }
            System.out.println( request.getSession().getAttribute("username"));
            response.sendRedirect(request.getContextPath()+"/index.jsp"); //�ض�����ҳ
        }else{
            //��¼ʧ��������������
            request.getSession().setAttribute("loginFail", username);
            response.sendRedirect(request.getContextPath()+"/login.jsp"); //�ض��򵽵�¼
        }
    }

}
