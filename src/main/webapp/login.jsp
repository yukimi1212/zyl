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
    <title>Login</title>

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
          <img src="images/logo.PNG" alt="smart"/>
      </div>

      <h2 class="form-heading">login</h2>
      <div class="container log-row">
      	<form id="form" class="form-signin" action="/login/user" method="get" enctype="multipart/form-data"> 
              <div class="login-wrap">
              	  <span style="color:#f36616" id="warning"></span>
                  <input type="text" id="user_id" name="user_id" class="form-control" placeholder="User ID" autofocus>
                  <input type="password" id="user_pwd" name="user_pwd" class="form-control" placeholder="Password">
                  <button class="btn btn-lg btn-success btn-block" type="submit">LOGIN</button>
                  <div class="login-social-link">
                  </div>
                  <label class="checkbox-custom check-success">
<!--              <input type="checkbox" value="remember-me" id="checkbox1"> <label for="checkbox1">Remember me</label>
                  <a class="pull-right" data-toggle="modal" href="#forgotPass"> Forgot Password?</a>		-->
                  </label>

                  <div class="registration">
                      Don't have an account yet?
                      <a class="" href="registration.jsp">
                          Create an account
                      </a>
                  </div>

              </div>

              <!-- Modal 
              <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="forgotPass" class="modal fade">
                  <div class="modal-dialog">
                      <div class="modal-content">
                          <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              <h4 class="modal-title">Forgot Password ?</h4>
                          </div>
                          <div class="modal-body">
                              <p>Enter your e-mail address below to reset your password.</p>
                              <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

                          </div>
                          <div class="modal-footer">
                              <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                              <button class="btn btn-success" type="button">Submit</button>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- modal -->

		</form> 
      </div>

      <!--jquery-1.10.2.min-->
      <script src="js/jquery-1.11.1.min.js"></script>
      <!--Bootstrap Js-->
      <script src="js/bootstrap.min.js"></script>
      <script src="js/respond.min.js"></script>
	<script src="js/jquery.form.js" type="text/javascript"></script>  
	
  </body>
  

<script type="text/javascript">  	
	/* $(function () {
    	$("#form").submit(function () {
        	$(this).ajaxSubmit(function () {
            	alert("提交成功1");
            	window.open(index.jsp);
        	});
        	return false;
    	});
	}); */
	
	$(function () {
	    $(":submit").click(function () {
	        var options = {
	            url: "http://localhost:8080/login/user",
	            success: function (data) {
	                var user_name = JSON.stringify(data);
	                var n = user_name.split("|");
	                if(n[1] != "")
	                	window.location.href="http://localhost:8080/user/" + n[1] + "/home";
	                else{
	                	document.getElementById("warning").innerHTML = "用户名或密码错误，请重新输入";
	                	$("#user_id").val("");
                		$("#user_pwd").val("");
	                }	
	            }
	        };
	        $("#form").ajaxForm(options);
	    })
	})

</script> 
</html>
