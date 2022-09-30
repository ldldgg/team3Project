<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>

<link rel='stylesheet' type='text/css' href='./css/LoginForm.css'>


</head>

<body class="body__login">
	<div class="login_wrap">
		<form action="./findId" method="post">
			<div class="header__login">
				<a href="./login">
				<img src="../img/danawalogo.png" >
				</a>
			</div>

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
					<div class="notice-text">
						<p>다나와 아이디를 모르시나요?</p>
						<p>등록된 인증 수단으로 아이디를 찾을 수 있습니다.</p>
					</div>

					<h3 class="search__h3">내 정보에 등록된 인증 이메일로 찾기</h3>

					<div class="search__form search__form--confirm" id="findEmail">
						<input type="text" value="" id="inputEmail" name="email"
							placeholder="이메일 주소 입력">
						<div>
							<p class="err.txt" id="emailError"></p>

						</div>
						<input type="submit" id ="idSearch"
							class="search__button btn_login asd" value="확인">
						<!-- 						<strong>확인</strong> -->
						<!-- 						</button> -->


					</div>
					
					
				</div>
			</div>
		</form>

		<div id="footer" class="footer footer__login footer__login--search">
			<address>
				Copyright © <strong>danawa</strong> Co., Ltd. All Rights Reserved.
			</address>
		</div>

	</div>

<script type="text/javascript" src='./js/FindIdForm.js'></script>

</body>
</html>