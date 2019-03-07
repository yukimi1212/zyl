<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Admin Template">
    <meta name="keywords" content="admin dashboard, admin, flat, flat ui, ui kit, app, web app, responsive">
    <link rel="shortcut icon" href="img/favicon.ico">
    <title>Data Management</title>

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
      <h2 class="form-heading"></h2>
      <div class="container log-row">
          <form id="form" class="form-signin" method="post">
              <span style="color:#547311" id="warning_wb_zyl">有匪君子，如切如磋，如琢如磨。</span><br>
              <input type="text" id="ranking" class="form-control" placeholder="排名" autofocus>
              <input type="text" id="active" class="form-control" placeholder="活跃粉丝数"  autofocus>
              <input type="text" id="page_amount" class="form-control" placeholder="页显粉丝数" autofocus><br>
              <button type="button" class="submit" onclick="addData()">Submit</button>
          </form>
      </div>

    <!--jquery-1.10.2.min-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!--Bootstrap Js-->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/respond.min.js"></script>

</body>
  
	<script type="text/javascript">
	function addData(){
		var ranking = document.getElementById("ranking").value;
        var active = document.getElementById("active").value;
        var page_amount = document.getElementById("page_amount").value;
    	$.ajax({
            type:'POST',
            url:"http://192.168.60.16:8080/XSFYS/home/addAM",
            async:true,
            data:{
                'ranking':ranking,
                'active':active,
                'page_amount':page_amount,
            }, 

//            dataType:'json',
            success:function(){
            	window.location.href="index.jsp";
				},
				error:function(error){
					var jsonData = JSON.stringify(error);
                alert("error: " + jsonData);
            }
                    
		}) 
	}

	</script>	
</html>
