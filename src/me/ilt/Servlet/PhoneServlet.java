package me.ilt.Servlet;

import me.ilt.Bean.goodsBean;
import me.ilt.Bean.shoppingCart;
import me.ilt.Dao.shoppingCartDao;
import me.ilt.Dao.usersDao;
import me.ilt.Util.Ali;
import me.ilt.Util.Sui;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

@WebServlet(name = "PhoneServlet")
public class PhoneServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(" ’µΩ«Î«Û");
        doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        String phonenumber=request.getParameter("phone");
        if(phonenumber!=null){
            String userName = usersDao.loginbypgone(phonenumber);
            if(userName!=null) {
                response.getWriter().write("error");
            }else{
                response.getWriter().write("success");
            }
        }else{
            response.getWriter().write("error");
        }
    }




}
