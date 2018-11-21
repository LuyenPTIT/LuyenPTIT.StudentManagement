<%@page import="com.controller.StudentController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.model.Student" %>
<%@page import="com.commom.DatabaseConnection" %>
<%@page import="com.dao.StudentDao" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP page</title>

</head>
<body>
	<%
		String id= request.getParameter("id");
	    int idd=Integer.parseInt(id);
	    StudentController studentController=new StudentController();
	    Student student = studentController.findOne(idd);    
		
	%>
	<form method="POST" action="doEdit.jsp">
		<h2>Nhập vào thông tin cần sửa</h2>
		<table>
		 	<tr>
			 	<td>ID: </td>
			 	<td> <input type="text" name="id" value="<%= student.getId()%>"/></td>
			</tr>
			
			<tr>
			 	<td>Name: </td>
			 	<td> <input type="text" name="name" value="<%= student.getName()%>"/></td>
			</tr>
			<tr>
			 	<td>Address: </td>
			 	<td> <input type="text" name="address" value="<%=student.getAddress()%>"/></td>
			</tr>
			<tr>
			 	<td>Email: </td>
			 	<td> <input type="text" name="email" value="<%=student.getEmail()%>"/></td>
			</tr>
			<tr>
			 	<td>Phone: </td>
			 	<td> <input type="text" name="phone" value="<%=student.getPhone() %>" /></td>
			</tr>
		</table>
		<input type="submit" value="submit"/>
		<input type="reset" value="reset"/>
		
	
	</form>
</body>
</html>