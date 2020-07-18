<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"="anonymous">
<meta charset="ISO-8859-1">
<title>Add Account</title>
</head>
<body>

<% 
int k=Integer.parseInt(request.getParameter("Id"));
%>
<div class="container">
<div class="alert alert-primary" role="alert">
<p>You can Add new account here <b> <%= request.getParameter("user") %></b>! </p>
</div>
</div>
<form  method="post"action="Addaccount">
<div class="form-group">
<input type="hidden" name="orgid" value="<%=k%>"> 
Customer Name:
<input type="text" class="form-control" name="customername" ><br>
Account Type:
<div class="form-check">
<input type="radio" class="form-check-input" name="type" value="Current Account" >Current Account<br>
<input type="radio" class="form-check-input" name="type" value="Saving Account" >Saving Account<br>
</div>
<input type="hidden" name="startingdate" value="<%=(new java.util.Date()).toLocaleString() %>" >
Address:
<input type="text" class="form-control" name="address" ><br>
</div>
<div style="text-align:center">
<input type="submit" class="btn btn-success" value="Create Account"><br><br>
</div>
</form>
<div class="alert alert-danger" role="alert">
<b>Note:</b>Your Account No. will be auto Generated
</div>
</body>
</html>