
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.model.Student" %>
    <%@page import="java.util.*" %>
   
    <%@page import="com.controller.StudentController" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
 		<%
						Student student = new Student();
						student.setId(Integer.parseInt((String) request.getParameter("id")));
						StudentController studentController = new StudentController();
						if(studentController.remove(student) == 1){
							
							response.sendRedirect("index.jsp");
						}
						else {
							response.sendRedirect("error.jsp");
						}
				%>                                                


	

</body>
</html>