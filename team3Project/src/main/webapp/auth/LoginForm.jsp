<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript">
	
	window.onload function() {
		document.getElementById("id").focus();	
	}
	
</script>
<style type="text/css">
body {
	width: 100%;
	display: flex;
	justify-content: center;
}

#loginDiv {
	width: 400px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

</style>
</head>
<body>
	<!-- login_wrap -->
	<div>
		<!-- header -->
		<div>
			<img src="./img/logo.jpg">
			<a href="#" class="guest_orders"> <span>비로그인 주문조회</span>
			</a>
		</div>
		<!--// header -->
		<div>
			<!-- login_form -->
			<form action="./login" method="post">
				<div>
					<span> 
					<input type="checkbox"> <label>로그인 유지</label>
						<input type="radio" name="loginType">일반회원
						
						<input type="radio" name="loginType">협력사 관리자
					</span>
					
				</div>
				<div>
					<div>
						<span> 
						<input
							id = "id" type="text" name="id" placeholder="아이디/인증 이메일" value=""
							style="z-index: 8;">
						</span>
					</div>
				</div>
				<div>
					<div>
						<span> <label style="display: block;">비밀번호</label> <input
							type="password" maxlength="20" id="pwd"
							name="password" class="int" placeholder="비밀번호">
						</span>
					</div>
				</div>

				<div style="display: none;">
					<p class="err_txt" id="error-message"></p>
				</div>
				<input class="btn_login" type="submit" value="로그인"></input>
				<div>
					<div>
						<div>
							<a href="#">아이디 찾기</a>
						</div>
						<div>
							<a href="#">비밀번호 찾기</a>
						</div>
						<div>
							<a href="#">회원가입</a>
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