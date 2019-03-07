<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title> ZYL & YJL </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <div class="page">
      <!-- Main Navbar-->
      <header class="header">
        <nav class="navbar">
          <!-- Search Box-->
          <div class="search-box">
            <button class="dismiss"><i class="icon-close"></i></button>
            <form id="searchForm" action="#" role="search">
              <input type="search" placeholder="What are you looking for..." class="form-control">
            </form>
          </div>
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <!-- Navbar Header-->
              <div class="navbar-header">
                <!-- Navbar Brand -->
                <a href="index.jsp" class="navbar-brand d-none d-sm-inline-block">
=                  <div class="brand-text d-none d-lg-inline-block"><span>云中惊雷起   人间烟火不如你</span><strong></strong></div>
                <!-- Toggle Button-->
                <a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
              </div>
                      
            </div>
          </div>
        </nav>
      </header>
      <div class="page-content d-flex align-items-stretch"> 
        <!-- Side Navbar -->
        <nav class="side-navbar">
          <!-- Sidebar Header-->
          <a href="https://weibo.com/zhangyunlei111">
          <div class="sidebar-header d-flex align-items-center">
            <div class="avatar"><img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
            <div class="title">
              <h1 class="h4">张云雷</h1>
              <p>相声演员/歌手</p>
            </div>  
          </div>
          </a>
          <a href="https://weibo.com/yangjiulang?is_hot=1">
          <div class="sidebar-header d-flex align-items-center">
            <div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
            <div class="title">
              <h1 class="h4">杨九郎</h1>
              <p>相声演员</p>
            </div>
          </div>
          </a>
          <!-- Sidebar Navidation Menus-->
          <span class="heading"></span>
          <ul class="list-unstyled">
          		<li class="active"><a href="index.html"> <i class="icon-home"></i>Home </a></li>
          </ul>
          <ul class="list-unstyled">
                <li><a href="add.jsp"> <i class="icon-home"></i>粉丝数更新 </a></li>
                <li><a href="addAM.jsp"> <i class="icon-home"></i>艾漫数据更新 </a></li>
          </ul>
        </nav>
        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom" id="day"></h2>
            </div>
          </header>

          <!-- 截止昨日22:00统计 -->
          <section class="dashboard-counts no-padding-bottom">
            <div class="container-fluid">
              <div class="row bg-white has-shadow">
                <!-- Item -->
                <div class="col-xl-3 col-sm-6">
                  <div class="item d-flex align-items-center">
                    <div class="icon bg-violet"><i class="icon-user"></i></div>
                    <div class="title"><span>二爷微博</span>
                    <div class="progress">
                        <div role="progressbar" style="width: 50%; height: 4px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-violet"></div>
                    </div>
                    </div>
                    <div class="number"><strong id="wbzyl"></strong></div>
                  </div>
                </div>
                <!-- Item -->
                <div class="col-xl-3 col-sm-6">
                  <div class="item d-flex align-items-center">
                    <div class="icon bg-red"><i class="icon-padnote"></i></div>
                    <div class="title"><span>超话</span>
                      <div class="progress">
                        <div role="progressbar" style="width: 50%; height: 4px;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-red"></div>
                      </div>
                    </div>
                    <div class="number"><strong id="chzyl"></strong></div>
                  </div>
                </div>
                <!-- Item -->
                <div class="col-xl-3 col-sm-6">
                  <div class="item d-flex align-items-center">
                    <div class="icon bg-green"><i class="icon-bill"></i></div>
                    <div class="title"><span>九郎微博</span>
                      <div class="progress">
                        <div role="progressbar" style="width: 50%; height: 4px;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-green"></div>
                      </div>
                    </div>
                    <div class="number"><strong id="wbyjl"></strong></div>
                  </div>
                </div>
                <!-- Item -->
                <div class="col-xl-3 col-sm-6">
                  <div class="item d-flex align-items-center">
                    <div class="icon bg-orange"><i class="icon-check"></i></div>
                    <div class="title"><span>超话</span>
                      <div class="progress">
                        <div role="progressbar" style="width: 50%; height: 4px;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-orange"></div>
                      </div>
                    </div>
                    <div class="number"><strong id="chyjl"></strong></div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          
          <!-- Dashboard Header Section    -->
          <section class="dashboard-header">
            <div class="container-fluid">
              <div class="row">
                <div class="chart col-lg-12 ">
                  <div class="card-header d-flex align-items-center">
                      <h3>微博日涨幅</h3>
                  </div>
                  <div class="line-chart bg-white d-flex align-items-center justify-content-center has-shadow">
                    <canvas id="lineCahrt" width="800" height="380"></canvas>
                  </div>
                </div>                               
              </div> 
            </div>
          </section>
          
          <!-- 年统计 -->
          <section class="dashboard-header">  
            <div class="container-fluid">
              <div class="row">
               <div class="chart col-lg-12">
                  <div class="card-header d-flex align-items-center">
                      <h3>微博月涨幅-小辫儿</h3>
                  </div>
                  <div class="bar-chart has-shadow bg-white">
                    <div class="title"><strong class="text-violet">2018</strong>&nbsp&nbsp&nbsp<small>合计：2566725</small>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<strong class="text-violet">2019</strong>&nbsp&nbsp&nbsp<small id="year_diff_zyl"></small></div>
                    <canvas id="barChart_year_zyl" width="800" height="380"></canvas>
                  </div>
                </div>
               </div> 
            </div>                      
 		  </section>
 		  
 		  <section class="dashboard-header">  
            <div class="container-fluid">
              <div class="row">
               <div class="chart col-lg-12">
                  <div class="card-header d-flex align-items-center">
                      <h3>微博月涨幅-九郎</h3>
                  </div>
                  <div class="bar-chart has-shadow bg-white">
                    <div class="title"><strong class="text-violet">2018</strong>&nbsp&nbsp&nbsp<small>9，10，11，12月合计：373697</small>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<strong class="text-violet">2019</strong>&nbsp&nbsp&nbsp<small id="year_diff_yjl"></small></div>
                    <canvas id="barChart_year_yjl" width="800" height="380"></canvas>
                  </div>
                </div>
               </div> 
            </div>                      
 		  </section>
 		  
 		  <!-- 超话七天涨幅 -->
          <section class="dashboard-header">  
            <div class="container-fluid">
              <div class="row">
               <div class="chart col-lg-12">
                  <div class="card-header d-flex align-items-center">
                  	<h3>超话七天涨幅（单位：W）</h3>
                    <div class="title"><small>每周五22：00统计</small></div>
                  </div>
                  <div class="bar-chart has-shadow bg-white">
                    <div class="title"></div>                    
                    <canvas id="barChart_ch_month" width="800" height="380"></canvas>
                  </div>
                </div>
               </div> 
            </div>                      
 		  </section>                     
    
          <!-- 艾漫数据 -->
          <section class="dashboard-header">
            <div class="container-fluid">
              <div class="row">
                <!-- Line Charts-->
                <div class="chart col-lg-12">
                	<div class="card-header d-flex align-items-center">
                      <h3>艾漫数据</h3>
                    </div>
                  	<div class="line-chart-example card">
                    	<canvas id="lineChart_ranking" width="600" height="260"></canvas>
                  	</div>
                  	<div class="line-chart-example card">
                  		<canvas id="lineChart_active" width="600" height="260"></canvas>
                  	</div>
                </div>
           	  </div>
           	</div>
          </section>           
 
 		<!-- 月统计 -->
          <section class="projects no-padding-top">
            <div class="container-fluid">
            
            <div class="title"><strong class="text-violet">本月微博涨幅   </strong><i class="fa fa-hand-o-down"></i><br></div>
             
              <!-- Project-->
              <div class="project">
                <div class="row bg-white has-shadow">
                  <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                    <div class="project-title d-flex align-items-center">
                      <div class="image has-shadow"><img src="img/avatar-2.jpg" alt="..." class="img-fluid"></div>
                      <div class="text">
                        <h3 class="h4" id="month-zyl"></h3><small id="wb-zyl-last"></small>
                      </div>
                    </div>
                    <div class="project-date"><i class="fa fa-arrow-up"><span class="hidden-sm-down" id="month-diff-zyl"></span></i></div>
                  </div>
                  <div class="right-col col-lg-6 d-flex align-items-center">
                    <div class="comments"><h6 id="wb-zyl"></h6></div>
                    <div class="project-progress">
                      <div class="progress">
                        <div role="progressbar" style="width: 60%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-green"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Project-->
              <div class="project">
                <div class="row bg-white has-shadow">
                  <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                    <div class="project-title d-flex align-items-center">
                      <div class="image has-shadow"><img src="img/avatar-1.jpg" alt="..." class="img-fluid"></div>
                      <div class="text">
                        <h3 class="h4" id="month-yjl"></h3><small id="wb-yjl-last"></small>
                      </div>
                    </div>
                    <div class="project-date"><i class="fa fa-arrow-up"><span class="hidden-sm-down" id="month-diff-yjl"></span></i></div>
                  </div>
                  <div class="right-col col-lg-6 d-flex align-items-center">
                  	<div class="comments"><h6 id="wb-yjl"></h6></div>
                    <div class="project-progress">
                      <div class="progress">
                        <div role="progressbar" style="width: 60%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-green"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>  
              
              <div class="title"><strong class="text-violet">本月超话涨幅   </strong><i class="fa fa-hand-o-down"></i><br></div>
             
              <!-- Project-->
              <div class="project">
                <div class="row bg-white has-shadow">
                  <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                    <div class="project-title d-flex align-items-center">
                      <div class="image has-shadow"><img src="img/avatar-2.jpg" alt="..." class="img-fluid"></div>
                      <div class="text">
                        <h3 class="h4" id="month-zyl-ch"></h3><small id="ch-zyl-last"></small>
                      </div>
                    </div>
                    <div class="project-date"><i class="fa fa-arrow-up"><span class="hidden-sm-down" id="month-diff-zyl-ch"></span></i></div>
                  </div>
                  <div class="right-col col-lg-6 d-flex align-items-center">
                    <div class="comments"><h6 id="ch-zyl"></h6></div>
                    <div class="project-progress">
                      <div class="progress">
                        <div role="progressbar" style="width: 60%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-green"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Project-->
              <div class="project">
                <div class="row bg-white has-shadow">
                  <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                    <div class="project-title d-flex align-items-center">
                      <div class="image has-shadow"><img src="img/avatar-1.jpg" alt="..." class="img-fluid"></div>
                      <div class="text">
                        <h3 class="h4" id="month-yjl-ch"></h3><small id="ch-yjl-last"></small>
                      </div>
                    </div>
                    <div class="project-date"><i class="fa fa-arrow-up"><span class="hidden-sm-down" id="month-diff-yjl-ch"></span></i></div>
                  </div>
                  <div class="right-col col-lg-6 d-flex align-items-center">
                  	<div class="comments"><h6 id="ch-yjl"></h6></div>
                    <div class="project-progress">
                      <div class="progress">
                        <div role="progressbar" style="width: 60%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-green"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
                                                    
            </div>
          </section>	
 
          <!-- Page Footer-->
          <footer class="main-footer">
            <div class="container-fluid">
              <div class="row">
                <div class="col-sm-6">
                  <p id="end">ZYL & YJL</p>
                </div>
                <div class="col-sm-6 text-right">
                  <p>Design by Milly - 一生挚爱 唯有云雷</p>
                  <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                </div>
              </div>
            </div>
          </footer>
        </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/jquery-validation/jquery.validate.min.js"></script>    
    <script src="js/charts-home-2.js"></script>
    <script src="js/charts-custom-2.js"></script>
    <!-- Main File-->
    <script src="js/front.js"></script>
    
    <script type="text/javascript">  
    
    window.onload = function(){
  		$.ajax({
       		type:'GET',
         	url:'http://192.168.60.16:8080/XSFYS/home/data',
         	async:true,
         	data:{
         	},
         	success:function(result){
         	    var jsonData = JSON.stringify(result);
         	    var n = jsonData.split("|");
            	document.getElementById("wb-zyl").innerHTML = n[1];
         	    document.getElementById("wb-yjl").innerHTML = n[2];
         	    document.getElementById("wbzyl").innerHTML = n[3];
        	    document.getElementById("wbyjl").innerHTML = n[4];
        	    document.getElementById("ch-zyl").innerHTML = n[5];
        	    document.getElementById("ch-yjl").innerHTML = n[6];
        	    document.getElementById("chzyl").innerHTML = n[5];
        	    document.getElementById("chyjl").innerHTML = n[6];
         	    document.getElementById("wb-zyl-last").innerHTML = n[7];
         	    document.getElementById("wb-yjl-last").innerHTML = n[8];
         	    document.getElementById("ch-zyl-last").innerHTML = n[9];
        	    document.getElementById("ch-yjl-last").innerHTML = n[10];
         	    document.getElementById("month-zyl").innerHTML = n[11];
         	    document.getElementById("month-yjl").innerHTML = n[11];
         	    document.getElementById("month-zyl-ch").innerHTML = n[11];
        	    document.getElementById("month-yjl-ch").innerHTML = n[11];
         	    document.getElementById("month-diff-zyl").innerHTML = n[12];
         	    document.getElementById("month-diff-yjl").innerHTML = n[13];
         	    document.getElementById("month-diff-zyl-ch").innerHTML = n[16] + "W";
        	    document.getElementById("month-diff-yjl-ch").innerHTML = n[17] + "W";
        	    document.getElementById("year_diff_zyl").innerHTML = "截止目前合计：" + n[14];
        	    document.getElementById("year_diff_yjl").innerHTML = "截止目前合计：" + n[15];
        	    document.getElementById("day").innerHTML = " Day " + n[19];
        	    document.getElementById("end").innerHTML = " 2018.11.27 - " + n[18];
        	    
         	},
         	error:function(error){
         		var jsonData = JSON.stringify(error);
         	    alert(jsonData)
         	}
     	})
	};
	
</script>
  </body>
</html>