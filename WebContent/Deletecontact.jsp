<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
int k=Integer.parseInt(request.getParameter("Id"));
int z=Integer.parseInt(request.getParameter("orgid"));
String cname=request.getParameter("customername");
String u=request.getParameter("user");
int addr=Integer.parseInt(request.getParameter("contactnumber"));

%>

<form method="post" action="Deletecontact">
<input type="hidden" name="aid" value="<%=k%>"> 

<input type="hidden" name="customername"  value="<%=cname%>" ><br>

<input type="hidden" name="contactnumber" value="<%=addr%>" ><br><br><br>
<div class="alert alert-danger" role="alert">
Are you sure you want to delete contact <b> <%=cname%></b>!<br><br>
</div>
<div style="text-align:center"> 
<input type="submit" class="btn btn-warning" value="Yes"><br><br>
</div>
<div style="text-align:center"> 
<a class="btn btn-warning" href="Contact.jsp?Id=<%=z %>&user=<%=u%>">NO</a><br><br>
</div>
</body>
</html>