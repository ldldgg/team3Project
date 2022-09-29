<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="spms.dto.MemberDto"%>
<%@page import="spms.servlet.member.IdCheckServlet"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel='stylesheet' type='text/css' href='./css/MemberForm.css'>
<script type="text/javaScript">

	var pattern_num = /[0-9]/;	// 숫자 
	var pattern_eng = /[a-zA-Z]/;	// 문자 
	var pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
	var pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크

	function allFnc(){	//체크박스 전체선택메서드
	
	var allCheckBox = document.getElementById("allSelect");
	var etcCheckBox = document.getElementsByClassName("checkBoxInput");
	
	if(allCheckBox.checked == true){
		for(var i = 0; i<etcCheckBox.length; i++){
			etcCheckBox[i].checked = true;
		}return;
	}else if(allCheckBox.checked == false){
		for(var i = 0; i<etcCheckBox.length; i++){
			etcCheckBox[i].checked = false;
			}return;
		}
	}//allFnc 끝

	function inputEmailCheckFnc(){
		
		var emailInput = document.getElementById('emailInput');
		var emailP = document.getElementById('emailP');
		
		var emailIdx = emailInput.value.indexOf('@');
		
		emailInput.style.borderColor = "blue";
		
		if(emailInput.value.length === 0){
			emailP.style.display = 'block';
			emailP.style.color = 'red';
			emailP.textContent = "이메일은 필수입력입니다";
		}else if(emailIdx === -1 || pattern_kor.test(emailInput.value)){
			emailP.style.display = 'block';
			emailP.style.color = 'red';
			emailP.textContent = "이메일 양식을 확인하세요";
		}else{
			emailP.style.display = 'none';
			
		}
	}//inputEmailCheckFnc 끝
	
	function inputIdCheckFnc(){
		
		var idInput = document.getElementById('idInput');
		var idP = document.getElementById('idP');
		var idCk = false;
				
		if(idInput.value.length === 0){
			idP.style.display = 'block';
			idP.style.color = 'red';
			idP.textContent = "아이디를 입력해 주세요";
		}else if(!pattern_eng.test(idInput.value.charAt(0))){
			idP.style.display = 'block';
			idP.style.color = 'red';
			idP.textContent = "첫글자는 영문이어야 합니다.";
		}else if(idInput.value.length < 4 || idInput.value.length > 20){
			idP.style.display = 'block';
			idP.style.color = 'red';
			idP.textContent = "최소 4자 , 최대 20 자 입니다.";
		}else if(pattern_kor.test(idInput.value)){
			idP.style.display = 'block';
			idP.style.color = 'red';
			idP.textContent = "한글이 포함되어 있습니다.";
		}else{
			location.href = "./idcheck?id=" + idInput.value + "&email=" + emailInput.value;
			if(idCk == true){
				console.log("ture");
				idP.style.color = 'red';
			
			}else if(idCk == false){
				
				idP.style.color = 'blue';
			
			}
		}
	}//Id체크 끝
	
	function pwdCheckFnc(){
		var pwdInput = document.getElementById('pwdInput');
		var pwdP = document.getElementById('pwdP');
		
		if(pwdInput.length < 8){
			pwdP.style.display = "block";
			pwdP.style.color = "red";
			pwdP.textContent = "너무 짧습니다. 최소 8자 이상 입력하세요.";
		}
		
	}
	
	
	
	
	
	
	
	function joinFnc(){		//회원가입 버튼 클릭시 doPost로 이동
		
		document.join_confirm.submit();	
	
	}
	
	
	window.onload = function () {
			var allCheckBox = document.getElementById("allSelect");
			allCheckBox.addEventListener('click', allFnc);
			
			var joinBtn = document.getElementById("joinBtn");
			joinBtn.addEventListener('click', joinFnc);
			
			var emailInput = document.getElementById('emailInput');
			emailInput.addEventListener('blur', inputEmailCheckFnc);
			
			var idInput = document.getElementById('idInput');
			idInput.addEventListener('blur', inputIdCheckFnc);
			
			var pwdInput = document.getElementById('pwdInput');
			idInput.addEventListener('blur', pwdCheckFnc);
		
		
		}//window.onload function 끝	
</script>
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
		               <input id='emailInput' type='text' name='email' placeholder='이메일 주소 입력' value="<%=request.getAttribute("email") %>">
		               <p id='emailP' style="display: none"></p>
		               <p>가입 완료를 위한 이메일 인증이 진행되니 정확한 이메일 주소를 입력해주시기 바랍니다.</p>
		               
		            </div>
		            
		            <div class='id_Input'>
		               <label>아이디</label>
		               <input id='idInput'  type='text' name='id' value='<%=request.getAttribute("id")%>' placeholder='영문 4자 이상, 최대 20자'>
		               <p id='idP'><%=request.getAttribute("notice")%></p>
		            </div>
		            
		            <div class='password_input'>
		               <label>비밀번호</label>
		               <input id='pwdInput' type='text' placeholder='숫자, 영문, 특수문자 포함 최소 8자 이상'>
		               <p id='pwdP' style="display: none"></p>
		            </div>
		            
		            <div class='ck_password_input'>
		               <label>비밀번호 확인</label>
		               <input id='secondPwdInput' type='text' name='pwd' placeholder='숫자, 영문, 특수문자 포함 최소 8자 이상'>
		               <p id='secondPwdP' style="display: none"></p>
		            </div>
		            
		            <div class='name_input'>
		                <label>이름</label>
		               <input id='nameInput' type='text' name='mname' placeholder='한글 8자, 영문 16자 까지 가능'>
		               <p id='nameP' style="display: none"></p>
		            </div>
		            
		            <div class='nickName_input'>
		                <label>닉네임</label>
		               <input id='nickNameInput' type='text' name='nickname' placeholder='한글 8자, 영문 16자 까지 가능'>
		               <p id='nickNameP' style="display: none"></p>
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