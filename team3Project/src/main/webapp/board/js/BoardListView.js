window.onload = function() {
	var selectFil = document.getElementById("selectFil").value;
	
	if(selectFil){
		var selectFilSel = document.getElementById("selectFilSel");
		
		for(var i=0; i < selectFilSel.options.length; i++){
			if(selectFilSel.options[i].value == selectFil){
				selectFilSel.options[i].selected = true;
			}
		}
	}
	
};