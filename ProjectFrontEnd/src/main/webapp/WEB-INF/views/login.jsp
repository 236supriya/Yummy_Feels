<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value='/resources/css/login.css'></c:url>"
	rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<span style="color: red"><center>
			<h2>${loginError }</h2>
		</center></span>
	<span style="color: red"><center>
			<h2>${logoutSuccess }</h2>
		</center></span>
	<table align="center" width="500px">
		<th colspan="2"><h1 align="center">
				<b>LOGIN<b></b>
			</h1></th>
		<form action="<c:url value='/j_spring_security_check'></c:url>"
			method="post">
			<tr>
				<td><h3>
						<b>Enter email </b>
					</h3></td>
				<td><input type="email" name="j_username" class="form-control"></td>
			</tr>
			<br>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td><h3>
						<b>Enter password </b>
					</h3></td>
				<td><input type="password" name="j_password"
					class="form-control"></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="Login"
					class="btn btn-success btn-lg"></td>
			</tr>
			<tr align="center">
				<td colspan="2"><h3>
						New User ? <a
							href="<c:url value='/all/getregistrationform'></c:url>">Sign
							Up</a>
					</h3></td>
			</tr>
		</form>
	</table>
</body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


</html>
<%@ include file="footer.jsp"%>
