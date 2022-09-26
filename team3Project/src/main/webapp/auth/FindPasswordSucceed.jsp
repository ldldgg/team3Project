<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<style type="text/css">
		
		</style>

	</head>
	
	<body>
	</body>
		<script type="text/javascript">
		

	var pwd = "<c:out value='${pwd}'/>";
	alert('비밀번호는 : ' + pwd + '입니다');
	location.href = './login';
		
		</script>
</html>