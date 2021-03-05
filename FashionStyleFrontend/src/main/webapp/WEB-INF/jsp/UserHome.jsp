<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER Home</title>
</head>
<style>
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.price {
	color: grey;
	font-size: 22px;
}

.card button {
	border: none;
	outline: 0;
	padding: 12px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

.card button:hover {
	opacity: 0.7;
}
.row{
  border-spacing: 10px;
}
</style>
<body>
	<div class="container-fluid">
		<div class="row">

			<i><b>Welcome : ${sessionScope.username}  Enjoy your shopping..!!</b></i>

			</br> </br>
			<h4 align="center">Shop Here..!!!</h4>&nbsp;
				
		</div>

		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
						<a target="_blank" href="images/1.jpg"> <img
							src="images/1.jpg" class="img-thumbnail" style="width: 50%">
						</a> <a href="redmi9"><h1> Redmi 9 Prime</h1></a>						
						<p class="price"><i class="fa fa-rupee"></i>9,499</p>
						<p>
							<button><i class="fa fa-shopping-cart"></i> Add to Cart</button>
						</p>
					</div>
				</div>
				<div class="col-sm-4">
				<div class="card">
					<a target="_blank" href="images/2.jpg"> <img src="images/2.jpg"
						class="img-thumbnail" style="width: 50%" />
					</a>
					<h1>Samsung Galaxy F62</h1>
					<p class="price"><i class="fa fa-rupee"></i>25,999</p>
						<p>
							<button><i class="fa fa-shopping-cart"></i> Add to Cart</button>
						</p>
					</div>
				</div>
				<div class="col-sm-4">
				<div class="card">
					<a target="_blank" href="images/3.jpg"> <img src="images/3.jpg"
						class="img-thumbnail" style="width: 50%" />
					</a>
					<h3>OPPO A12</h3>
					<p class="price"><i class="fa fa-rupee"></i>8,990</p>
						<p>
							<button><i class="fa fa-shopping-cart"></i> Add to Cart</button>
						</p>
					</div>
				</div>
			</div></br>
			<div class="row">
				<div class="col-sm-4">
				<div class="card">
					<a target="_blank" href="images/4.jpg"> <img
						src="images/4.jpg" class="img-thumbnail" style="width: 50%" />
					</a>
					<h3>Redmi Note 8</h3>
					<p class="price"><i class="fa fa-rupee"></i>12,810</p>
						<p>
							<button><i class="fa fa-shopping-cart"></i> Add to Cart</button>
						</p>
					</div>
				</div>
					<div class="col-sm-4">
				<div class="card">
					<a target="_blank" href="images/4.jpg"> <img
						src="https://www.slickmobile.com.ng/pub/media/catalog/product/cache/image/500x500/e9c3970ab036de70892d86c6d221abfe/s/4/s4.jpg" class="img-thumbnail" style="width: 50%" />
					</a>
					<h3>Infinix Smart 4 Plus</h3>
					<p class="price"><i class="fa fa-rupee"></i>7,999</p>
						<p>
							<button><i class="fa fa-shopping-cart"></i> Add to Cart</button>
						</p>
					</div>
				</div>
					<div class="col-sm-4">
				<div class="card">
					<a target="_blank" href="images/4.jpg"> <img
						src="https://www.gizmochina.com/wp-content/uploads/2021/01/vivo-y12s-1.png" class="img-thumbnail" style="width: 50%" />
					</a>
					<h3>Vivo Y12s </h3>
					<p class="price"><i class="fa fa-rupee"></i>9,990</p>
						<p>
							<button><i class="fa fa-shopping-cart"></i> Add to Cart</button>
						</p>
					</div>
				</div>
				
			</div>
		</div>
</body>
</html>