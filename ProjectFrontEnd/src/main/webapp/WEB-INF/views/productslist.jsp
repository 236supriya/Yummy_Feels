<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
	$(document).ready(function() {
		var searchCondition = '${searchCondition}'
		$('.table').DataTable({
			"lengthMenu" : [ [ 10, 15, -1 ], [ 10, 15, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	})
</script>

</head>
<body>

	<div class="container">
		<table width="100%" height="100%" class="table">
			<thead>
				<tr align="center">
					<!-- 			    <th>Product Id</th> -->
					<th>Image</th>
					<th>Product Name</th>
					<th>Categoryname</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products }" var="p">
					<tr>
						<%--         <td>${p.id }</td> --%>
						<td><img
							src="<c:url value='/resources/images/${p.id}.png'></c:url>"
							height="200px" width="300px" class="img-rounded"></td>
						<td align="center"><br>
						<br>
						<h4>${p.productname }</h4></td>
						<td align="center"><br>
						<br>
						<h4>${p.category.categoryname}</h4></td>
						<td align="center"><br>
						<br>
						<h4>${p.price }</h4></td>
						<td align="center"><br>
						<br>
						<br> <a
							href="<c:url value='/all/getproduct?id=${p.id }'></c:url>"><span
								style="font-size: 20px" class="glyphicon glyphicon-info-sign"></span></a>
							<security:authorize access="hasRole('ROLE_ADMIN')">
								<a href="<c:url value='/admin/deleteproduct/${p.id }'></c:url>"
									class="btn btn"
									onclick="return confirm('Are you sure you want to delete this item?');"><span
									style="font-size: 20px" class="glyphicon glyphicon-trash"></span></a>
								<a
									href="<c:url value='/admin/getupdateform?id=${p.id }'></c:url>"><span
									style="font-size: 20px" class="glyphicon glyphicon-pencil"></span></a>
							</security:authorize></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>