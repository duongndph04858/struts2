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
<link rel="stylesheet" type="text/css"
	href="css/category-management.css">
<title><s:text name="title.category" /></title>
</head>
<s:head />
<body>

	<div class="container-fluid wrapper">
		<jsp:include page="patern/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content">
			<div class="row manager-title d-flex bd-highlight">
				<div class="mr-auto bd-highlight">
					<h5>
						<s:text name="title.category"></s:text>
					</h5>
				</div>
			</div>
			<div class="row content-top">
				<div class="content-top-item">

					<!--INSERT CATEGORY-->
					<h6 class="insert-category">
						<s:text name="label.insertCategory"></s:text>
					</h6>
					<div class="row top10-label">
						<s:form action="insertCategory" theme="simple">
							<table>
								<tr>
									<td></td>
									<td><s:fielderror id="error-categoryId" fieldName="category.id"></s:fielderror>
									</td>
									<td></td>
									<td><s:fielderror id="error-categoryName" fieldName="category.category_name"></s:fielderror></td>
									<td></td>
								</tr>
								<tr>
									<td><s:text name="label.categoryId" /> :</td>
									<td><s:textfield name="category.id"></s:textfield></td>
									<td class="pl-3"><s:text name="label.categoryName" /> :</td>
									<td><s:textfield name="category.category_name"></s:textfield></td>
									<td><button id="btn-insertCategory" type="submit" class="btn btn-primary ml-3">
											<s:text name="label.insert"></s:text>
										</button></td>
								</tr>
							</table>
						</s:form>
					</div>
					<s:action name="listCategory" executeResult="true"></s:action>
				</div>
			</div>
		</div>
		<!--delete Modal -->
		<div class="modal fade" id="deleteCategory" tabindex="-1"
			role="dialog" aria-labelledby="deleteCategory" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="deleteCategory">
							<s:text name="label.deleteCategory"></s:text>
						</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<s:text name="message.deleteCategory"></s:text>
					</div>
					<div class="modal-footer">
						<s:form id="form-delete" action="" theme="simple" method="post">
							<button type="submit" class="btn btn-danger">
								<s:text name="label.delete"></s:text>
							</button>
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">
								<s:text name="label.cancer"></s:text>
							</button>
						</s:form>
					</div>
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
							<s:actionerror />
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
	<!-- Modal Edit Category -->
	<div class="modal fade" id="editCategory" tabindex="-1" role="dialog"
		aria-labelledby="editCategory" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="editCategory">
						<s:text name="label.editCategory"></s:text>
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<s:form id="form-update" action="" theme="simple" method="post">
						<table>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td class><span> <s:text name="message.editCategory"></s:text>
										:
								</span></td>
								<td><input type="text" id="category-name"
									name="categoryName" /></td>
							</tr>
							<tr>
								<td style="text-align: center" class="pt-3" colspan="2">
									<button id="btn-update" style="height: 38px;" type="submit"
										class="btn btn-primary">
										<s:text name="label.update"></s:text>
									</button>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">
										<s:text name="label.cancer"></s:text>
									</button>
								</td>
							</tr>
						</table>
					</s:form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="js/filter.js"></script>
	<script type="text/javascript" src="js/category.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#modalNotice').modal('show');
		});
	</script>
</body>
</html>