	function error(event) {
		var id = document.getElementById("inputId").value;
		var pw = document.getElementById("inputPwd").value;
		var errorM = document.getElementById("error-message");
	
		if (id == ""){
			event.preventDefault();
			document.getElementById("loginInputPwd").className = 'input_wrap';
			document.getElementById("loginInputId").className += ' error';
			errorM.textContent = "아이디를 입력해 주세요";
		}else if (pw == "") {
			document.getElementById("loginInputId").className = 'input_wrap';
			event.preventDefault();
			document.getElementById("loginInputPwd").className += ' error';
			errorM.innerHTML = "패스워드를 입력하세요";
		} 
			
	}
	
