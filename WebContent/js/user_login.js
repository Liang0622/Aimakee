function changeImg(){
	//
	if(window.XMLHttpRequest){
		xmlHttpRequest = new XMLHttpRequest();
	}else{
		xmlHttpRequest = new ActiveObject("Microsoft.XMLHTTP");
	}
	
	xmlHttpRequest.onreadystatechange= callBack;
	
	var url="codeServlet";
	
	xmlHttpRequest.open("GET", url, true);
	xmlHttpRequest.send(null);
	function callBack(){

		if(xmlHttpRequest.readyState==4 && xmlHttpRequest.status==200){
			var data=xmlHttpRequest.responseText;
			var code=document.getElementById("code");
			code.innerHTML=data;
			
		}
	}
	
}