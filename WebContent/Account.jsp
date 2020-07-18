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

<br><br>


<td><a  href="Addaccount.jsp?Id=<%=k%>&user=<%=request.getParameter("user")  %>" >Add Account</a></td>
<div class="alert alert-warning" role="alert">
<p>Accounts in <b> <%= request.getParameter("user") %> </b>User Account:-</p>
 </div>
<table class="table table-striped">
             <thead>
                 <tr>
                     
                     
                     <th> Customer Name</th>
                     <th> Address</th>
                     
                     
                     
                   
                     <th>options</th>             
                 </tr>
             </thead>
               <tbody>
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
       	           list = ses.createQuery("FROM Account  WHERE orgid = :k").setParameter("k",p).getResultList(); 
       	            System.out.println("ji");
       	            
       	       
       	       
       	    
                   
                     for (Account u : list) {
                 
                 %>
                    <% int a=u.getAid();%> 
                    
                      
                      <td> <a href="Accountinfo.jsp?Id=<%=a%>&user=<%=request.getParameter("user")%>&customername=<%=u.getCustomername() %>&address=<%=u.getAddress() %>" ><%=u.getCustomername()%></a></td>
                   
                     <td><%=u. getAddress()%></td>
                     <td><li><ul><a href="Editaccount.jsp?Id=<%=a%>&user=<%=request.getParameter("user")%>&customername=<%=u.getCustomername() %>&address=<%=u.getAddress() %>" >Edit</a></ul>
                    <ul> <a href="Deleteaccount.jsp?Id=<%=a%>&orgid=<%=k %>&user=<%=request.getParameter("user")%>&customername=<%=u.getCustomername() %>&address=<%=u.getAddress() %>" >Delete</a></ul>
                     <ul> <a href="Accountcontact.jsp?Id=<%=a%>&orgid=<%=k %>&user=<%=request.getParameter("user")%>&customername=<%=u.getCustomername() %>&address=<%=u.getAddress() %>">Contact</a></ul></li></td>
                 </tr>
                 <%}%>
             <tbody>
         </table> 
       
        
       

<br><br>
</body>
</html>