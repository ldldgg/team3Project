	
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
	
	function inputCheckFnc(){
		var emailInput = document.getElementById('emailInput');
		var emailP = document.getElementById('emailP');
		var emailIdx = emailInput.value.indexOf('@');
		
		if(emailInput.value.length == 0){
			emailP.style.display = 'block';
			emailP.style.color = 'red';
			emailP.textContent = "이메일은 필수입력입니다";
		}else if(emailIdx == -1){
			emailP.style.display = 'block';
			emailP.style.color = 'red';
			emailP.textContent = "이메일 양식을 확인하세요";
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
			emailInput.addEventListener('change', inputCheckFnc);
		
		
		}//window.onload function 끝	



