<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<script type="text/javascript">
        
            function Warn() {
               alert ("This is a warning message!");
               document.write ("Bạn có chắn chắn muốn xóa?!");
            }
            
            function getConfirmation(){
                var retVal = confirm("Do you want to continue ?");
                if( retVal == true ){
                   document.write ("User wants to continue!");
                   return true;
                }
                else{
                   Document.write ("User does not want to continue!");
                   return false;
        
      </script>
</head>
<body>
	<form method="post" action="Remove.jsp">
         <input type="button" value="OK" onclick="getConfirmation();" />
      </form>

</body>
</html>