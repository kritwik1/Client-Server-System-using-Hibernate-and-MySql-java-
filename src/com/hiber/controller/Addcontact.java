package com.hiber.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hiber.dao.Addcontactdao;

/**
 * Servlet implementation class Addcontact
 */
@WebServlet("/Addcontact")
public class Addcontact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addcontact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        int k=Integer.parseInt(request.getParameter("aid"));
        int z=Integer.parseInt(request.getParameter("orgid"));
		
		int number=Integer.parseInt(request.getParameter("contactnumber"));
		String customer=request.getParameter("customername");
		HttpSession session = request.getSession(true);
        try {
            Addcontactdao adao = new Addcontactdao();
            boolean success= adao.AddContact(k,z,number,customer);
            if(success==true) {
            	PrintWriter pw=response.getWriter();
            	pw.println("<script type=\"text/javascript\">");
            	pw.println("alert('Contact Created');");
            	pw.println("</script>");
           // response.sendRedirect("success.jsp");
            }
            else {
            	PrintWriter pw=response.getWriter();
            	pw.println("<script type=\"text/javascript\">");
            	pw.println("alert('Contact Exist');");
            	pw.println("</script>");
            	 //response.sendRedirect("Accountcontact.jsp");
            }
            
        } catch (Exception e) {
 
            e.printStackTrace();
        }
		
	}

}
