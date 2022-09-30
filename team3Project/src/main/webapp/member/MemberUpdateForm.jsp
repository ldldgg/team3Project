<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<script>
	function pageMoveListFnc() {
		location.href = './list';
	}
	function pageMoveDeleteFnc(mno) {
		var url = "./delete?mno=" + mno;
		location.href = url;
	}
</script>
</head>
<body>
	<jsp:include page="/header.jsp" />
	
	<h1>회원정보</h1>
	<form action='./update' method='post'>
		회원번호: <input type='text' name='mno' 
			value='${memberDto.mno}' readonly><br>
		아이디: <input type='text' name='id' 
			value='${memberDto.id}' readonly><br>	
		이메일: <input type='text' name='email' 
			value='${memberDto.email}'><br>
		비밀번호: <input type='text' name='pwd' 
			value='${memberDto.pwd}'><br>
		이름: <input type='text' name='mname' 
			value='${memberDto.mname}'><br>
		닉네임: <input type='text' name='nickname' 
			value='${memberDto.nickname}'><br>	
		가입일: ${memberDto.cre_date}<br>
		<input type='submit' value='수정'>
		<input type='button' value='삭제' 
			onclick='pageMoveDeleteFnc(${memberDto.mno});'>
		<input type='button' value='취소' onClick='pageMoveListFnc();'>	
	</form>
	
	<jsp:include page="/footer.jsp" />
</body>
</html>