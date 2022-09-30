<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>

<link rel='stylesheet' type='text/css' href='./css/LoginForm.css?a'>

</head>

<body class="body__login">
	<div class="login_wrap">
		<form action="./logout" method="post" style="background-color: #fff;">
			<jsp:include page="/header.jsp"></jsp:include>
			
			<div class="content__login container search__wrap">
			<div style="font-size: 30px">
				이름: ${member.mname} <br> 이메일: ${member.email} <br>
			</div>
			<button class="search__button" type="submit" value="로그아웃">
				<strong>로그아웃</strong>
			</button>
			</div>
		</form>

		<jsp:include page="/footer.jsp"></jsp:include>
	</div>
</body>
</html>
