package com.hiber.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hiber.dao.Deletecontactdao;

/**
 * Servlet implementation class Deletecontact
 */
@WebServlet("/Deletecontact")
public class Deletecontact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deletecontact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
int k=Integer.parseInt(request.getParameter("aid"));
		
		
		String customer=request.getParameter("customername");
		int number=Integer.parseInt(request.getParameter("contactnumber"));
		//Random rand = new Random();
		//String numberAsString = new Integer(rand.nextInt(1000000000)+100000).toString();
		//String accno="SBIN"+numberAsString;
		
		
		HttpSession session = request.getSession(true);
        try {
            Deletecontactdao adao = new Deletecontactdao();
            adao.DeleteContact(k,customer,number);
            PrintWriter pw=response.getWriter();
        	pw.println("<script type=\"text/javascript\">");
        	pw.println("alert('Contact Deleted');");
        	pw.println("</script>");
            //response.sendRedirect("success.jsp");
        } catch (Exception e) {
 
            e.printStackTrace();
        }

		
		
	}

}
