<%@page import="com.controller.StudentController"%>

<%@page import="com.model.Student" %>
<%@page import="com.dao.StudentDao" %>
<%@page import="com.commom.DatabaseConnection" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<style>
	h1{
	text-align: center;
	color: red;
	
	}
	#tb{
		width: 100%;
	
	
	}
	
	table,th,td{
    border:1px solid gray;
    border-collapse: collapse;
}
th,td{
    padding:7px 15px;
}
th{
    background-color: #008040;
    color: white;
}
tr:nth-child(even){
    background-color: #F0F0F0;
}
tr:hover{
    background-color: yellow;
}	
</style>
</head>
<body>
	<h1>Danh sách sinh viên</h1>
	
	<table border="1" style="border-collapse: collapse;" id="tb" > 
		<tr>
			<th>Mã sinh viên</th>
			<th>Tên sinh viên</th>
			<th>Địa chỉ</th>
			<th>Email</th>
			<th>Số điện thoại</th>
			<th colspan="3"></th>
			
		</tr>
		
		<%
			//List<Student> student = new ArrayList<>();
			StudentDao studentDao = new StudentDao();
			for(int i  = 0; i < studentDao.findAll().size();i++){
			
		%>
		
		<tr>
			<td> <%= studentDao.findAll().get(i).getId() %></td>
			<td> <%= studentDao.findAll().get(i).getName() %> </td>
			<td> <%= studentDao.findAll().get(i).getAddress() %> </td>
			<td> <%= studentDao.findAll().get(i).getEmail() %> </td>
			<td> <%= studentDao.findAll().get(i).getPhone() %> </td>
			<td> <a href="detail.jsp?id=<%= studentDao.findAll().get(i).getId() %>"><button class="btn btn-info">Chi tiết</button></a></td>
			<td> <a href="edit.jsp?id=<%= studentDao.findAll().get(i).getId()%>"><button class="btn btn-primary">Sửa</button></a></td>
			<td> <a href="Remove.jsp?id=<%= studentDao.findAll().get(i).getId()%>" onclick="return confirm('Are you sure?');">
				<button class="btn btn-danger">Xóa</button></a>
			</td>	
		</tr>
		<%
			}
		%>	
		
	</table>
						
    
	<br/>
	<a href="Add.jsp"><button class="btn btn-sucess">Thêm mới</button> </a>

</body>
</html>