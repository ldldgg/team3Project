<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
		
	<form action="./findId" method="post">
	
	<div class="notice-text">
                            <p>다나와 아이디를 모르시나요?</p>
                            <p>등록된 인증 수단으로 아이디를 찾을 수 있습니다.</p>
                        </div>
	<div class="search__form search__form--confirm" id="danawa-member-searchId-area-email">
                            <label for="danawa-member-searchId-member-authEmail" class="blind">이메일 주소 입력</label>
                            <input type="text" id="danawa-member-searchId-member-authEmail" 
                            	name="email" placeholder="이메일 주소 입력">
                            
                            <input type="submit" class="search__button" value="확인">
                        </div>	
	
	</form>
        

	</body>
</html>