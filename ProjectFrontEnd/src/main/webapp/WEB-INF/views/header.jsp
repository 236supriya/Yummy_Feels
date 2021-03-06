<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%-- isELIgnored==>  ${..} was printing as it is so i have added this by surfing web --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html >

<html>
<head>
<meta name="viewport" content="width=device-width,intial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="<c:url value='/resources/css/navcolor.css'></c:url>">

<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Yummy_feels</title>
</head>
<body>
	<div id="containerfluid" class="container-fluid">
		<nav class="navbar navbar-default" id="navcolor">
			<div class="navbar-header">
				<a href="<c:url value='/'></c:url>" class="navbar-brand"><img
					src="<c:url value='/resources/images/logo.png'></c:url>"
					height="30px" width="90px"></a>
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#collapse-example"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="collapse-example">

				<ul class="nav navbar-nav" id="links">
					<li><a href="<c:url value='/'></c:url>"><span
							class="glyphicon glyphicon-home"></span>Home</a></li>
					<li><a href="<c:url value='/aboutus'></c:url>">About Us</a></li>
					<li><a href="<c:url value='/all/getallproducts'></c:url>">Browse
							all products</a></li>
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Manage Product <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value='/admin/getproductform'></c:url>">Add
										Product</a></li>
								<li><a href="<c:url value='/admin/addcategory'></c:url>">Add
										category</a></li>
							</ul></li>
					</security:authorize>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Select By Cateogory <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<c:forEach var="c" items="${categories }">
								<li><a
									href="<c:url value='/all/searchbycategory?searchCondition=${c.categoryname }'></c:url>">${c.categoryname }</a></li>
							</c:forEach>
							<li><a
								href="<c:url value='/all/searchbycategory?searchCondition=All'></c:url>"">All</a></li>
						</ul></li>



					<c:if test="${pageContext.request.userPrincipal.name==null }">
						<li><a
							href="<c:url value='/all/getregistrationform'></c:url>">Sign
								Up</a></li>
						<li><a href="<c:url value='/login'></c:url>"><span
								class="glyphicon glyphicon-log-in"></span>Sign In</a></li>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name!=null }">

						<security:authorize access="hasRole('ROLE_USER')">
							<li><a href="<c:url value='/cart/getcartitems'></c:url>"><span
									class="glyphicon glyphicon-shopping-cart"></span>(${cartSize })</a></li>
						</security:authorize>
						<li class="dropdown"><a href="#" data-toggle="dropdown">Welcome
								${pageContext.request.userPrincipal.name }</a>
							<ul class="dropdown-menu">
								<li><a
									href="<c:url value='/j_spring_security_logout'></c:url>"><span
										class="glyphicon glyphicon-log-out"></span>Sign Out</a></li>
								<li><security:authorize access="hasRole('ROLE_USER')">
										<a href="<c:url value='/all/orderdetails'></c:url>"><span
											class="glyphicon glyphicon-file">History</span></a>
									</security:authorize></li>
							</ul></li>
					</c:if>
				</ul>
			</div>
			<nav>
	</div>
</body>
</html>







