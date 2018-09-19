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
					<s:push value="categoryUpdate">
						<s:form id="form-update" action="updateCategory" theme="simple" method="post">
							<table>
							<tr>
								<td></td>
								<td></td>
							</tr>
								<tr>
									<td class><span> <s:text
												name="message.editCategory"></s:text> :
									</span></td>
									<td><s:textfield name="categoryUpdate.category_name"></s:textfield></td>
								</tr>
								<tr>
									<td style="text-align: center" class="pt-3" colspan="2">
										<button style="height: 38px;" type="submit"
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
					</s:push>
				</div>
			</div>
		</div>
	</div>
</body>
</html>