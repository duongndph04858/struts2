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
<s:iterator value="category" var="p" status="stt">
									<tr>
	
										<td><s:property value="#p.name" /></td>
										<td><s:property value="#p.id" /></td>
									</tr>
								</s:iterator>
</body>
</html>