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
              <span style="color:#547311" id="warning_wb_zyl">一笑相逢蓬海路。人间风月如尘土。</span><br>
              <input type="text" id="wb_zyl" class="form-control" placeholder="微博-小辫儿" autofocus>
              <input type="text" id="wb_yjl" class="form-control" placeholder="微博-九郎"  autofocus>
              <input type="text" id="ch_zyl" class="form-control" placeholder="超话-小辫儿" autofocus>
              <input type="text" id="ch_yjl" class="form-control" placeholder="超话-九郎"  autofocus><br>
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
		var wb_zyl = document.getElementById("wb_zyl").value;
        var wb_yjl = document.getElementById("wb_yjl").value;
        var ch_zyl = document.getElementById("ch_zyl").value;
        var ch_yjl = document.getElementById("ch_yjl").value;
    	$.ajax({
            type:'POST',
            url:"http://192.168.60.16:8080/XSFYS/home/add",
            async:true,
            data:{
                'wb_zyl':wb_zyl,
                'wb_yjl':wb_yjl,
                'ch_zyl':ch_zyl,
                'ch_yjl':ch_yjl,
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
