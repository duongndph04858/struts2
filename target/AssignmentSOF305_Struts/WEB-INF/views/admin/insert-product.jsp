
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
<link rel="stylesheet" type="text/css" href="css/insert-product.css">
<title><s:text name="label.insertProduct"></s:text></title>
<s:head />
</head>
<body>
	<div class="container-fluid wrapper">
		<jsp:include page="patern/_header.jsp"></jsp:include>
		<!--content-->
		<div class="row container-fluid content">
			<div class="row manager-title">
				<h5>
					<s:text name="label.insertProduct"></s:text>
				</h5>
			</div>
			<div class="row">
				<div class="row content-top">
					<div class="row content-top-item">
						<s:form action="insertProduct" enctype="multipart/form-data"
							method="post" class="w-100" theme="simple">
							<table class="w-75" style="margin: auto;">
								<!--  NAME-->
								<tr class="error-field">
									<td></td>
									<td colspan="2"><s:fielderror id="error-productName" fieldName="product.name"></s:fielderror>
									</td>
									<td class="w-25" rowspan="9"><img class="img-fluid"
										id="imgPreview" src="images/mbd-green-gully-cavalier.jpg" />

										<s:fielderror id="error-productImage"  fieldName="productImage"></s:fielderror> <s:text
											name="label.image" /> <s:file id="inputFile"
											onchange="updateImageDisplay();" name="productImage"
											class="mt-3 w-100"></s:file></td>
								</tr>
								<tr>
									<td class="w-25 pl-5"><s:text name="label.productName" /></td>
									<td><s:textfield class="w-75 pl-3" name="product.name"></s:textfield></td>
								</tr>
								<!--  END-->
								<!--  PRICE-->
								<tr class="error-field">
									<td></td>
									<td colspan="2"><s:fielderror id="error-productPrice" fieldName="price"></s:fielderror>
									</td>
								</tr>
								<tr>
									<td class="w-25 pl-5"><s:text name="label.price" /></td>
									<td><s:textfield class="w-75 pl-3" name="price"></s:textfield></td>
								</tr>
								<!--  END-->
								<!--  AMOUNT-->
								<tr class="error-field">
									<td></td>
									<td colspan="2"><s:fielderror id="error-productAmount" fieldName="amount"></s:fielderror>
									</td>
								</tr>
								<tr>
									<td class="w-25 pl-5 "><s:text name="label.amount" /></td>
									<td><s:textfield class="w-50 pl-3" name="amount"></s:textfield></td>
								</tr>
								<!--  END-->
								<tr class="error-field">
									<td></td>
									<td colspan="2"><s:fielderror id="error-productAmount" fieldName="categoryId"></s:fielderror>
									</td>
								</tr>
								<!--  CATEGORY-->
								<tr>
									<td class="w-25 pl-5"><s:text name="menu.category" /></td>
									<td><s:select class="w-25 pl-3 select-category" key=""
											name="categoryId" list="listCategories" listKey="id"
											listValue="category_name">
										</s:select></td>
								</tr>
								<!--  END-->
								<!--  STATUS-->
								<tr class="error-field">
									<td></td>
									<td colspan="2"><s:fielderror id="error-productStatus" fieldName="product.status"></s:fielderror>
									</td>
								</tr>
								<tr class="w-25 pl-5">
									<td class="w-25 pl-5"><s:text name="label.status" /></td>
									<td><s:textfield class="w-75 pl-3" key="product.status"></s:textfield></td>
								</tr>
								<!--  END-->
								<!--  DESCRTIPTION-->
								<tr class="w-25 pl-5">
									<td class="w-25 pl-5"><s:text name="label.description" /></td>
									<td><s:textarea class="w-75 pl-3"
											name="product.description"></s:textarea><br></td>
								</tr>
								<tr class="w-25 pl-5">
									<td class="pt-3" style="text-align: center;" colspan="2">
										<button id="btn-insertProduct" class="btn btn-primary mr-3" type="submit">
											<s:text name="label.insert"></s:text>
										</button> <s:a action="productInput" class="btn btn-secondary">
											<s:text name="label.cancer"></s:text>
										</s:a>
									</td>
									<td></td>
								</tr>
								<!--  END-->
							</table>
						</s:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/imgPreview.js">
		
	</script>
</body>
</html>