<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.hiber.dao. BaseDaoImpl" %>
    <%@ page import="com.hiber.pojo. User" %>
    <%@ page import="org.hibernate.Session" %>
    <%@ page import="com.hiber.util.HibernateUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>:: Home ::</title>
</head>
<body>
<table width="100%">
 <tr bgcolor=F9F9F3>
  <td align="left"><h1>Login Success.....</h1></td>
  <td align="right"> 
  <h2>
   Hi, <%= request.getAttribute("username") %>
   <%BaseDaoImpl s=new BaseDaoImpl();
       User n=new User();
       Session sw = HibernateUtil.getSession();
       User user = (User) sw.get(User.class,(String)request.getAttribute("username"));
       int k=user.getOrgid();
       
%>

  
   <td><a href="Account.jsp?Id=<%=k%>&user=<%=request.getAttribute("username")  %>" >Account</a></td>
    <td><a href="Contact.jsp?Id=<%=k%>&user=<%=request.getAttribute("username")  %>" >Contact</a></td>
     <td><a href="Setup.jsp?Id=<%=k%>&user=<%=request.getAttribute("username")  %>" >Setup</a></td>
  </h2>
  </td>
 </tr>
 <tr>
  <td colspan="2"><h1 align="center"></br></br>comming soon...., website under construction</h1></td>
 </tr>
</table>
</body>
</html>