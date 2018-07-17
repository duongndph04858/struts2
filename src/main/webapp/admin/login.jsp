<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<s:head/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String bg = "images/background" + new Random().nextInt(10) + ".jpg";
%>
<title>Đăng nhập</title>
<style type="text/css">
body {
	background: url("<%=bg%>") no-repeat center fixed;
	background-size: cover;
}
</style>
<link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>
	<div style="width: 100%; position: relative;">
		<div id="login-form">
			<s:form action="login" method="post">
				<s:textfield name="usersBean.username" label="Tài khoản" />
				<s:textfield name="usersBean.password" label="Mật khẩu" />
				<tr>
					<td></td>
					<td class="fogot-col"><s:url action="fogot-password" var="fogotPassword">
						</s:url> <a href="${fogotPassword}">Quên mật khẩu</a>
					</td>
				<tr>
					<s:submit value="Đăng nhập"></s:submit>
			</s:form>
		</div>
	</div>
</body>
</html>