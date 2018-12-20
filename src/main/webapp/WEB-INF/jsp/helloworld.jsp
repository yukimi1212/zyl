<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>HelloWorld</title>
</head>
<body>
	<center><h3> 欢迎 ${user_name },当前时间：${time } </h3></center>
	<center>ID: <input type="text" id="user_id" value=${user_id }/></center>	
  	<center><input type="submit" value="JUMP TO MAP" onclick="jumpToMap()"></input></center><br> 
  	<center><button type="button" class="submit" onclick="jumpToOpen()">JUMP TO OPEN</button></center>
  	
</body>

<script type="text/javascript">  
	function jumpToMap(){
		var user_id = document.getElementById("user_id").value;
        var uurl = "http://localhost:8080/user/" + user_id + "map";
        window.open(uurl);  
    }	
	
	function jumpToOpen(){
		var user_id = document.getElementById("user_id").value;
        var uurl = "http://localhost:8080/user/" + user_id + "open";
        window.open(uurl);  
    }	
</script>
</html>