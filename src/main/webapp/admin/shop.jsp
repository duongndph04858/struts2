<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<title>Quản lý cửa hàng</title>
</head>
<body>
	<div class="container-fluid wrapper">
	<jsp:include page="patern/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content">
			<div class="row manager-title">
				<h5>Tổng quan</h5>
			</div>
			<div class="row content-top">
				<div class="content-top-item">
					<div style="margin: 0; padding: 0 40px;" class="row">
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<a class="overview-icon"> <i
											class="fa fa-check-square-o fa-2x" aria-hidden="true"></i>
										</a>
									</div>
									<div class="col-9">
										Tổng số sản phẩm <br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<a class="overview-icon"> <i class="fa fa-list-ol fa-2x"
											aria-hidden="true"></i>
										</a>
									</div>
									<div class="col-9">
										Tổng số đơn hàng <br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<a class="overview-icon"> <i class="fa fa-list-alt fa-2x"
											aria-hidden="true"></i>
										</a>
									</div>
									<div class="col-9">
										Tổng số danh mục <br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<a class="overview-icon"> <i class="fa fa-users fa-2x"
											aria-hidden="true"></i>
										</a>
									</div>
									<div class="col-9">
										Tổng số khách hàng <br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="overview-items">
								<div class="row">
									<div class="col-3 d-flex align-items-center">
										<a class="overview-icon"> <i class="fa fa-money fa-2x"
											aria-hidden="true"></i>
										</a>
									</div>
									<div class="col-9">
										Thu nhập tháng này <br> <span class="total-label">0</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--top10 product-->
					<div class="row top10-label">
						<h6>Top 10 sản phẩm</h6>
						<table class="table">
							<thead class="thead-light">
								<tr>
									<th class="small-td" scope="col">STT</th>
									<th class="small-td" scope="col">Mã sản phẩm</th>
									<th class="small-td" scope="col">Ảnh</th>
									<th scope="col">Tên sản phẩm</th>
									<th class="small-td" scope="col">Lượt đặt hàng</th>
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
					</div>
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
</body>
</html>