<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Admin Template">
    <meta name="keywords" content="admin dashboard, admin, flat, flat ui, ui kit, app, web app, responsive">
    <link rel="shortcut icon" href="images/ico/favicon.png">
    <title>Registration</title>

    <!-- Base Styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-body">

      <div class="login-logo">
          <img src="images/logo.PNG" alt=""/>
      </div>

      <h2 class="form-heading">registration now</h2>
      <div class="container log-row">
          <form id="form" class="form-signin" method="post">
              <p> Enter your account details below</p><span style="color:#f36616" id="warning_id"></span>
              <input type="text" id="user_id" class="form-control" placeholder="User Id" autofocus><span style="color:#f36616" id="warning_name"></span>
              <input type="text" id="user_name" class="form-control" placeholder="Name" autofocus><span style="color:#f36616" id="warning_phone"></span>
              <input type="text" id="user_phone" class="form-control" placeholder="Phone" autofocus><span style="color:#f36616" id="warning_age"></span>
              <input type="text" id="user_age" class="form-control" placeholder="Age" autofocus><span style="color:#f36616" id="warning_pwd"></span>
              <input type="password" id="user_pwd" class="form-control" placeholder="Password">
          	  <input type="password" id="reuser_pwd" class="form-control" placeholder="Re-type Password">		 
              <div class="radio-custom radio-success">
                  <input type="radio" value="Male" checked="checked" name="gender" id="male">
                  <label for="male">Male</label>
                  <input type="radio"  value="Female" name="gender" id="female">
                  <label for="female">Female</label>
              </div>
<!--          <label class="checkbox-custom check-success">
                  <input type="checkbox" value="agree this condition" id="checkbox1"> <label for="checkbox1">I agree to the Terms of Service and Privacy Policy</label>
              </label>
 -->
              <button class="btn btn-lg btn-success btn-block" type="submit">Submit</button>

              <div class="registration m-t-20 m-b-20">
                  Already Registered.
                  <a class="" href="login.jsp">
                      Login
                  </a>
              </div>
          </form>
      </div>

    <!--jquery-1.10.2.min-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!--Bootstrap Js-->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/respond.min.js"></script>



</body>
  
	<script type="text/javascript">	
	
    $(function () {
	    $(":submit").click(function (e) {
	    	e.preventDefault();
	    	var user_gender = $("input[name='gender']:checked").val();	
	        var user_id = document.getElementById("user_id").value;
	        var user_name = document.getElementById("user_name").value;
	        var user_pwd = document.getElementById("user_pwd").value;
	        var reuser_pwd = document.getElementById("reuser_pwd").value;
	        var user_phone = document.getElementById("user_phone").value;
	        var user_age = document.getElementById("user_age").value;
	    	$.ajax({
                type:'POST',
                url:"http://localhost:8080/login/register",
                async:true,
	            data:{
                    'user_id':user_id,
                    'user_name':user_name,
                    'user_pwd':user_pwd,
                    'reuser_pwd':reuser_pwd,
                    'user_gender':user_gender,
                    'user_age':user_age,
                    'user_phone':user_phone
                }, 

//                dataType:'json',
                success:function(result){
                	var user_name = JSON.stringify(result);
                	var n = user_name.split("|");
                	alert(n[1])
                	$("span").empty();
                	if(n[1] == "id为空"){
                		document.getElementById("warning_id").innerHTML = "请输入id";                   	
                	}
                	else if(n[1] == "name为空"){
                		document.getElementById("warning_name").innerHTML = "请输入用户名";
                	}
                	else if(n[1] == "pwd为空"){
                		document.getElementById("warning_pwd").innerHTML = "请输入密码";
                	}
                	else if(n[1] == "id已存在"){
                		document.getElementById("warning_id").innerHTML = "id已存在";
                	}
                	else if(n[1] == "age输入错误"){
                		document.getElementById("warning_age").innerHTML = "年龄应为数字  0-100";
                		$("#user_age").val("");
                	}
                	else if(n[1] == "phone输入错误"){
                		document.getElementById("warning_phone").innerHTML = "联系电话应为数字";
                		$("#user_phone").val("");
                	}
                	else if(n[1] == "pwd不一致"){
                		document.getElementById("warning_pwd").innerHTML = "两次输入不一致，请重新输入";
                		$("#user_pwd").val("");
                		$("#reuser_pwd").val("");
                	}
                	else
	                	window.location.href="http://localhost:8080/user/" + n[1] + "/home";
 				},
 				error:function(error){
 					var jsonData = JSON.stringify(error);
                    alert("login error: " + jsonData);
                }
                        
			}) 
	    })
	})
	
	</script>
	
	
	
</html>
