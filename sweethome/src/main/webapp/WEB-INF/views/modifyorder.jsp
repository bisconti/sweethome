<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <script>
      window.onload = function() {
         alert("${successMessage}");
         window.location.href = "${cp}/user/order";
      };
   </script>
</body>
</html>