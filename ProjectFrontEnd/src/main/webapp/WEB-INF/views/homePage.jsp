<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> -->
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/homepage.css'></c:url>">
<title><img
	src="<c:url value='/resources/images/logo.png'></c:url>" height="30px"
	width="90px">Yummy_feels</title>
</head>

<body>

	<div class="container-fluid">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->

			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="first-slide home-image" src="resources/images/one.jpg"
						alt="first slide" width="100%">
					<div class="container">
						<div class="carousel-caption">
							<h1>FAST FOOD</h1>
							<h3>Exclusive Combo Offer Just Rs.100</h3>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="second-slide home-image"
						src="resources/images/twoo.jpg" alt="Second slide" width="100%">
					<div class="container">
						<div class="carousel-caption">
							<h1>KIDS FAVORITE</h1>
							<h3>children's special lunch box</h3>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="third-slide home-image "
						src="resources/images/three.jpg" alt="Third slide" width="100%">
					<div class="container">
						<div class="carousel-caption">
							<h1>HEALTHY FOOD</h1>
							<h3>"Health is the real wealth" enjoy delicious healthy food</h3>

						</div>
					</div>
				</div>
				<div class="item">
					<img class="forth-slide home-image "
						src="resources/images/four.jpg" alt="forth slide" width="100%">
					<div class="container">
						<div class="carousel-caption">
							<h1>FRANKIE</h1>
							<h3>varieties of frankie available here Sign up now</h3>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="fifth-slide home-image "
						src="resources/images/five.jpg" alt="fifth slide" width="100%">
					<div class="container">
						<div class="carousel-caption">
							<h1>DESSERT</h1>
							<h3>Buy Full Lunch/Dinner Thali Dessert Free!!</h3>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		<!-- /.carousel -->

	</div>
	<br>
	<br>
	<div class="container">
		<h1 align="center">OUR SPECIALITY</h1>
		<div class="raw">
			<div class="col-sm-4">
				<a
					href="<c:url value='all/searchbycategory?searchCondition=All%20in%20one%20Meal'></c:url>"><img
					src="resources/images/hp1.jpg" class="rounded-img" width="350px"></a>
				<p class="content">
					<b>ALL-IN-1-MEALS</b><br> Our Contemporary Take on the
					Authentic Royal Thali. Bon Appetit!
				</p>
			</div>
			<div class="col-sm-4">
				<a
					href="<c:url value='all/searchbycategory?searchCondition=Sandwiches'></c:url>"><img
					src="resources/images/hp2.jpg" class="rounded-img" width="350px"></a>
				<p class="content">
					<b>SANDWICHES</b></br> Indian Inspired Sub-Style Sandwiches. Oven Baked
					in a Multi-grain Bread.
				</p>
			</div>
			<div class="col-sm-4">
				<a
					href="<c:url value='all/searchbycategory?searchCondition=Paratha'></c:url>"><img
					src="resources/images/hp3.jpg" class="rounded-img" width="350px"></a>
				<p class="content">
					<b>PARATHA WRAPS</b></br> Whole Wheat (NOT Maida) Paratha Base, <br>Stuffed
					with Delicious Fillings,Oven Baked (NOT fried)
				</p>
				<br> <br>
			</div>

		</div>
		<div class="raw">
			<div class="col-sm-4">
				<a
					href="<c:url value='all/searchbycategory?searchCondition=Dum%20Biryani'></c:url>"><img
					src="resources/images/hp4.jpg" class="rounded-img" width="350px"></a>
				<p class="content">
					<b>DUM BIRYANI</b><br> A Traditional Dum Preparation.
					Extra-Long Grain Basmati Rice & Aromatic Whole Spices. Indulge in
					the Feast.
				</p>
			</div>
			<div class="col-sm-4">
				<a
					href="<c:url value='all/searchbycategory?searchCondition=Curries'></c:url>"><img
					src="resources/images/hp5.jpg" class="rounded-img" width="350px"></a>
				<p class="content">
					<b>CURRIES</b></br> <br> Our honest attempt to serve the most
					authentic curries. Minus the excessive makhan
				</p>
			</div>
			<div class="col-sm-4">
				<a
					href="<c:url value='all/searchbycategory?searchCondition=yummy%20dessert'></c:url>"><img
					src="resources/images/hp6.jpg" class="rounded-img" width="350px"></a>
				<p class="content">
					<br> <b>DESSERTS & DRINKS</b><br> <br> Irresistible
					Treats and Refreshing Sips
				</p>

			</div>
		</div>
	</div>
</body>
<br>
<br>
<br>
<br>

</html>
<%@ include file="footer.jsp"%>