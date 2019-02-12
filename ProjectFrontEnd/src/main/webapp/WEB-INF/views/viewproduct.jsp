<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.img-rounded:hover {
	-ms-transform: scale(1.5); /* IE 9 */
	-webkit-transform: scale(1.5); /* Safari 3-8 */
	transform: scale(1.5);
}
</style>
</head>
<body>
	<div class="container">
		<h3>
			<b>${ productAttr.productname}</b>
		</h3>
		<br> <br>
		<div class="row">
			<div class="col-sm-6">
				<img
					src="<c:url value="/resources/images/${productAttr.id }.png"></c:url>"
					height="350px" width="350px" class="img-rounded">
			</div>
			<div class="col-sm-6">
				<b>Product Name :</b> ${ productAttr.productname}<br>
				<hr>
				<b>Description :</b> ${productAttr.description }<br>
				<hr>
				<b>Price :</b> ${productAttr.price }<br>
				<hr>
				<b>Category name :</b> ${productAttr.category.categoryname }<br>
				<hr>
				<b>In Stock :</b> ${productAttr.quantity }<br>
				<security:authorize access="hasRole('ROLE_USER')">

					<c:choose>
						<c:when test="${productAttr.quantity==0}">
							<input type="submit" class="btn btn-lg btn-danger"
								value="OUT OF STOCK" disabled>
						</c:when>
						<c:otherwise>
							<form
								action="<c:url value='/cart/addtocart/${ productAttr.id}'></c:url>">
								Enter required units<br> <input type="number"
									name="requestedQuantity" min="1" max="${productAttr.quantity }">
								<input type="submit" class="btn btn-lg btn-info"
									value="Add To Cart">
								
							</form>
						</c:otherwise>
					</c:choose>


				</security:authorize>
				<hr>
				<a href="<c:url value='/all/getallproducts'></c:url>"><input
					type="button" value="Previous Page" class="btn btn-lg btn-info"></a>
				<c:if test="${pageContext.request.userPrincipal.name==null }">
					<a href="<c:url value='/login'></c:url>"><input
					type="button" value="sign in" class="btn btn-lg btn-info"></a>	
						</c:if>
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<a
						href="<c:url value='/admin/getupdateform?id=${productAttr.id }'></c:url>"><input
						type="button" value="Update Product" class="btn btn-warning"></a>
				</security:authorize>
				</form>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>
<%@ include file="footer.jsp"%>