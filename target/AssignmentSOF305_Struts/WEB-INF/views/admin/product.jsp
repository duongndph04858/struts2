<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css/product-management.css">
<title><s:text name="label.productManage"></s:text></title>
</head>
<body>
	<div class="container-fluid wrapper">
		<jsp:include page="patern/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content">
			<div class="row manager-title d-flex bd-highlight">
				<div class="mr-auto bd-highlight">
					<h5>
						<!-- Product management -->
						<s:text name="label.productManage"></s:text>
					</h5>
				</div>
				<s:a action="insertProductInput"
					class="btn btn-primary bd-highlight mr-3">
					<s:text name="label.insertProduct"></s:text>
				</s:a>
				<div class="dropdown">
					<s:a class="btn btn-default dropdown-toggle" role="button"
						id="ProductAction" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						<s:text name="label.action"></s:text>
					</s:a>
					<div class="dropdown-menu  bd-highlight"
						aria-labelledby="ProductAction">
						<s:a class="dropdown-item a-black">
							<s:text name="label.export"></s:text>
						</s:a>
						<s:a class="dropdown-item a-black">
							<s:text name="label.delete"></s:text>
						</s:a>
					</div>
				</div>
			</div>
			<div class="row content-top">
				<div class="content-top-item">
					<div class="row top10-label">
						<div class="col-3 d-flex align-items-center">

							<span> <s:text name="label.totalProduct"></s:text> :
							</span>&nbsp; <strong><s:property value="listProduct.size" />
							</strong>
						</div>
						<div class="col-4">
							<input class="form-control" id="searchBox" type="text"
								placeholder="Search...">
						</div>
						<div class="col-5">
							<div class="row">
								<div class="dropdown">
									<s:select class="btn btn-w" id="Category-select" headerKey="-1"
										headerValue="Chọn danh mục" name="categoryId"
										list="listCategories" listKey="id" listValue="category_name">
									</s:select>
								</div>
								<div class="dropdown">
									<s:select tabindex="stt" class="btn btn-w" id="Status-select"
										name="status" headerKey="-1" headerValue="Chọn trạng thái"
										list="status">
									</s:select>
								</div>
							</div>
						</div>
					</div>
					<table id="productTable" class="table">
						<thead class="thead-light">
							<tr>
								<th class="" scope="col"></th>
								<th class="" scope="col"><s:text name="label.serial"></s:text></th>
								<th width="12%" scope="col"><s:text name="label.productId"></s:text></th>
								<th width="10%" scope="col"><s:text name="label.image"></s:text></th>
								<th scope="col"><s:text name="label.productName"></s:text></th>
								<th scope="col"><s:text name="label.price"></s:text></th>
								<th scope="col"><s:text name="menu.category"></s:text></th>
								<th scope="col"><s:text name="label.status"></s:text></th>
								<th class="" scope="col"><s:text name="label.action"></s:text></th>
							</tr>
						</thead>
						<tbody id="table">
							<s:form theme="simple">
								<s:iterator value="listProduct" var="p" status="stt">
									<tr>
										<td><s:checkbox name="#p.id" /></td>
										<th scope="row"><s:property value="%{#stt.index+1}" /></th>
										<td id="product-id"><s:property value="#p.id" /></td>
										<td><img class="imgProduct" height="45px"
											src="images/<s:property value="#p.image" />" alt="" /></td>
										<td><s:property value="#p.name" /></td>
										<td><s:property value="#p.price" /></td>
										<td><s:property value="#p.category.category_name" /></td>
										<td><s:property value="#p.status" /></td>
										<td><s:url action="updateProductInput"
												var="updateProduct">
												<s:param name="id" value="#p.id"></s:param>
											</s:url> <a id="icon-update" href="${updateProduct}"> <i
												class="fa fa-pencil icon-action" aria-hidden="true"></i></a>
											&nbsp; <a id="icon-delete" class="dltProduct"
											data-id="<s:property value="id" />"> <i
												class="fa fa-trash-o icon-action" data-toggle="modal"
												data-target="#deleteProductModal" aria-hidden="true"></i>
										</a></td>
									</tr>
								</s:iterator>
							</s:form>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal Notice -->
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
	<!-- Modal Notice -->
	<s:if test="hasFieldErrors()">
		<div class="modal fade" id="modalSuccess" tabindex="-1" role="dialog"
			aria-labelledby="modalSuccess" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modalSuccess">
							<s:text name="head.notice"></s:text>
						</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
							<s:fielderror id="message-insertSuccess" name="insert.success"></s:fielderror>
						<%-- <span class="errorMessage" id="insertProductSuccess">Thêm sản phẩm mới thành công!</span> --%>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>

	</s:if>
	<!-- Modal Delete -->
	<div class="modal fade" id="deleteProductModal" tabindex="-1"
		role="dialog" aria-labelledby="deleteProductModal" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="deleteProductModal">
						<s:text name="head.product"></s:text>
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<s:text name="message.deleteProduct" />
				</div>
				<div class="modal-footer">
					<s:form id="form-delete" action="" theme="simple" method="post">
						<s:submit type="submit" class="btn btn-danger" key="label.delete">
						</s:submit>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<s:text name="label.cancer" />
						</button>
					</s:form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/filter.js"></script>
	<script type="text/javascript" src="js/product.js"></script>
</body>
</html>