	
	function allFnc(){	//체크박스 전체선택메서드
	
	var allCheckBox = document.getElementById("allSelect");
	var etcCheckBox = document.getElementsByClassName("checkBoxInput");
	
	if(allCheckBox.checked == true){
		for(var i = 0; i<etcCheckBox.length; i++){
			etcCheckBox[i].checked = true;
		}
	}else if(allCheckBox.checked == false){
		for(var i = 0; i<etcCheckBox.length; i++){
			etcCheckBox[i].checked = false;
			}
		}
	}//allFnc 끝
	
	function idCheck(){
		var emailV = document.getElementsByName("email");
	}
		
		
	window.onload = function () {
			var allCheckBox = document.getElementById("allSelect");
			allCheckBox.addEventListener('click', allFnc);
		
		
		
		
		}//window.onload function 끝	



