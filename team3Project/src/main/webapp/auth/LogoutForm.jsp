<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>

<link rel='stylesheet' type='text/css' href='./css/LoginForm.css'>

</head>

<body class="boby__login">
	<div class="login_wrap">
		<form action="./logout" method="post">
			<jsp:include page="/header.jsp"></jsp:include>
			
			<div style="font-size: 30px">
				이름: ${member.mname} <br> 이메일: ${member.email} <br>
			</div>
			<button class="search__button" type="submit" value="로그아웃">
				<strong>로그아웃</strong>
			</button>
		</form>

		<jsp:include page="/footer.jsp"></jsp:include>
	</div>
</body>
</html>