<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
	<link rel='stylesheet' type='text/css' href='./css/LoginForm.css'>
		
		<script type="text/javascript">
		
		</script>
	</head>
	
	<body class="boby__login">
		<div class="login_wrap">
		<form action="./logout" method="post">
		<div class="header__login">
				<img src="../img/danawalogo.png">
			</div>
		<div style="font-size: 30px">
		이름:	${member.mname} <br>
		이메일:	${member.email} <br>
		</div>
		<button class="search__button" type="submit" value="로그아웃">
		<strong>로그아웃</strong>
		</button>
		</form>
		
		<div id="footer" class="footer footer__login footer__login--search">
            <address>Copyright © <strong>danawa</strong> Co., Ltd. All Rights Reserved.</address>
        </div>
        </div>
	</body>
</html>