<%@page import="com.model.Student"%>
<%@page import="com.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
	public static boolean check(String email) {
		if(email.equals("")) {
			return false;
		}
		if(email.indexOf("@gmail.com") < 0) {
			return false;
		}
		
		return true;
	}
		
	%>
	
	<%
		String email=request.getParameter("email");
		StudentDao studentDao = new StudentDao();
		if(check(email)){
			Student student = new Student();
			student.setName(request.getParameter("name"));
			student.setAddress(request.getParameter("address"));
			student.setEmail(request.getParameter("email"));
			student.setPhone(request.getParameter("phone"));
			int createStudent = studentDao.createStudent(student);
			if(createStudent==1){
				response.sendRedirect("index.jsp");
			}
			
		}
		else{
			response.sendRedirect("Add.jsp");
		}
	%>
	
</body>
</html>