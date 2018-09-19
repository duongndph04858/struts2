<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/product-management.css">
<style type="text/css">
input {
	border: 1px solid #ddd;
	border-radius: 5px;
}
</style>
<title><s:text name="title.order"></s:text></title>
</head>
<body>
	<div class="container-fluid wrapper">
		<jsp:include page="patern/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content">
			<div class="row manager-title d-flex bd-highlight">
				<div class="mr-auto bd-highlight">
					<h5>
						<s:text name="title.order"></s:text>
					</h5>
				</div>
				<a class="btn btn-primary bd-highlight mr-3" data-toggle="modal"
					data-target="#insertOrderModal"> <s:text
						name="label.insertOrder"></s:text>
				</a>

			</div>
			<div class="row content-top">
				<div class="content-top-item">
					<!--top10 product-->
					<div class="row top10-label">
						<div class="col-3 d-flex align-items-center">
							<span><s:text name="label.totalOrder"></s:text>:</span>&nbsp; <strong><s:property
									value="listOrder.size" /></strong>
						</div>
						<div class="col-4">
							<input class="form-control" id="searchBox" type="text"
								placeholder="Search...">
						</div>
						<div class="col-5">
							<div class="row">
								<div class="dropdown">
									<s:select class="btn btn-w" id="Category-select"
										list="{'Chọn địa chỉ','Hà nội'}">
									</s:select>
								</div>
								<div class="dropdown">
									<s:select class="btn btn-w" id="Category-select"
										list="{'Chọn tình trạng','Đang xử lý','Đang giao hàng','Đã giao hàng','Đã hủy'}">
									</s:select>
								</div>
							</div>
						</div>
					</div>
					<table id="productTable" class="table">
						<thead class="thead-light">
							<tr>
								<th class="" scope="col"><s:text name="label.serial"></s:text></th>
								<th class="" scope="col"><s:text name="label.orderNo"></s:text></th>
								<th scope="col"><s:text name="label.price"></s:text></th>
								<th scope="col"><s:text name="label.transportFee"></s:text></th>
								<th scope="col"><s:text name="label.client"></s:text></th>
								<th scope="col"><s:text name="label.status"></s:text></th>
								<th scope="col"><s:text name="label.address"></s:text></th>
								<th scope="col"><s:text name="label.phone"></s:text></th>
								<th class="" scope="col"><s:text name="label.action"></s:text></th>
							</tr>
						</thead>
						<tbody id="table">
							<s:iterator value="listOrder" var="o" status="stt">
								<tr>
									<th scope="row"><s:property value="%{#stt.index+1}" /></th>
									<td><s:property value="#o.order_no" /></td>
									<td><s:property value="#o.total_price" /></td>
									<td><s:property value="#o.transport_fee" /></td>
									<td><s:property value="#o.user.username" /></td>
									<td><s:property value="#o.status" /></td>
									<td><s:property value="#o.address" /></td>
									<td><s:property value="#o.phone" /></td>
									<td><a class="editOrder"
										href="OrderDetail.action?orderNo=<s:property value="order_no" />">
											<i class="fa fa-pencil icon-action" aria-hidden="true"></i>
									</a>&nbsp; <a class="deleteOrder"
										data-id="<s:property value="order_no" />"> <i
											class="fa fa-trash-o icon-action" data-toggle="modal"
											data-target="#deleteOrderModal" aria-hidden="true"></i></a></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="deleteOrderModal" tabindex="-1"
		role="dialog" aria-labelledby="deleteOrderModal" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="deleteOrderModal">
						<s:text name="head.order" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<s:text name="message.deleteOrder" />
				</div>
				<div class="modal-footer">
					<s:form id="form-delete" action="" theme="simple" method="post">
						<button type="submit" class="btn btn-danger">
							<s:text name="label.delete" />
						</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<s:text name="label.cancer" />
						</button>
					</s:form>
				</div>
			</div>
		</div>
	</div>
	<s:if test="hasActionErrors()">
		<div class="modal fade" id="modalNotice" tabindex="-1" role="dialog"
			aria-labelledby="modalNotice" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modalNotice">
							<s:text name="head.notice"></s:text>
						</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="errors">
							<span id="erMessage"> <s:actionerror />
							</span>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>

	</s:if>
	<s:action name="insertOrderInput" executeResult="true"></s:action>
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/filter.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="js/validate.js"></script>
	<script type="text/javascript">
		$('.deleteOrder').click(
				function() {
					var id = $(this).data('id');
					$('#form-delete').attr('action',
							'deleteOrder.action?orderNo=' + id);
				});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#modalNotice').modal('show');
		});
	</script>
</body>
</html>