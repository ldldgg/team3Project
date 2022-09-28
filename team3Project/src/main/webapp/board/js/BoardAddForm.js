
window.onload = function() {
	var submitObj = document.getElementById("submit");
	var nePwdVal = document.getElementById("nePwd").value;
	var pwdNeMsgObj = document.getElementById("pwdNeMsg");
	var pwdEmptyMsgObj = document.getElementById("pwdEmptyMsg");
	var subjectObj = document.getElementById("subject");
	
	if(nePwdVal) {
		pwdNeMsgObj.style.display = 'inline';
		pwdEmptyMsgObj.style.display = 'none';
	}
	
	submitObj.addEventListener("click", function(e) {
		var pwdObj = document.getElementById("pwd");
		var subjectEmptyMsgObj = document.getElementById("subjectEmptyMsg");
		
		if(!subjectObj.value){
			e.preventDefault();
			
			subjectEmptyMsgObj.style.display = 'inline';
		}else{
			subjectEmptyMsgObj.style.display = 'none';
		}
		
		
		if(!pwdObj.value){
			e.preventDefault();
			
			pwdEmptyMsgObj.style.display = 'inline';
			pwdNeMsgObj.style.display = 'none';
		}
		
	});

};
