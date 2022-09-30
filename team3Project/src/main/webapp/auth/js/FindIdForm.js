	var idSearchObj = document.getElementById("idSearch");
	
	idSearchObj.addEventListener('click', function(event) {
		var emailObj = document.getElementById('inputEmail')
		var emailObjVal = document.getElementById('inputEmail').value;
		var emailIdx = emailObj.value.indexOf('@');
		
		var errorM2 = document.getElementById("emailError");
		
		if (emailObjVal == "") {
			event.preventDefault();
			emailObj.style.borderColor = 'red';
			errorM2.style.color = 'red';
			errorM2.textContent = "인증 이메일을 입력해 주세요";
			emailObj.focus();
		}else if (emailIdx == -1) {
			event.preventDefault();
			errorM2.style.color = 'red';
			emailObj.style.borderColor = 'red';
			errorM2.textContent = "이메일 형식을 확인해 주세요.";
			emailObj.focus();
		}
	});
	
	
//		}else if (<c:out te> == true){
//			ddslkjas;lkjasfd
//		}
	