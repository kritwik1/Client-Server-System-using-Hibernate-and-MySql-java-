<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"="anonymous">
<meta charset="ISO-8859-1">
<title>Edit Account</title>
</head>
<body>
<% 
int k=Integer.parseInt(request.getParameter("Id"));
String cname=request.getParameter("customername");
String addr=request.getParameter("address");

%>
<br><br>
<form method="post" action="Editaccount">
 <div class="form-group">
<input type="hidden" name="aid" value="<%=k%>"> 
Customer Name:
<input type="text" class="form-control" name="customername"  value="<%=cname%>" ><br>

Account Type:
<div class="form-check">
<input type="radio" class="form-check-input" name="type" value="Current Account"  required>Current Account<br>
<input type="radio" class="form-check-input" name="type" value="Saving Account"  required >Saving Account<br>
</div>

Address:
<input type="text" class="form-control" name="address" value="<%=addr%>" ><br><br>
</div>
<div style="text-align:center">  
<input type="submit" class="btn btn-info" value="Edit Details"><br><br>
</div>




</form>

</body>
</html>