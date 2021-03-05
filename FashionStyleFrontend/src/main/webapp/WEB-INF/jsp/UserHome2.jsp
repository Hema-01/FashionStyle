<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER Home</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<p  class="bg-secondary text-white"><i><b >Welcome : ${sessionScope.username} I am in User Module</b></i></p>
			</br> </br> </br> </br>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
		<c:forEach items="${sessionScope.productList }" var="product">
			<div class="col-sm-4">
				<p>${product.productName }</p>
				<p>${product.productDesc }</p>
				<p>${product.price}</p>
			</div>
			</c:forEach>
		</div>
	</div>


</body>
</html>