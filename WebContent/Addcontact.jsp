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
<div class="container">
<div class="alert alert-success" role="alert">
<P>Add here   <%=cname %>!</P>
</div>
</div>
<form method="post" action="Addcontact">
 <div class="form-group">
<input type="hidden" name="aid" value="<%=k%>"> 
<input type="hidden" name="orgid" value="<%=z%>"> 
<input type="hidden" name="customername" value="<%=cname %>">
Write your contact number:-
<input type="text" class="form-control" name="contactnumber" >
</div>
<div style="text-align:center"> 
<input type="submit" class="btn btn-info" value="Add" >
</div>
</form>

</body>
</html>