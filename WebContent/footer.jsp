<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Phan Trang</title>
</head>
<body>
<form method="post" action="doFooter.jsp">
	<table>
		<tr> 
			<td>Limit: </td>
			<td> <input type="text" name="limit"/></td>
		</tr>
		<tr>
			<td>Offset: </td>
			<td> <input type="text" name="Offset"/></td>
		</tr>
	</table>
	<input type="submit" name="submit"/>
</form>

</body>
</html>