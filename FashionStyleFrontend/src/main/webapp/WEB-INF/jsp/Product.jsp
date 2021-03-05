<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<style>
body {
  background-image: url("https://thumbs.dreamstime.com/b/art-colour-bokeh-light-background-abstract-art-design-background-light-texture-abstract-light-bokeh-backgrounds-art-colour-117685055.jpg");
}
</style>
<body>
<div class="container">
<div class="col-md-12 col-sm-8 ">
	<form action="<c:url value='/insertProduct'/>" method="post" align="center">
	
		<table  class="table table-bordered " align="center">
			<tr bgcolor="#f2f2f2">
				<td colspan="2" ><h3>Insert Product</h3></td>
			</tr>
			<tr>
				<td>Product Id</td>
				<td><input type="text" class="form-control"  name="productId"/></td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><input type="text" class="form-control"  name="productName"/></td>
			</tr>
			<tr >
				<td>Product Description</td>
				<td><textarea row="5" cols="50"  class="form-control" name="productDesc"></textarea></td>
			</tr>
			<tr>
				<td>Stock</td>
				<td><input type="text" class="form-control"  name="stock"></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="text" class="form-control"  name="price"></td>
			</tr>
			<tr>
				<td>Supplier Name</td>
				<td>
				<select name="category">
				<c:forEach items="${categoryList}" var="category">
				<option value="${category.categoryId }">${category.categoryName }</option>
				</c:forEach>
				</select>
				</td>
			</tr>
			<tr >
				<td colspan="2" >
					<center>
					<input type="submit" value="SUBMIT" class="btn btn-info">
					</center>
				</td>
			</tr>
			
		</table>
	</div>
	</form>
	<div class="col-md-12  col-sm-8">
		<table class="table table-striped  table-bordered ">
		<thead bgcolor="#f2f2f2">
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Product Desc</th>
			<th>Stock</th>
			<th>Price</th>
			<th colspan='2'>Action</th>
		</thead>
	<c:forEach items="${productList }" var="product">
		<tr>
			<td>${product.productId}</td>
			<td>${product.productName}</td>
			<td>${product.productDesc }</td>
			<td>${product.stock}</td>
			<td>${product.price}</td>
			
			<td><a href="<c:url value='/editProduct/${product.productId}'/>" class="btn btn-info">Edit</a></td>
			
			<td><a href="<c:url value='/deleteProduct/${product.productId }'/>" class="btn btn-danger">Delete</a></td>
		</tr>
	
	</c:forEach>
	</table>
	</div>
</div>
</body>
</html>