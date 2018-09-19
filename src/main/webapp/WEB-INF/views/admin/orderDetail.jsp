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
.w-40 {
	width: 40%
}

.w-15 {
	width: 15% !important;
}

input {
	border: 1px solid #ddd;
	border-radius: 5px;
}
</style>
<title><s:text name="title.orderDetail"></s:text></title>
</head>
<body>
	<div class="container-fluid wrapper">
		<jsp:include page="patern/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content">
			<div class="row manager-title d-flex bd-highlight">
				<div class="mr-auto bd-highlight">
					<h5>
						<s:text name="title.orderDetail"></s:text>
					</h5>
				</div>
			</div>
			<div class="row content-top">
				<div class="content-top-item">
					<s:push value="order">
						<div class="row">
							<s:form id="form-update" class="w-40 ml-3" action="updateOrder"
								theme="simple" method="post">

								<table class="w-100">
									<tr>
										<td class="pt-3"><s:text name="label.orderNo"></s:text> :</td>
										<td id="orderId" class="pt-3"><s:property
												value="order.order_no" /></td>
										<td class="pt-3"><s:text name="label.client"></s:text> :</td>
										<td class="pt-3"><s:property value="order.user.username" /></td>
									</tr>
									<tr>
										<td class="pt-3"><s:text name="label.price"></s:text> :</td>
										<td class="pt-3"><s:property value="order.total_price" /></td>
										<td class="pt-3"><s:text name="label.transportFee"></s:text>
											:</td>
										<td class="pt-3"><s:property value="order.transport_fee" /></td>
									</tr>
									<tr>
										<td class="pt-3"><s:text name="label.phone"></s:text> :</td>
										<td class="pt-3"><s:property value="order.phone" /></td>
										<td class="pt-3"><s:text name="label.address"></s:text> :</td>
										<td class="pt-3"><s:property value="order.address" /></td>
									</tr>
									<tr>
										<td class="pt-3"><s:text name="label.status"></s:text> :
										</td>
										<td class="pt-3"><s:select id="orderStt"
												list="#{'Đang xử lý':'Đang xử lý','Đang giao hàng':'Đang giao hàng','Đã giao hàng':'Đã giao hàng','Đã hủy':'Đã hủy' }"
												value="order.status"></s:select></td>
										<td colspan="2" class="pt-3 center"><button type="button"
												id="btn-update" class="btn btn-primary">
												<s:text name="label.update"></s:text>
											</button></td>
									</tr>
								</table>
							</s:form>
						</div>
						<!-- product-->
						<div class="row top10-label">
							<div class="col-3 d-flex align-items-center">
								<strong><s:text name="order.buyProduct"></s:text> </strong>
							</div>
						</div>
						<table id="productTable" class="table">
							<thead class="thead-light">
								<tr>
									<th class="" scope="col"><s:text name="label.serial"></s:text></th>
									<th class="" scope="col"><s:text name="label.productId"></s:text></th>
									<th class="w-15" scope="col"><s:text name="label.image"></s:text></th>
									<th scope="col"><s:text name="label.productName"></s:text></th>
									<th scope="col"><s:text name="label.price"></s:text></th>
									<th scope="col"><s:text name="label.amount"></s:text></th>
									<th scope="col"><s:text name="label.totalPrice"></s:text></th>
								</tr>
							</thead>
							<tbody id="table">
								<s:iterator value="order.orderDetails" var="o" status="stt">
									<tr>
										<th scope="row"><s:property value="%{#stt.index+1}" /></th>
										<td><s:property value="#o.products.id" /></td>
										<td><img class="img-fluid" width="50%"
											src="images/<s:property value="#o.products.image" />" alt="" /></td>
										<td><s:property value="#o.products.name" /></td>
										<td><s:property value="#o.price" /></td>
										<td><s:property value="#o.amount" /></td>
										<td><s:property value="price*amount" /></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</s:push>
				</div>
			</div>
		</div>
	</div>
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
		$('#btn-update').click(
				function() {
					var stt = $('#orderStt').val();
					var id = $('#orderId').text();
					$('#form-update').attr('action',
							'updateOrder.action?orderNo=' + id + '&status=' + stt);
					$('#form-update').submit();
				});
	</script>
</body>
</html>