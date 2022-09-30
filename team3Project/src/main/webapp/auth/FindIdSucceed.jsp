<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<link rel='stylesheet' type='text/css' href='./css/LoginForm.css'>

<title>아이디 찾기</title>

</head>

<body class="body__login">
	<div class="login_wrap">
			<jsp:include page="/header.jsp"></jsp:include>

			<div class="container content__login content__login--search">
				<div class="search__wrap">

					<div class="search__tab">
						<button type="button"
							class="search__tab-button search__tab-button--select" role="tab"
							aria-selected="true" onclick="location.href='./findId'">
							<h2>아이디 찾기</h2>
						</button>

						<button type="button" class="search__tab-button" role="tab"
							aria-selected="false" onclick="location.href='./findPassword'">
							<h2>비밀번호 찾기</h2>
						</button>

					</div>
					<div style="font-size: 16px; color: #333; text-align: center; padding: 46px 0px; line-height: 26px;">	
 						<p>회원님의 아이디는   <span style="color: blue;">${id}</span> 입니다  </p>
 						
						</div>			
		<button class="search__button" onclick="location.href='./login'">
                            <strong>로그인 하기</strong>
                        </button>
					</div>
				</div>

		<jsp:include page="/footer.jsp"></jsp:include>

		</div>

<script type="text/javascript" src='./js/FindIdForm.js'></script>

</body>
</html>