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
	<!-- Insert Modal -->
	<div class="modal fade" id="insertOrderModal" tabindex="-1"
		role="dialog" aria-labelledby="insertOrderModal" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="insertOrderModal">
						<s:text name="head.insertOrder" />
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<s:form id="form-insert" action="InsertOrder" method="post"
						theme="simple">
						<table class="w-100">
							<tr>
								<td></td>
								<td><s:fielderror name="username"></s:fielderror></td>
							</tr>
							<tr>
								<td class="pt-3"><s:text name="label.client" /> :</td>
								<td class="pt-3"><s:select list="listUser"
										name="userName" listKey="username" listValue="username"></s:select></td>
							</tr>
							<tr>
								<td class="pt-3"><s:text name="label.address" /> :</td>
								<td class="pt-3"><s:textfield class="w-100"
										name="order.address"></s:textfield></td>
							</tr>
							<tr>
								<td class="pt-3"><s:text name="label.phone" /> :</td>
								<td class="pt-3"><s:textfield class="w-100"
										name="order.phone"></s:textfield></td>
							</tr>
							<tr>
								<td class="pt-3"><s:text name="menu.product" /> :</td>
								<td class="pt-3"><s:select list="listProduct"
										name="productId" headerKey="-1"
										headerValue="--Select product--" listKey="id" listValue="name"></s:select></td>
							</tr>
							<tr>
								<td class="pt-3"><s:text name="label.amount" /> :</td>
								<td class="pt-3"><s:textfield class="w-100"
										name="orderDetail.amount"></s:textfield></td>
							</tr>
							<tr>
								<td class="pt-3"><s:text name="label.transportFee" /> :</td>
								<td class="pt-3"><s:textfield class="w-100"
										name="order.transport_fee"></s:textfield></td>
							</tr>
							<tr>
								<td class="pt-3 center" colspan="2"><s:submit
										class="btn btn-primary" key="label.insert"></s:submit>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">
										<s:text name="label.cancer" />
									</button></td>
							</tr>
						</table>
					</s:form>

				</div>
			</div>
		</div>
	</div>
</body>
</html>