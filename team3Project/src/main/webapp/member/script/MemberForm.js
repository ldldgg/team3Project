	
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
	
	function joinFnc(){
		document.join_confirm.submit();	
	}
		
		
	window.onload = function () {
			var allCheckBox = document.getElementById("allSelect");
			allCheckBox.addEventListener('click', allFnc);
			
			var joinBtn = document.getElementById("joinBtn");
			joinBtn.addEventListener('click', joinFnc);
		
		
		
		}//window.onload function 끝	



