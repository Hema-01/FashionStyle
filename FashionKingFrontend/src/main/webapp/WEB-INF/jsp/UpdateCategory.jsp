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
	<form action="<c:url value="${PageContext}/updateCategory"/>" method="post">
<table class="table table-bordered table-responsive" align="center">
	<tr bgcolor="#E5E4E2">
		<td align="center" colspan="2"><h3>Category Detail</h3></td>
	</tr>
	<tr>
		<td>Category Id</td>
		<td><input type="text" name="catId" class="form-control"  value="${category.categoryId}" readonly/></td>
	</tr>
	<tr >
		<td>Category Name</td>
		<td><input type="text" name="catName" class="form-control" value="${category.categoryName}"/></td>
	</tr>
	<tr >
		<td>Category Description</td>
		<td><textarea rows="5" cols="50" class="form-control" name="catDesc">${category.categoryDesc}</textarea></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="Update Category" class="btn btn-info"/>
		</td>
	</tr>
</table>
</form>
</div>
</div>
</body>
</html>