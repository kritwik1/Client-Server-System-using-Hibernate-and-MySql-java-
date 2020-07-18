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
<title>Insert title here</title>
</head>
<body>
<% 
int k=Integer.parseInt(request.getParameter("Id"));
int z=Integer.parseInt(request.getParameter("orgid"));
String cname=request.getParameter("customername");
String addr=request.getParameter("address");
String user=request.getParameter("user");
%>

<div class="alert alert-success" role="alert">
<P>Select One!</P><br>
</div>

 <%
                     Addcontactdao co = new Addcontactdao();
                 Configuration configuration = new Configuration().configure("com/hiber/config/hibernate.cfg.xml");
       		  
                 // 2. create sessionfactory
                 SessionFactory sessionFactory = configuration.buildSessionFactory();

                 List<Contact> list = new ArrayList <Contact>();
       	       
       	     Session ses = sessionFactory .openSession();
       	             ses.beginTransaction();
       	          int p=Integer.parseInt(request.getParameter("orgid"));
       	          // System.out.println("ACcc"+p);
       	           list = ses.createQuery("FROM Contact  WHERE orgid = :z").setParameter("z",p).getResultList();
       	           // System.out.println("ji");
       	            
       	       
       	       
       	    
                   
                    
                 
                 %>
<form method="post" action="Addcontact">
<div class="form-group">
<div class="form-check">
<input type="hidden" name="aid" value="<%=k%>"> 
<input type="hidden" name="orgid" value="<%=z%>"> 
<input type="hidden" name="customername" value="<%=cname %>">
<%  for (Contact u : list) { %>
<input type="radio" class="form-check-input" name="contactnumber" value="<%=u.getContactnumber()%>" ><%=u.getCustomername()%><br>
<%} %>
<br>
</div>
<div style="text-align:center"> 
<input type="submit" class="btn btn-info" value="Add" >
</div>
</div>
</form>

</body>
</html>