<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javaScript" src='./script/MemberForm.js'></script>
<link rel='stylesheet' type='text/css' href='./css/MemberForm.css'>
</head>

	 <body class='body_join'>
	      <div id='wrap' class='join_warp'>     
	         <div id='hearder' class='join_header'>
	            <div><a id='logo_a' href='#'><img src='../img/danawalogo.png'></a></div>
	            <h1>회원가입</h1>
	         </div>
	         <table class='tabTable'>
	         	<tr >
	         		<td class='tabTd'>일반회원</td>
	         		<td class='tabTd' id='buisnessTd'>사업자 회원</td>
	         	</tr>
	         </table>
	         <table class='noticeTable'>
	         	<tr>
	         		<td class='noticeTd'>아래 항목을 모두 필수로 입력해주세요.</td>
	         	</tr>
	         </table>
	         
	         <div class='allCheckDiv'>
		         <div class='termsTilte'>
					 <input id="allSelect" class='tiltecheckBoxInput' type='checkbox'>
					 <label class='tiltecheckLabel'>약관 모두 동의하기</label>
				 </div>
				 
				 <div class='termsETC'>
					 <input class='checkBoxInput'  type='checkbox'>
					 <label class='checkLabel'>만 14세 이상입니다. <strong class='allStrong'>(필수)</strong></label><br>
				 </div>
				 
				 <div class='termsETC'>   
					 <input class='checkBoxInput'  type='checkbox'>
					 <label class='checkLabel'>서비스 이용 약관 <strong class='allStrong'>(필수)</strong></label><br>
				 </div>
				 
				 <div class='termsETC'>
					 <input class='checkBoxInput'  type='checkbox'>
					 <label class='checkLabel'>개인정보 수집 및 이용 <strong class='allStrong'>(필수)</strong></label><br>
				 </div>
				 
				 <div class='termsETC'>
					 <input class='checkBoxInput'  type='checkbox'>
					 <label class='checkLabel'>이벤트/쇼핑혜택 이메일 수신 <strong id='adsTermsStrong'>(선택)</strong></label><br>
				 </div>
			 </div>
			 <form action='./add' method='post' name='join_confirm'>
	         <div class='inputDiv_warp'>
	           
	            <div class='email_Input'>
	               <label>이메일 주소</label>
	               <input type='text' name='email' placeholder='이메일 주소 입력'>
	               <p>가입 완료를 위한 이메일 인증이 진행되니 정확한 이메일 주소를 입력해주시기 바랍니다.</p>
	            </div>
	            
	            <div class='id_Input'>
	               <label>아이디</label>
	               <input type='text' name='id' placeholder='영문 4자 이상, 최대 20자'>
	            </div>
	            
	            <div class='password_input'>
	               <label>비밀번호</label>
	               <input type='text' placeholder='숫자, 영문, 특수문자 포함 최소 8자 이상'>
	            </div>
	            
	            <div class='ck_password_input'>
	               <label>비밀번호 확인</label>
	               <input type='text' name='pwd' placeholder='숫자, 영문, 특수문자 포함 최소 8자 이상'>
	            </div>
	            
	            <div class='name_input'>
	               <label>이름</label>
	               <input type='text' name='mname' placeholder='한글 8자, 영문 16자 까지 가능'>
	            </div>
	            
	            <div class='nickName_input'>
	               <label>닉네임</label>
	               <input type='text' name='nickname' placeholder='한글 8자, 영문 16자 까지 가능'>
	            </div>
	            
	         </div>
	       
	         <input type="button" id="joinBtn" class='join_btn' value='회원가입'>
	         </form>
	         
	         <div class='join_footer'>
				Copyright © <strong>danawa</strong> Co., Ltd. All Rights Reserved.
			 </div>
	         
	      </div>
	</body> 

</html>