<%@page import="com.model.Student"%>
<%@page import="com.controller.StudentController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail Info Pages</title>
<style>
	
	#cen{
	
	text-align: center;
	}
</style>
</head>
<body>
	<%
		String id= request.getParameter("id");
	    int idd=Integer.parseInt(id);
	    StudentController studentController=new StudentController();
	    Student student = studentController.findOne(idd);    
	
	%>	<div id="cen">
		<h1>Thông tin chi tiết của 1 sinh viên: </h1>	
		<h3> ID: <%= student.getId() %></h3>
		<h3>Name: <%= student.getName() %></h3>
		<h3>Address: <%= student.getAddress() %></h3>
		<h3>Email: <%= student.getEmail() %></h3>
		<h3>Phone: <%= student.getPhone() %></h3>
		</div>
</body>
</html>