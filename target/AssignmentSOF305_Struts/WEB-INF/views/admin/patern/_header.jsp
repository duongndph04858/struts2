<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/_header.css">
</head>
<body>
	<!--header-->
	<div class="row wrap-header">
		<div class="row header-top">
			<div class="col-3" style="height: 66px">
				<!--logo-->
				<s:a action="home" class="home">
					<img src="images/milo.png" height="100%" alt="">
				</s:a>
			</div>
			<div class="col-9 d-flex justify-content-end pr-6">
				<div class="d-flex align-items-center">
					<img src="images/user-avatar.jpg" id="user-avatar" alt="">
					<div class="dropdown">
						<s:a class="btn dropdown-toggle" role="button" id="userAction"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<s:property value="#session.USER.firstname" />
						</s:a>
						<div class="dropdown-menu" aria-labelledby="userAction">
							<s:a action="userInfo" class="dropdown-item">
								<i class="fa fa-user-circle-o" aria-hidden="true"></i>
								&nbsp; <s:text name="user.info"></s:text>
							</s:a>
							<s:a id="action-logout" class="dropdown-item" data-toggle="modal"
								data-target="#logoutModal">
								<i class="fa fa-power-off" aria-hidden="true"></i>
									&nbsp; <s:text name="user.logout"></s:text>
							</s:a>
						</div>
					</div>
					<div class="language-dropdown">
						<s:a class="btn dropdown-toggle" role="button" id="language"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<s:text name="user.language"></s:text>
						</s:a>
						<div class="dropdown-menu" aria-labelledby="language">
							<s:url action="home" var="home">
								<s:param name="request_locale">en</s:param>
							</s:url>
							<s:a id="en" href="%{home}" class="dropdown-item"> English </s:a>
							<s:url action="home" var="home">
								<s:param name="request_locale">vi</s:param>
							</s:url>
							<s:a id="vi" href="%{home}" class="dropdown-item"> Vietnamese </s:a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row d-flex justify-content-between header-bottom">
			<div class="menu-item d-flex align-items-center">
				<s:a action="home" class="home-link menu-link">
					<i class="fa fa-home" aria-hidden="true"></i>
				</s:a>
			</div>
			<div class="menu-item d-flex  align-items-center">
				<s:a action="productInput" class="menu-link">
					<s:text name="menu.product"></s:text>
				</s:a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<s:a action="categoryInput" class="menu-link">
					<s:text name="menu.category"></s:text>
				</s:a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<s:a action="OrderInput" class="menu-link">
					<s:text name="menu.order"></s:text>
				</s:a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<s:a action="promotionInput" class="menu-link">
					<s:text name="menu.promotion"></s:text>
				</s:a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<s:a action="quickResponeInput" class="menu-link">
					<s:text name="menu.respone"></s:text>
				</s:a>
			</div>
			<div class="menu-item d-flex align-items-center">
				<s:a action="shopSettingInput" class="menu-link">
					<s:text name="menu.setting"></s:text>
				</s:a>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="logoutModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="logoutModal">
						<s:text name="logout.head"></s:text>
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<s:text name="logout.message"></s:text>
				</div>
				<div class="modal-footer">
					<s:form id="form-logout" action="logout" theme="simple"
						method="post">
						<button id="btn-logout" type="submit" class="btn btn-danger">
							<s:text name="logout.submit"></s:text>
						</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<s:text name="logout.cancer"></s:text>
						</button>
					</s:form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript">
		$(document).ready(
				function() {
					var url = window.location.href;
					if (jQuery.inArray('_', url) != -1) {
						var uri = url.split('?');
						url = uri[0];
					}
					if (jQuery.inArray('_', url) == -1
							&& jQuery.inArray('=', url) != -1) {
						url = '/AssignmentSOF305-Struts/home.action';
					}
					$('#vi').click(function() {
						$(this).attr('href', url + '?request_locale=vi')
					});
					$('#en').click(function() {
						$(this).attr('href', url + '?request_locale=en')
					});
				});
	</script>
</body>
</html>