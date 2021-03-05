<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>
<style>
body {
  background-image: url("https://thumbs.dreamstime.com/b/art-colour-bokeh-light-background-abstract-art-design-background-light-texture-abstract-light-bokeh-backgrounds-art-colour-117685055.jpg");
}
</style>

<body>
<div class="container">
<div class="col-md-12  col-md-8">
	<form action="<c:url value="${PageContext}/UpdateProduct"/>" method="post">
<table class="table table-bordered table-responsive" align="center">
	<tr bgcolor="#E5E4E2">
		<td align="center" colspan="2"><h3>Product Details </h3></td>
	</tr>
	<tr>
		<td>Product Id</td>
		<td><input type="text" name="prodId"  class="form-control" value="${product.productId}" readonly/></td>
	</tr>
	<tr >
		<td>Product Name</td>
		<td><input type="text" name="prodName" class="form-control" value="${product.productName}"/></td>
	</tr>
	<tr >
		<td>Product Description</td>
		<td><input type="text" name="prodDesc" class="form-control" value="${product.productDesc}"/></td>
	</tr>
	<tr >
		<td>Stock</td>
		<td><input type="text" name="stock" class="form-control" value="${product.stock}"/></td>
	</tr>
	<tr >
		<td>Price</td>
		<td><input type="text" name="price" class="form-control" value="${product.price}"/></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="Product Update" class="btn btn-info"/>
		</td>
	</tr>
</table>
</form>
</div>
</div>
</body>
</html>