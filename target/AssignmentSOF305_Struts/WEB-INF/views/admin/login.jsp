<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<s:head />
<head>
<title>Đăng nhập</title>
<base href="${pageContext.servletContext.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>
	<div
		class="row container-fluid align-items-center d-flex justify-content-center bg">
		<div class="col-4">
			<div class="row logo">
				<img alt="" src="images/milo.png" width="30%" class="m-auto">
			</div>
			<div class="row login">
				<div class="content">
					<div id="login-form">
						<s:form class="w-100" action="authentication" theme="simple"
							method="post">
							<table class="w-90">
								<tr class="bd-bt">
									<td class="pt-5"><i class="fa fa-user" aria-hidden="true"></i></td>
									<td class="pt-5"><s:textfield class="w-100  bd-none"
											name="user.username" /></td>
								</tr>
								<tr>
									<td colspan="2"><s:fielderror id="error.username" fieldName="user.username"></s:fielderror>
									</td>
								</tr>
								<tr class="bd-bt">
									<td class="pt-4"><i class="fa fa-lock" aria-hidden="true"></i></td>
									<td class="pt-4"><s:password class="w-100 bd-none"
											name="user.password" /></td>
								</tr>
								<tr>
									<td colspan="2"><s:fielderror id="error.password" fieldName="user.password"></s:fielderror></td>
								</tr>
								<tr>
									<td class="p-3" colspan="2"><s:url action="fogot-password"
											var="fogotPassword">
										</s:url> <a href="${fogotPassword}">Quên mật khẩu</a></td>
								</tr>

								<tr>
									<td class="center" colspan="2"><s:submit
											class="w-90 btn btn-primary" id="btn-login" value="Đăng nhập"></s:submit></td>
								<tr>
							</table>
						</s:form>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>