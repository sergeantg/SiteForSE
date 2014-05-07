function changePass(){
	var xmlhttp;
    if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
    	xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
    	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    var userName = document.getElementById("userName");
  	var oldPass = document.getElementById("pwd");
    xmlhttp.onreadystatechange=function()
  	{
	  	if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
		    if(xmlhttp.responseText=="yes"){
	            //alert("修改成功");
	            confirm("nnnnnn");
	            window.top.location.reload();
	        }else{
	       	 	alert("修改失败");
	        }
    	}
  	};
  	xmlhttp.open("POST","./StoreUpdateServlet?a=pass&name="+userName.value+"&pass="+pwd.value,true);
  	xmlhttp.send();
}