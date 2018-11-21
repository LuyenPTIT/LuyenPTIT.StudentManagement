<%@page import="com.dao.StudentDao"%>
<%@page import="java.lang.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Danh sách sinh viên</h1>
	
	<table border="1" style="border-collapse: collapse;" > 
		<tr>
			<th>Mã sinh viên</th>
			<th>Tên sinh viên</th>
			<th>Địa chỉ</th>
			<th>Email</th>
			<th>Số điện thoại</th>
			<th colspan="3"></th>
		</tr>
		
		<%
			String l=request.getParameter("limit");
			String o=request.getParameter("Offset");
			int ll=Integer.parseInt(l);
			int oo=Integer.parseInt(o);
			StudentDao studentDao = new StudentDao();
			studentDao.phanTrang(ll,oo);
			for(int i  = 0; i < studentDao.phanTrang(ll,oo).size();i++){
			
		%>
		
		<tr>
			<td> <%= studentDao.phanTrang(ll,oo).get(i).getId() %></td>
			<td> <%= studentDao.phanTrang(ll,oo).get(i).getName() %> </td>
			<td> <%= studentDao.phanTrang(ll,oo).get(i).getAddress() %> </td>
			<td> <%= studentDao.phanTrang(ll,oo).get(i).getEmail() %> </td>
			<td> <%= studentDao.phanTrang(ll,oo).get(i).getPhone() %> </td>
		</tr>
		<%} %>
		
	</table>

</body>
</html>