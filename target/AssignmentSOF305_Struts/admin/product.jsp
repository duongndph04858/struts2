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
<title>Quản lý sản phẩm</title>
</head>
<body>
	<div class="container-fluid wrapper">
		<jsp:include page="patern/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content">
			<div class="row manager-title d-flex bd-highlight">
				<div class="mr-auto bd-highlight">
					<h5>Quản lý sản phẩm</h5>
				</div>
				<s:url action="insertProductInput" var="insertProductInput"></s:url>
				<a class="btn btn-primary bd-highlight mr-3"
					href="${insertProductInput }">Thêm sản phẩm</a>
				<div class="dropdown">
					<a class="btn btn-default dropdown-toggle" role="button"
						id="ProductAction" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Thao tác khác </a>
					<div class="dropdown-menu  bd-highlight"
						aria-labelledby="ProductAction">
						<a class="dropdown-item" href=""> Xuất danh sách sản phẩm </a> <a
							class="dropdown-item" href=""> Xóa sản phẩm </a>
					</div>
				</div>
			</div>
			<div class="row content-top">
				<div class="content-top-item">
					<!--top10 product-->
					<div class="row top10-label">
					<span>Tổng số sản phẩm:</span>&nbsp;	<strong>0/1000</strong>
						<table id="productTable" class="table">
							<thead class="thead-light">
								<tr>
									<th class="" scope="col"></th>
									<th class="" scope="col">STT</th>
									<th class="" scope="col">Mã</th>
									<th class="small-td" scope="col">Ảnh</th>
									<th scope="col">Tên sản phẩm</th>
									<th scope="col">Giá sản phẩm</th>
									<th scope="col">Danh mục</th>
									<th scope="col">Trạng thái</th>
									<th class="" scope="col">Thao tác</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox"></td>
									<th scope="row">1</th>
									<td>ABC</td>
									<td><img class="img-fluid" width="50%"
										src="images/mbd-green-gully-cavalier.jpg" alt=""></td>
									<td>ABC</td>
									<td>0</td>
									<td>ABC</td>
									<td>ABC</td>
									<td><i class="fa fa-pencil" aria-hidden="true"></i>&nbsp;
										<i class="fa fa-trash-o" aria-hidden="true"></i></td>
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<th scope="row">2</th>
									<td>ABC</td>
									<td><img class="img-fluid" width="50%"
										src="images/mbd-green-gully-cavalier.jpg" alt=""></td>
									<td>ABC</td>
									<td>0</td>
									<td>ABC</td>
									<td>ABC</td>
									<td><i class="fa fa-pencil" aria-hidden="true"></i>&nbsp;
										<i class="fa fa-trash-o" aria-hidden="true"></i></td>
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<th scope="row">3</th>
									<td>ABC</td>
									<td><img class="img-fluid" width="50%"
										src="images/mbd-green-gully-cavalier.jpg" alt=""></td>
									<td>ABC</td>
									<td>0</td>
									<td>ABC</td>
									<td>ABC</td>
									<td><i class="fa fa-pencil" aria-hidden="true"></i> &nbsp;
										<i class="fa fa-trash-o" aria-hidden="true"> </i></td>
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
	<script type="text/javascript" src="js/filter.js"></script>
</body>
</html>