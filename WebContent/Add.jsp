<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.model.Student" %>
<%@page import="com.commom.DatabaseConnection" %>
<%@page import="com.dao.StudentDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP page</title>
</head>
<body>
	<form method="POST" action="doValidate.jsp">   <!-- action="doAdd.jsp" -->
			<%request.setCharacterEncoding("UTF-8"); %>
			<h2>Nhập vào thông tin sinh viên cần thêm</h2>
		
		<table>
				
			<tr>
			 	<td>Name: </td>
			 	<td> <input type="text" name="name" /></td>
			</tr>
			<tr>
			 	<td>Address: </td>
			 	<td> <input type="text" name="address"/></td>
			</tr>
			<tr>
			 	<td>Email: </td>
			 	<td> <input type="text" name="email" placeholder="namnn@gmail.com" size="40"/></td>
			</tr>
			<tr>
			 	<td>Phone: </td>
			 	<td> <input type="text" name="phone" /></td>
			</tr>
		</table>
		<input type="submit" value="submit"/>
		<input type="reset" value="reset"/>
	
	</form>
</body>
</html>