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
	<form action="<c:url value="${PageContext}/UpdateSupplier"/>" method="post">
<table class="table table-bordered table-responsive" align="center">
	<tr bgcolor="#E5E4E2">
		<td align="center" colspan="2"><h3>Supplier Details </h3></td>
	</tr>
	<tr>
		<td>Supplier Id</td>
		<td><input type="text" name="supId" class="form-control" value="${supplier.supplierId}" readonly/></td>
	</tr>
	<tr >
		<td>Supplier Name</td>
		<td><input type="text" name="supName" class="form-control"  value="${supplier.supplierName}"/></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="Supplier Update" class="btn btn-info"/>
		</td>
	</tr>
</table>
</form>
</div>
</div>
</body>
</html>