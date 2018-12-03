<%@ page language="java" pageEncoding="GB2312" %>

<!DOCTYPE HTML PUBLIC "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
<title>Manager Login</title>
<script type="text/javascript">  
	function jump(){
		alert("enter")
    	var uurl = "http://localhost:8080/index2.jsp"
    	alert("ajax")
    	$.ajax({
    	    type:'GET',
        	url:'http://localhost:8080/hello',
        	async:true,
        	dataType:'json',
        	success:function(){
           		window.open(uurl);
        	},
        	error:function(){
            	alert("失败...");
        	}
    	})
    }   
   
</script> 


</head>
<body bgcolor="#FFFFFF">
	<center><h3> 欢迎 ${name },当前时间：${date } </h3></center>
	<center><input type="submit" onblur="jump()" value="JUMP"></input></center><br>  
</body>
</html>