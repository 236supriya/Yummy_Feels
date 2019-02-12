<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value='/resources/css/form.css'></c:url>"
	rel="stylesheet">
<title>Yummy_feels</title>
</head>
<body>
	<div id="container" class="container">
		<c:url value="/admin/addproduct" var="url"></c:url>
		<%--what is the model attribute to which we have assigned a new product obj 
in handler method, we created a new product object and assigned the object to
the model attribute product

Product p=new Product();
model.addAttribute("product",p)
--%>
		<form:form action="${url }" modelAttribute="product"
			enctype="multipart/form-data">
			<h1 align="center">ADD PRODUCT</h1>
			<table class="table table-hover">
				<%--product.productname=".." --%>
				<tr>
					<td><h5>Enter Productname :</h5></td>
					<td><form:input path="productname" class="form-control" /> <form:errors
							path="productname" cssStyle="color:red"></form:errors></td>
				</tr>
				<%--product.description="..." --%>
				<tr>
					<td><h5>Enter description :</h5></td>
					<td><form:input path="description" class="form-control" /> <form:errors
							path="description" cssStyle="color:red"></form:errors></td>
					<%--product.getDescription() --%>
				</tr>
				<tr>
					<td><h5>Enter price :</h5></td>
					<td><form:input path="price" class="form-control" /> <form:errors
							path="price" cssStyle="color:red"></form:errors></td>
				</tr>
				<tr>
					<td><h5>Enter quantity :</h5></td>
					<td><form:input path="quantity" class="form-control" /> <form:errors
							path="quantity" cssStyle="color:red"></form:errors></td>
				</tr>
				<tr>
					<td><h5>Select Category :</h5></td>
					<td><form:select path="category.categoryid"
							class="form-control">
							<c:forEach items="${categories }" var="c">
								<%--model.addAttribute("categories",categories), items refers the model attribute categories --%>
								<form:option value="${c.categoryid }">${c.categoryname}</form:option>
							</c:forEach>
						</form:select></td>
				</tr>
				<tr>
					<td><h5>Upload image :</h5></td>
					<td><form:input path="image" type="file" class="form-control" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="ADD PRODUCT"
						class="form-control"></td>
			</table>
		</form:form>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>

</body>
</html>
<%@ include file="footer.jsp"%>