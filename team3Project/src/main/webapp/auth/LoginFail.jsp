<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javaScript" src='./js/LoginForm.js'></script>

<link rel='stylesheet' type='text/css' href='./css/LoginForm.css'>
</head>
<body class="body__login">
	<!-- login_wrap -->
	<div class="login_wrap">
		<!-- header -->
		<div class="header__login">
			<img src="../img/danawalogo.png"> <a href="#"
				class="guest_orders"> <span>비로그인 주문조회</span>
			</a>
		</div>
		<!--// header -->
		<div class="content__login">
			<!-- login_form -->
			<form class="login_form" action="./login" method="post">
				<div class="select_area">
					<span class="chk_w"> <input type="checkbox"> <label>로그인
							유지</label> <input type="radio" name="loginType">일반회원 <input
						type="radio" name="loginType">협력사 관리자
					</span>

				</div>
				<div class="id_area">
					<div class="input_wrap error" id="loginInputId">
						<span class="input_box"> <input class="int" id="inputId"
							type="text" name="id" value="" placeholder="아이디/인증 이메일">
						</span>
					</div>
				</div>
				<div class="pw_area">
					<div class="input_wrap error" id="loginInputPwd">
						<span class="input_box"> <label style="display: block;"></label>
							<input type="password" maxlength="20" id="inputPwd"
							name="password" class="int" value="" placeholder="비밀번호">
						</span>
					</div>
				</div>

				<div>
					<p class="err_txt" id="error-message">아이디/인증이메일 또는 비밀번호를 잘못 입력하셨습니다.</p>
				</div>
				<input type="submit" class="btn_login" onclick="error(event);"
					value="로그인">
				<div class="menu_area">
					<div class="login_info">
						<div class="help_w">
							<a href="./findId">아이디 찾기</a>
						</div>
						<div class="help_w">
							<a href="./findPassword">비밀번호 찾기</a>
						</div>
						<div class="help_w">
							<a href="../member/add">회원가입</a>
						</div>
					</div>
				</div>
			</form>
			<!--// login_form -->
		</div>
	</div>
	<!--// login_wrap -->



</body>

</html>