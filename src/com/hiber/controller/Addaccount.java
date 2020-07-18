package com.hiber.controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hiber.pojo.Account;
import com.hiber.dao.Accountdao;;

/**
 * Servlet implementation class Addaccount
 */
@WebServlet("/Addaccount")
public class Addaccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addaccount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Account acc=new Account();
		int k=Integer.parseInt(request.getParameter("orgid"));
	
		String accountt=request.getParameter("type");
		String customer=request.getParameter("customername");
		String opendate=request.getParameter("startingdate");
		String addr=request.getParameter("address");
		Random rand = new Random();
		String numberAsString = new Integer(rand.nextInt(1000000000)+100000).toString();
		String accno="SBIN"+numberAsString;
		
		
		HttpSession session = request.getSession(true);
        try {
            Accountdao adao = new Accountdao();
            adao.addAccount(k,accountt,customer,opendate,addr,accno);
            response.sendRedirect("success.jsp");
        } catch (Exception e) {
 
            e.printStackTrace();
        }

		
		
		
		
	}

}
