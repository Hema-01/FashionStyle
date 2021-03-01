<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN HOME</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CMsWvAteXCJF5i15kOjpINxMwhGVYB4U8w&usqp=CAU" />
			</div>
			<div class="col-sm-6">
				Welcome: ${sessionScope.username}

				<h3>I am in Admin Module</h3>
			</div></br></br></br>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row"></br></br></br>
			<div class="col-sm-4">
				<h1><a href="showCategory">Manage Categories</a></h1>
			</div>
			<div class="col-sm-4">
				<h1><a href="showSupplier">Manage Supplier</a></h1>
			</div>
			<div class="col-sm-4">
				<h1><a href="showProduct">Manage Product</a></h1>
			</div>

		</div>
	</div>
</body>
</html>