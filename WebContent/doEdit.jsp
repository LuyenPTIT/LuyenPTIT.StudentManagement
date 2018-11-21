<%@page import="com.controller.StudentController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.model.Student"%>
<%@page import="com.commom.DatabaseConnection"%>
<%@page import="com.dao.StudentDao"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
			request.setCharacterEncoding("UTF-8");
			Student student = new Student();
			student.setId(Integer.parseInt((String) request.getParameter("id")));
			student.setName(request.getParameter("name"));
			student.setAddress(request.getParameter("address"));
			student.setEmail(request.getParameter("email"));
			student.setPhone(request.getParameter("phone"));
			StudentController studentController = new StudentController();
			if (studentController.edit(student) == 1) {
				response.sendRedirect("index.jsp");
			}else {
				response.sendRedirect("error.jsp");
			}

		
	%>
</body>
</html>