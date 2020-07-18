package com.hiber.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hiber.dao.BaseDao;
import com.hiber.dao.BaseDaoImpl;
import com.hiber.pojo.User;
import java.util.Random;

public class RegistrationController extends HttpServlet {
 private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

 /**
  * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  response.sendRedirect("userRegistration.jsp");
 }

 /**
  * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  String msg = "Password and Conform Passwords must be same";
  String page = "userRegistration.jsp";
  if(request.getParameter("password").equals(request.getParameter("confPassword"))){
   User user = new User();
   user.setUsername(request.getParameter("username"));
   user.setPassword(request.getParameter("password"));
   user.setFirstName(request.getParameter("firstName"));
   user.setLastName(request.getParameter("lastName"));
   user.setDob(request.getParameter("dob"));
   user.setEmailId(request.getParameter("emailId"));
   user.setMobileNo(request.getParameter("mobileNo"));
   Random rand = new Random();
   user.setOrgid(rand.nextInt(10000));
   
   System.out.println(user.toString());
   BaseDao baseDao = new BaseDaoImpl();
   msg = baseDao.register(user);
   page = "login.jsp";
  } 
  request.setAttribute("msg2", msg);
  request.getRequestDispatcher(page).include(request, response);
 }

}