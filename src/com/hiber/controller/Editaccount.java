package com.hiber.controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hiber.dao.Editaccountdao;

/**
 * Servlet implementation class Editaccount
 */
@WebServlet("/Editaccount")
public class Editaccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Editaccount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int k=Integer.parseInt(request.getParameter("aid"));
		
		String accountt=request.getParameter("type");
		String customer=request.getParameter("customername");
		String addr=request.getParameter("address");
		//Random rand = new Random();
		//String numberAsString = new Integer(rand.nextInt(1000000000)+100000).toString();
		//String accno="SBIN"+numberAsString;
		
		
		HttpSession session = request.getSession(true);
        try {
            Editaccountdao adao = new Editaccountdao();
            adao.EditAccount(k,accountt,customer,addr);
            response.sendRedirect("success.jsp");
        } catch (Exception e) {
 
            e.printStackTrace();
        }

		
		
		
		
		
	}

}
