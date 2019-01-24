<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Chart</title>
    <link rel="stylesheet" href="../../vendor/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="../../vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="../../css/styles.css">
    <link rel="shortcut icon" href="../../images/ico/favicon.png">
    <script type="text/javascript" src="../../js/swfobject.js"></script>
	<script type="text/javascript">
		var openFlashChartswf = "../../swf/open-flash-chart.swf";
		var expressInstallswf = "../../swf/expressInstall.swf";
		var params = {menu: "false",scale: "noScale",wmode:"opaque"}; 
		swfobject.embedSWF(openFlashChartswf, "chart1", "674px", "350px", "9.0.0", expressInstallswf, {"data-file":"../../data/24h.txt"},params);
		swfobject.embedSWF(openFlashChartswf, "chart2", "674px", "350px", "9.0.0", expressInstallswf, {"data-file":"../../data/7days-2.txt"},params);
		swfobject.embedSWF(openFlashChartswf, "chart3", "674px", "350px", "9.0.0", expressInstallswf, {"data-file":"../../data/30days.txt"},params);
		swfobject.embedSWF(openFlashChartswf, "chart4", "674px", "350px", "9.0.0", expressInstallswf, {"data-file":"../../data/12months.txt"},params);
	</script>
</head>
<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <nav class="navbar page-header">
<!--         <a href="#" class="btn btn-link sidebar-mobile-toggle d-md-none mr-auto">
            <i class="fa fa-bars"></i>
        </a> -->

        <a class="navbar-brand" href="#">
            <img src="../../images/logo.PNG" alt="logo">
        </a> 

        <a href="#" class="btn btn-link sidebar-toggle d-md-down-none">
            <i class="fa fa-bars"></i>
        </a>

        <ul class="navbar-nav ml-auto">

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img src="../../images/user.jpg" class="avatar avatar-sm" alt="user">
                    <span class="small ml-1 d-md-down-none">${user_name }</span>
                </a>

                <div class="dropdown-menu dropdown-menu-right">                    		
                    <a href="#" class="dropdown-item">
						<i class="fa fa-bell"></i> Informations
                    </a>

                    <a href="../../index.jsp" class="dropdown-item">
						<i class="fa fa-lock"></i> Logout
                    </a>
                </div>
            </li>
        </ul>
    </nav>

    <div class="main-container">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-title">导航栏</li>

                    <li class="nav-item">
                        <a href="#" class="nav-link active">
                            <i class="icon icon-target"></i> 各停车场
                        </a>
                    </li>

                    <li class="nav-item nav-dropdown">
                        <a href="#" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-clock"></i> 分时段排行 <i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a href="javascript:void(0)" onclick="day()" class="nav-link">
                                    <i class="icon icon-graph"></i> 天
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="layouts-fixed-sidebar.html" class="nav-link">
                                    <i class="icon icon-graph"></i> 周
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="layouts-fixed-header.html" class="nav-link">
                                    <i class="icon icon-graph"></i> 月
                                </a>
                            </li>
                        </ul>
                    </li>
                                                       

                    <li class="nav-item">
                        <a href="tables.html" class="nav-link">
                            <i class="icon icon-puzzle"></i> 按类型
                        </a>
                    </li>
                </ul>
            </nav>
        </div>

        <div class="content">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-light">
                            	二十四小时
                        </div>
						<div id="chart1"></div> 
				
				<!--	<div class="card-body">
                            <canvas id="bar-chart" width="100%" height="50"></canvas>
                        </div>		 -->
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-light">
                           	 七天
                        </div>
						<div id="chart2"></div> 
                        
				<!-- 	<div class="card-body">
                            <canvas id="line-chart" width="100%" height="50"></canvas>
                        </div>	 	-->
                    </div>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-light">
                            	三十天
                        </div>
						<div id="chart3"></div> 
						
                <!--    <div class="card-body">
                            <canvas id="radar-chart" width="100%" height="50"></canvas>
                        </div>		 -->
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-light">
                            	十二个月
                        </div>
						<div id="chart4"></div> 
						
                <!--    <div class="card-body">
                            <canvas id="pie-chart" width="100%" height="50"></canvas>
                        </div>		 -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../../vendor/jquery/jquery.min.js"></script>
<script src="../../vendor/popper.js/popper.min.js"></script>
<script src="../../vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../../vendor/chart.js/chart.min.js"></script>
<script src="../../js/carbon.js"></script>
<script src="../../js/demo.js"></script>
</body>

<script type="text/javascript">  
	function day(){
		var user_name = document.getElementById("user_name").innerHTML;
        var uurl = "http://localhost:8080/user/" + user_name + "/map";
        window.open(uurl);  
    }	
</script>
</html>
