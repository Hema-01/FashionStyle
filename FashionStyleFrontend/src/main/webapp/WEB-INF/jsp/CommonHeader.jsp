<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>Fashion Style</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Fashion Style</a>
			</div>
			<ul class="nav navbar-nav">
				<c:if test="${sessionScope.role==null }">
					<li><a href="index">Home</a></li>

					<li><a href="aboutus">About Us</a></li>
				</c:if>
				<c:if test="${sessionScope.role!= null }">
					<c:if test="${sessionScope.role == 'ROLE_ADMIN' }">
						<li><a href="showCategory">Manage Categories</a></li>
						<li><a href="showSupplier">Manage Supplier</a></li>
						<li><a href="showProduct">Manage Product</a></li>
						<li><a href="logout_success"><span
								class="glyphicon glyphicon-log-out"></span>Logout</a>
					</c:if>
					<c:if test="${sessionScope.role == 'ROLE_USER' }">
						<li><a href="#">Home</a>
						<li><a href="showProduct">Products</a></li>
						<li><a href="logout_success"><span
								class="glyphicon glyphicon-log-out"></span>Logout</a>
					</c:if>
				</c:if>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="register"><span
						class="glyphicon glyphicon-user"></span> Register</a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>