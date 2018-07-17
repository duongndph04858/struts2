<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--header-->
	<div class="row wrap-header">
		<div class="row header-top">
			<div class="col-3">
				<!--logo-->
				<s:url action="index" var="index"></s:url>
				<a href="${index}" class="home"> <img src="images/milo.png"
					height="100%" alt="">
				</a>
			</div>
			<div class="col-9 d-flex justify-content-end">
				<div class="d-flex align-items-center">
					<img src="images/user-avatar.jpg" id="user-avatar" alt="">
					<div class="dropdown">
						<a class="btn dropdown-toggle" role="button" id="userAction"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Dương </a>
						<div class="dropdown-menu" aria-labelledby="userAction">
							<s:url action="userInfo" var="userInfo"></s:url>
							<a class="dropdown-item" href="${userInfo }"> Thông tin cá
								nhân </a>
							<s:url action="logout" var="logout"></s:url>
							<a class="dropdown-item" href="${logout }"> Đăng xuất </a>
						</div>
					</div>
					<div class="language-dropdown">
						<a class="btn dropdown-toggle" role="button" id="language"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							VN </a>
						<div class="dropdown-menu" aria-labelledby="language">
							<a class="dropdown-item" href="#"> English </a> <a
								class="dropdown-item" href="#"> Vietnamese </a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row d-flex justify-content-between header-bottom">
			<div class="menu-item d-flex align-items-center">
				<s:url action="index" var="index"></s:url>
				<a href="index" class="home-link menu-link"> <i
					class="fa fa-home" aria-hidden="true"></i>
				</a>
			</div>
			<div class="menu-item d-flex  align-items-center">
				<s:url action="productInput" var="productInput"></s:url>
				<a href="${productInput }" class="menu-link"> Sản phẩm </a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<s:url action="orderInput" var="orderInput"></s:url>
				<a href="${orderInput }" class="menu-link"> Đơn hàng </a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<s:url action="categoryInput" var="categoryInput"></s:url>
				<a href="${categoryInput }" class="menu-link"> Danh mục </a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<s:url action="promotionInput" var="promotionInput"></s:url>
				<a href="${promotionInput }" class="menu-link"> Khuyến mãi </a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<s:url action="quickResponeInput" var="quickResponeInput"></s:url>
				<a href="${quickResponeInput }" class="menu-link"> Thiết lập
					phản hồi nhanh </a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<s:url action="shopInput" var="shopInput"></s:url>
				<a href="${shopInput }" class="menu-link"> Thiết lập cửa hàng </a>
			</div>
		</div>
	</div>
</body>
</html>