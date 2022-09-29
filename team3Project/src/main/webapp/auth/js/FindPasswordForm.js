	var pwSearchObj = document.getElementById("pwSearch");
	
	pwSearchObj.addEventListener('click', function(event) {
		var inputIdObj = document.getElementById('inputId');
		var inputIdVal = document.getElementById('inputId').value;
		
		var searchErrorM = document.getElementById("searchError");
		
		if (inputIdVal == "") {
			event.preventDefault();
			inputIdObj.style.borderColor = 'red';
			searchErrorM.style.color = 'red';
			searchErrorM.textContent = "아이디를 입력해 주세요.";
			}
			
		});