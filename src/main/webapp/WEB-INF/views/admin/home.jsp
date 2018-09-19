<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="css/icon-login.css">
<link rel="stylesheet" type="text/css" href="css/product-management.css">
<title><s:text name="title.home"></s:text></title>
<s:head />
</head>
<body>
	<div class="container-fluid wrapper">
		<s:hidden id="helloCount" value="%{helloCount}" />
		<jsp:include page="patern/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content">
			<div class="row manager-title">
				<h5>
					<s:text name="label.overview"></s:text>
				</h5>
			</div>
			<div class="row content-top">
				<div class="content-top-item">
					<div style="margin: 0; padding: 0 40px;" class="row">
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<s:a class="overview-icon">
											<i class="fa fa-check-square-o fa-2x" aria-hidden="true"></i>
										</s:a>
									</div>
									<div class="col-9">
										<s:text name="label.totalProduct"></s:text>
										<br> <span class="total-label"><s:property
												value="totalProduct" /> </span>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<s:a class="overview-icon">
											<i class="fa fa-list-ol fa-2x" aria-hidden="true"></i>
										</s:a>
									</div>
									<div class="col-9">
										<s:text name="label.totalOrder"></s:text>
										<br> <span class="total-label"><s:property
												value="totalOrder" /></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<s:a class="overview-icon">
											<i class="fa fa-list-alt fa-2x" aria-hidden="true"></i>
										</s:a>
									</div>
									<div class="col-9">
										<s:text name="label.totalCategory"></s:text>
										<br> <span class="total-label"> <s:property
												value="totalCategory" />
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<s:a class="overview-icon">
											<i class="fa fa-users fa-2x" aria-hidden="true"></i>
										</s:a>
									</div>
									<div class="col-9">
										<s:text name="label.totalClient"></s:text>
										<br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<s:a class="overview-icon">
											<i class="fa fa-money fa-2x" aria-hidden="true"></i>
										</s:a>
									</div>
									<div class="col-9">
										<s:text name="label.income"></s:text>
										<br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--top10 product-->
					<div class="row top10-label">
						<h6>
							<s:text name="label.topProduct"></s:text>
						</h6>
						<table class="table">
							<thead class="thead-light">
								<tr>
									<th width="10%" scope="col"><s:text name="label.serial"></s:text></th>
									<th width="15%" scope="col"><s:text name="label.productId"></s:text></th>
									<th width="15%" scope="col"><s:text name="label.image"></s:text></th>
									<th scope="col"><s:text name="label.productName"></s:text></th>
									<th width="12%" scope="col"><s:text
											name="label.orderCount"></s:text></th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="top10" var="p" status="stt">
									<tr>
										<th scope="row"><s:property value="%{#stt.index+1}" /></th>
										<td><s:property value="#p.products.id" /></td>
										<td><img height="50px"
											src="images/<s:property value="#p.products.image"/> " alt="" /></td>
										<td><s:property value="#p.products.name" /></td>
										<td><s:property value="#p.amount" /></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
	<s:if test="hasActionMessages()">
		<!-- Modal Login Success -->
		<div class="modal fade" id="loginSuccess" tabindex="-1" role="dialog"
			aria-labelledby="loginSuccess" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="loginSuccessTitle">Đăng nhập thành công!</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
							viewBox="0 0 130.2 130.2"> <circle class="path circle"
							fill="none" stroke="#73AF55" stroke-width="6"
							stroke-miterlimit="10" cx="65.1" cy="65.1" r="62.1" /> <polyline
							class="path check" fill="none" stroke="#73AF55" stroke-width="6"
							stroke-linecap="round" stroke-miterlimit="10"
							points="100.2,40.2 51.5,88.8 29.8,67.5 " /> </svg>
					</div>
				</div>
			</div>
		</div>
	</s:if>
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#loginSuccess').modal("show");
			setTimeout(function() {
				$('#loginSuccess').modal("hide");
				$('#loginSuccess').css('z-index','-1')
			}, 2000);
		});
	</script>
</body>
</html>