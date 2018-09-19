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
</head>
<s:head />
<body>

	<table id="productTable" class="table">
		<thead class="thead-light">
			<tr>
				<th class="" scope="col"><s:text name="label.serial"></s:text></th>
				<th class="" scope="col"><s:text name="label.categoryId"></s:text></th>
				<th scope="col"><s:text name="label.categoryName"></s:text></th>
				<th scope="col"><s:text name="label.totalProduct"></s:text></th>
				<th class="" scope="col"><s:text name="label.action"></s:text></th>
			</tr>
		</thead>
		<tbody id="table">
			<s:iterator var="c" value="listCategory" status="stt">
				<tr>
					<th scope="row"><s:property value="%{#stt.index+1}" /></th>
					<td><s:property value="id" /></td>
					<td><s:property value="category_name" /></td>
					<td><s:property value="#c.totalProduct" /></td>
					<td><a class="editCategory"
						data-name="<s:property value="category_name"/>"
						data-id="<s:property value="id"/>"> <i
							class="fa fa-pencil icon-action" aria-hidden="true"
							data-toggle="modal" data-target="#editCategory"></i>
					</a>&nbsp; <a class="dltCategory" data-id="<s:property value="id" />"><i
							class="fa fa-trash-o icon-action" data-toggle="modal"
							data-target="#deleteCategory" aria-hidden="true"></i></a></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</body>
</html>