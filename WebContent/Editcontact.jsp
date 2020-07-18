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
String cname=request.getParameter("customername");
int addr=Integer.parseInt(request.getParameter("contactnumber"));

%>
<br>
<form method="post" action="Editcontact">
<div class="form-group">
<input type="hidden" name="cid" value="<%=k%>"> 
Customer Name:
<input type="text" class="form-control" name="customername"  value="<%=cname%>" ><br>
Contact Number:
<input type="text" class="form-control" name="contactnumber"  value="<%=addr%>" ><br>


<br><br>
</div>
<div style="text-align:center"> 
<input type="submit" class="btn btn-primary" value="Edit Details"><br><br>
</div>




</form>

</body>
</html>