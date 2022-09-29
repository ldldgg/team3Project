<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
	<link rel='stylesheet' type='text/css' href='./css/LoginForm.css'>	
		<script type="text/javascript">
		
		</script>
	</head>
	
	<body class="body__login">
			<div class="login_wrap">
		<form action="./findPassword" method="post">
			<div class="header__login">
				<a href="./login">
				<img src="../img/danawalogo.png" >
				</a>
			</div>
			<div class="search__wrap">

				<div class="search__tab">
					<button type="button"
						class="search__tab-button" role="tab"
						aria-selected="true" onclick="location.href='./findId'">
						<h2>아이디 찾기</h2>
					</button>

					<button type="button" class="search__tab-button search__tab-button--select" role="tab"
						aria-selected="false"
						onclick="location.href='./findPassword'">
						<h2>비밀번호 찾기</h2>
					</button>


				</div>
				
				<h3 class="search__h3">다나와 아이디를 입력해 주세요.</h3>
				
				
				<div class="search__form search__form--confirm"
					id="danawa-member-searchId-area-email">
					 <input type="text" style="border-color: red;"
						id="inputId" name="id"
						placeholder="다나와 아이디 입력"> 
						
				<p id="searchError" style="color: red;">입력하신 아이디를 찾을 수 없습니다.</p>
						<button type="submit" id="pwSearch"
						class="search__button" value="확인">
						<strong>확인</strong>
						</button>
				</div>
			</div>
		</form>
	<div id="footer" class="footer footer__login footer__login--search">
            <address>Copyright © <strong>danawa</strong> Co., Ltd. All Rights Reserved.</address>
        </div>

	</div>
		
	</body>
	
	<script type="text/javascript" src='./js/FindPasswordForm.js?asd'></script>
</html>
<!-- 		<h3 class="search__h3">다나와 아이디 또는 인증 이메일을 입력해 주세요.</h3> -->
<!-- 		<input type="text"  name="id"  placeholder="다나와 아이디 또는 이메일 주소 입력"> -->
<!-- 		<input type="submit" value="확인"> -->
<!-- "./findPassword" -->