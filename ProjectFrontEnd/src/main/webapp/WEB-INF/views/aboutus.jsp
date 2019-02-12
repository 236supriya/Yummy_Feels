<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<c:url value='/resources/css/homepage.css'></c:url>">
</head>
<body>
	<br>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4">
				<img src="resources/images/h1.jpg" width="400px" height="300px">
			</div>
			<div class="col-sm-4" align="center">
				<br>
				<br> <br>
				<pre style="font-family: Clarendon BT"> They say,There is no love sincerer 
than the love for food. For us, there is no 
love sincerer than the love for DESI FOOD At
 <b style="color: red">Yummyfeels</b> we serve you , 
our best food with a unique Desi twist.
Our one simple mantra <b>"We only serve food,
 that we love to eat."</b>
 </pre>
			</div>
			<div class="col-sm-4">
				<img src="resources/images/h2.jpg" width="400px" height="300px">
			</div>
		</div>
	</div>
	<br>
	<br>
	<center>
		<a href="<c:url value='/all/getallproducts'></c:url>"><input
			type="button" value="Go Back and Checkout our meal"
			class="btn btn-danger"></a>
	</center>
</body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</html>
<%@ include file="footer.jsp"%>