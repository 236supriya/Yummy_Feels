<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href='<c:url value="/resources/css/shipping.css"></c:url>'>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#form').validate({
			rules : {
				"apartmentnumber" : {
					required : true
				},
				"streetname" : {
					required : true
				},
				"state" : {
					required : true
				},
				"city" : {
					required : true
				},
				"country" : {
					required : true
				},
				"zipcode" : {
					required : true,
					number : true
				}
			}
		})
	})
</script>

</head>
<body>
	<div class="container">
		<c:url var="url" value="/cart/createorder"></c:url>
		<form:form modelAttribute="shippingaddress" action="${url }" id="form">
			<table align="center">

				<b><h1 align="center">Shipping Address</h1></b>
				<form:hidden path="shippingId" />
				<tr>
					<td><form:label path="apartmentnumber">
							<h3>Apartmentnumber Details</h3>
						</form:label></td>
					<td><form:input path="apartmentnumber" id="apartmentnumber"
							class="form-control" /></td>
				</tr>




				<tr>
					<td><form:label path="streetname">
							<h3>Streetname</h3>
						</form:label></td>
					<td><form:input path="streetname" id="streetname"
							class="form-control" /></td>
				</tr>



				<tr>
					<td><form:label path="city">
							<h3>City</h3>
						</form:label></td>
					<td><form:input path="city" id="city" class="form-control" /></td>
				</tr>


				<tr>
					<td><form:label path="state">
							<h3>State</h3>
						</form:label></td>
					<td><form:input path="state" id="state" class="form-control" /></td>
				</tr>


				<tr>
					<td><form:label path="country">
							<h3>Country</h3>
						</form:label></td>
					<td><form:input path="country" id="country"
							class="form-control" /></td>
				</tr>

				<tr>
					<td><form:label path="zipcode">
							<h3>Zipcode</h3>
						</form:label></td>
					<td><form:input path="zipcode" id="zipcode"
							class="form-control" /></td>
				</tr>



				<tr>
					<td align="center" colspan="2">
						<button type="submit" class="btn btn-success btn-lg">Next</button>
					</td>
				<tr>
					</form:form>
			</table>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>
