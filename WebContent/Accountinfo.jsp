<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.util.List"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="com.hiber.pojo.Account"%>
    <%@page import="com.hiber.dao.Accountdao"%>
        <%@page import="org.hibernate.HibernateException"%>
            <%@page import="org.hibernate.Session"%>
                <%@page import="org.hibernate.SessionFactory"%>
                <%@page import="org.hibernate.Transaction"%>
                <%@page import="org.hibernate.cfg.Configuration"%>
                <%@page import="org.hibernate.Query"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Account Information</title>
</head>
<body>

 
<% 
int k=Integer.parseInt(request.getParameter("Id"));
%>

<br>

<div class="alert alert-warning" role="alert">
<p>Hi <b> <%= request.getParameter("customername") %> </b> Your Account Information :-</p>
 </div>

            
                 <%
                     Accountdao acc = new Accountdao();
                 Configuration configuration = new Configuration().configure("com/hiber/config/hibernate.cfg.xml");
       		  
                 // 2. create sessionfactory
                 SessionFactory sessionFactory = configuration.buildSessionFactory();

                 List<Account> list = new ArrayList <Account>();
       	       
       	     Session ses = sessionFactory .openSession();
       	             ses.beginTransaction();
       	          int p=Integer.parseInt(request.getParameter("Id"));
       	           System.out.println("ACcc"+p);
       	           list = ses.createQuery("FROM Account  WHERE aid = :k").setParameter("k",p).getResultList(); 
       	            System.out.println("ji");
       	            
       	       
       	       
       	    
                   
                     for (Account u : list) {
                 
                 %>
                 <ul class="list-group">
            <li class="list-group-item"><b>Customer Name</b>: <%=u.getCustomername() %></li>       
                 <li class="list-group-item"><b>Org id:</b> <%=u.getOrgid() %></li>
               
  <li class="list-group-item"><b>Account id:</b> <%=u.getAid() %></li>
  
  <li class="list-group-item"><b> Account Number</b>: <%=u.getAccountnumber()%></li>
  
  <li class="list-group-item"><b>Account Type</b>: <%=u.getAccounttype() %></li>
   <li class="list-group-item"><b>Opening Date</b>: <%=u. getStartingdate()%></li>
    <li class="list-group-item"><b>Address</b>: <%=u. getAddress()%></li>
</ul>
                 <%}%>
             <tbody>
         </table> 
       
        
       

<br><br>
</body>
</html>