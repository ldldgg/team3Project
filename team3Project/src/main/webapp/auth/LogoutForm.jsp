<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<style type="text/css">
		
		</style>
		
		<script type="text/javascript">
		
		</script>
	</head>
	
	<body>
		<form action="./logout" method="post">
		이름:	${member.mname} <br>
		이메일:	${member.email} <br>
		<input type="submit" value="로그아웃">
		</form>
	</body>
</html>