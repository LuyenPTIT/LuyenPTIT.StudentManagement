<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.model.Student" %>
<%@page import="com.dao.StudentDao" %>
<%@page import="com.commom.DatabaseConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		StudentDao studentDao = new StudentDao();
		Student student = new Student();
		student.setName(request.getParameter("name"));
		student.setAddress(request.getParameter("address"));
		student.setEmail(request.getParameter("email"));
		student.setPhone(request.getParameter("phone"));
		int createStudent = studentDao.createStudent(student);
		if(createStudent==1){
			response.sendRedirect("index.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
	%>
</body>
</html>
