<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp"%>
<!DOCTYPE html>
<div class="container-fluid">

	<div class="row">
			
			<div class="col-sm-3 col-md-6 col-lg-4">
				<form action="perform_login" method="post" style="height:100%">

					<table class="table table-bordered table-condensed">
						<thead>
							<tr bgcolor="gray">
								<th colspan="2"><center>
										<i>LogIn Here</i>
									</center></th>
							</tr>
						</thead>
						<tr>
							<td>Login Name</td>
							<td><input type="text" name="username" class="form-control" /></td>
						</tr>
						<tr>
							<td>Password</td>
							<td><input type="password" name="password"
								class="form-control" /></td>

						</tr>
						<tr bgcolor="">
							<td colspan="2">
								<center>
									<input type="submit" value="SUBMIT" class="btn-info" />
								</center>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="col-sm-9 col-md-6 col-lg-8 ">
				<img src="images/loginimg.jpg" alt="login logo"  height="100%"/>
			</div>
		</div>
		</div>
	