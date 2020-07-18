<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<body>
	</br></br></br></br>
	<h2 align="center">
	<% if(request.getAttribute("msg2") != null) { %>
		<p style="color: red">
			<%= request.getAttribute("msg2") %>
		</p>
	<% } %>
	</h2>
	<div align="center">
		<form action="userRegistration" method="post">
			<table align="center" class="table table-striped">
				<tr>
					<td colspan="2" align="center"><b>User Registration</b></td>
				</tr>
				<tr>
					<td>Username* :</td>
					<td><input type="text" name="username" required></td>
				</tr>
				<tr>
					<td>Password* :</td>
					<td><input type="password" name="password" required></td>
				</tr>
				<tr>
					<td>Conform Password* :</td>
					<td><input type="password" name="confPassword" required></td>
				</tr>
				<tr>
					<td>First Name* :</td>
					<td><input type="text" name="firstName" required></td>
				</tr>
				<tr>
					<td>Last Name* :</td>
					<td><input type="text" name="lastName" required></td>
				</tr>
				<tr>
					<td>Date of Birth* :</td>
					<td><input type="date" name="dob" required></td>
				</tr>
				<tr>
					<td>Mobile Number :</td>
					<td><input type="number" name="mobileNo"></td>
				</tr>
				<tr>
					<td>Email Id :</td>
					<td><input type="email" name="emailId"></td>
				</tr>
				<tr>
					<td align="center"><input type="submit" class="btn btn-primary" value="Register User"></td>
					<td align="center"><input type="reset" class="btn btn-danger" name="Reset Form"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>