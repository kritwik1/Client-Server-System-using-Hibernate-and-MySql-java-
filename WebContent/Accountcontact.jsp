<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<%=z %>
<div class="container">
<div class="alert alert-success" role="alert">
<%=cname %>
</div>
</div><br>
<table class="table">
 <td><a href="Addcontact.jsp?Id=<%=k%>&orgid=<%=z %>&user=<%=user%>&customername=<%=cname %>&address=<%=addr %>""> Add Contact</a></td>
 <td><a href="Existcontact.jsp?Id=<%=k%>&orgid=<%=z %>&user=<%=user%>&customername=<%=cname %>&address=<%=addr %>""> Add from Existing Contact</a></td>
</table>
</body>
</html>