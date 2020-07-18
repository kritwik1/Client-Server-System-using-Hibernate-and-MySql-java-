<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Setup</title>
</head>
<body>
<% 
int k=Integer.parseInt(request.getParameter("Id"));
%>
orgid<%=k %>
<br><br>
Today's date: <%= (new java.util.Date()).toLocaleString()%>
<br>
<p>You can Setup here  <%= request.getParameter("user") %>! </p>
<td><a href="Addaccount.jsp?Id=<%=k%>&user=<%=request.getParameter("user")  %>" >Add Account</a></td>
</body>
</html>