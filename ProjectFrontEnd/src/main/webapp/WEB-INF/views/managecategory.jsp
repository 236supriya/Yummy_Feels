<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value='/resources/css/form.css'></c:url>"
	rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<c:url value="/admin/savecategory" var="cat"></c:url>
		<div class="row">
			<div class="col-sm-6" align="center">
				<h3>
					<b>All Categories</b>
				</h3>

				<table class="table table-striped"
					style="width: 300px; height: 300px;">
					<tr align="center">
						<td><strong>Category Name</strong></td>

					</tr>
					<c:forEach items="${categories}" var="c">
						<tr align="center">
							<td align="justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${c.categoryname }</td>
					</c:forEach>
					</tr>
				</table>
			</div>
			<div class="col-sm-6" align="left">
				<h3>
					<b>Add Category</b>
				</h3>
				<table class="table">
					<tr>
						<td><br> <br> <br> <br> <form:form
								class="form-horizontal" action="${cat} " method="post"
								modelAttribute="category" id="form">
								<form:label path="categoryname">Add new Category</form:label>
								<form:input path="categoryname" class="form-control"
									placeholder="Enter Category Name" id="categoryname" />
								<br>
								<input type="submit" value="ADD CATEGORY" class="form-control">
							</form:form></td>
					</tr>

				</table>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
</body>
</html>
<%@ include file="footer.jsp"%>