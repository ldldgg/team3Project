<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>

<link rel='stylesheet' type='text/css' href='./css/LoginForm.css'>
<script type="text/javascript">
	
</script>
</head>

<body class="body__login">
	<div class="login_wrap">
		<form action="./findPassword" method="post">
			<jsp:include page="/header.jsp"></jsp:include>
			
				<div class="content__login container">
				<div class="search__wrap">

					<div class="search__tab">
						<button type="button" class="search__tab-button" role="tab"
							aria-selected="true" onclick="location.href='./findId'">
							<h2>아이디 찾기</h2>
						</button>

						<button type="button"
							class="search__tab-button search__tab-button--select" role="tab"
							aria-selected="false" onclick="location.href='./findPassword'">
							<h2>비밀번호 찾기</h2>
						</button>


					</div>

					<h3 class="search__h3">다나와 아이디 또는 인증 이메일을 입력해 주세요.</h3>


					<div class="search__form search__form--confirm"
						id="danawa-member-searchId-area-email">
						<input type="text" style="border-color: red;" id="inputId"
							name="id" placeholder="다나와 아이디 입력">

						<p class="err_txt" id="searchError">입력하신 아이디 또는 인증이메일을 찾을 수 없습니다</p>
						<button type="submit" id="pwSearch" class="search__button"
							value="확인">
							<strong>확인</strong>
						</button>
					</div>
					</div>
				</div>
			
		</form>
		
		<jsp:include page="/footer.jsp"></jsp:include>

	</div>

</body>

<script type="text/javascript" src='./js/FindPasswordForm.js'></script>
</html>
<!-- 		<h3 class="search__h3">다나와 아이디 또는 인증 이메일을 입력해 주세요.</h3> -->
<!-- 		<input type="text"  name="id"  placeholder="다나와 아이디 또는 이메일 주소 입력"> -->
<!-- 		<input type="submit" value="확인"> -->
<!-- "./findPassword" -->