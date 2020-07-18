<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="com.hiber.pojo.Contact"%>
    <%@page import="com.hiber.dao.Addcontactdao"%>
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
<title>Contact Information</title>
</head>
<body>
<% 
int k=Integer.parseInt(request.getParameter("Id"));
%>

<br>
<br>
<div class="alert alert-info" role="alert">
<p>Contacts in  <b><%= request.getParameter("user") %></b> User Account:-</p>
</div>
<table class="table table-striped">
             <thead>
                 <tr>
                     
                     <th>Contact ID</th>
                     <th> Customer Name</th>
                     <th>Contact Number</th>
                    
                     <th>Options</th>
                       
                                 
                 </tr>
             </thead>
               <tbody>
                 <%
                     Addcontactdao co = new Addcontactdao();
                 Configuration configuration = new Configuration().configure("com/hiber/config/hibernate.cfg.xml");
       		  
                 // 2. create sessionfactory
                 SessionFactory sessionFactory = configuration.buildSessionFactory();

                 List<Contact> list = new ArrayList <Contact>();
       	       
       	     Session ses = sessionFactory .openSession();
       	             ses.beginTransaction();
       	          int p=Integer.parseInt(request.getParameter("Id"));
       	          // System.out.println("ACcc"+p);
       	           list = ses.createQuery("FROM Contact  WHERE orgid = :k").setParameter("k",p).getResultList();
       	           // System.out.println("ji");
       	            
       	       
       	       
       	    
                   
                     for (Contact u : list) {
                 
                 %>
                   <% int a=u.getCid();%>
                   
                     <td><%=u.getCid()%></td>
                     <td><%=u.getCustomername()%></td>
                      <td><%=u.getContactnumber()%></td>
                       <td><li><ul><a href="Editcontact.jsp?Id=<%=a%>&user=<%=request.getParameter("user")%>&customername=<%=u.getCustomername() %>&contactnumber=<%=u.getContactnumber() %>" >Edit</a></ul>
                     <ul><a href="Deletecontact.jsp?Id=<%=a%>&orgid=<%=k %>&user=<%=request.getParameter("user")%>&customername=<%=u.getCustomername() %>&contactnumber=<%=u.getContactnumber() %>" >Delete</a></ul></li></td>
                      
                     
                 </tr>
                 <%}%>
             <tbody>
         </table> 
       
        
</body>
</html>