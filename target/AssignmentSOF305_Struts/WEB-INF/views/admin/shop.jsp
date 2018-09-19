<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/product-management.css">
<link type="text/css" rel="stylesheet" href="css/icon-login.css">
<title>Quản lý cửa hàng</title>
</head>
<body>
	<div class="container-fluid wrapper">
		<s:hidden id="helloCount" type="hidden" value="%{#session.helloCount}" />
		<jsp:include page="patern/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content">
			<div class="row manager-title">
				<h5>
					<s:i18n name="home.home">
						<s:text name="overview.label"></s:text>
					</s:i18n>

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
										<s:i18n name="home.home">
											<s:text name="overview.totalProduct"></s:text>
										</s:i18n>
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
											<i class="fa fa-list-ol fa-2x" aria-hidden="true"></i>
										</s:a>
									</div>
									<div class="col-9">
										<s:i18n name="home.home">
											<s:text name="overview.totalOrder"></s:text>
										</s:i18n>
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
											<i class="fa fa-list-alt fa-2x" aria-hidden="true"></i>
										</s:a>
									</div>
									<div class="col-9">
										<s:i18n name="home.home">
											<s:text name="overview.totalCategory"></s:text>
										</s:i18n>
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
											<i class="fa fa-users fa-2x" aria-hidden="true"></i>
										</s:a>
									</div>
									<div class="col-9">
										<s:i18n name="home.home">
											<s:text name="overview.totalClient"></s:text>
										</s:i18n>
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
										<s:i18n name="home.home">
											<s:text name="overview.income"></s:text>
										</s:i18n>
										<br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--top10 product-->
					<div class="row top10-label">
						<h6>
							<s:i18n name="home.home">
								<s:text name="overview.top10"></s:text>
							</s:i18n>
						</h6>
						<s:i18n name="global">
							<table class="table">
								<thead class="thead-light">
									<tr>
										<th class="small-td" scope="col"><s:text
												name="table.serial"></s:text></th>
										<th class="small-td" scope="col"><s:text name="table.id"></s:text></th>
										<th class="small-td" scope="col"><s:text
												name="table.image"></s:text></th>
										<th scope="col"><s:text name="table.productName"></s:text></th>
										<th width="12%" scope="col"><s:text name="table.order"></s:text></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>ABC</td>
										<td><img class="img-fluid" width="50%"
											src="images/mbd-green-gully-cavalier.jpg" alt=""></td>
										<td>ABC</td>
										<td>0</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>ABC</td>
										<td><img class="img-fluid" width="50%"
											src="images/mbd-green-gully-cavalier.jpg" alt=""></td>
										<td>ABC</td>
										<td>0</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>ABC</td>
										<td><img class="img-fluid" width="50%"
											src="images/mbd-green-gully-cavalier.jpg" alt=""></td>
										<td>ABC</td>
										<td>0</td>
									</tr>
								</tbody>
							</table>
						</s:i18n>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal Login Success -->
	<div class="modal fade" id="loginSuccess" tabindex="-1" role="dialog"
		aria-labelledby="loginSuccessTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="loginSuccessTitle">Đăng nhập thành
						công!</h5>
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
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"
		integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
		crossorigin="anonymous"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var i = $('#helloCount').val();
			if (i == 0) {
				$('#loginSuccess').modal("show");
				setTimeout(function() {
					$('#loginSuccess').modal("hide");
				}, 2500);
			}
		});
	</script>
</body>
</html>