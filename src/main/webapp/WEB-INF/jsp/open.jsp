<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Open Flash Chart</title>
	<script type="text/javascript" src="../../js/swfobject.js"></script>
	<script type="text/javascript">
		var openFlashChartswf = "../../swf/open-flash-chart.swf";
		var expressInstallswf = "../../swf/expressInstall.swf";
		var params = {menu: "false",scale: "noScale",wmode:"opaque"}; 
		swfobject.embedSWF(openFlashChartswf, "chart1", "550px", "350px", "9.0.0", expressInstallswf, {"data-file":"../../data/bar-1.txt"},params);
		swfobject.embedSWF(openFlashChartswf, "chart2", "550px", "280px", "9.0.0", expressInstallswf, {"data-file":"../../data/hbar.txt"},params);
		swfobject.embedSWF(openFlashChartswf, "chart3", "550px", "280px", "9.0.0", expressInstallswf, {"data-file":"../../data/bar-line.txt"},params);
		swfobject.embedSWF(openFlashChartswf, "chart4", "550px", "280px", "9.0.0", expressInstallswf, {"data-file":"../../data/bar_stack.txt"},params);
		swfobject.embedSWF(openFlashChartswf, "chart5", "550px", "280px", "9.0.0", expressInstallswf, {"data-file":"../../data/bar_glass-1.txt"},params);
		swfobject.embedSWF(openFlashChartswf, "chart6", "550px", "280px", "9.0.0", expressInstallswf, {"data-file":"../../data/bar_glass-2.txt"},params);
		
		swfobject.embedSWF(openFlashChartswf, "chart7", "550px", "280px", "9.0.0", expressInstallswf, {"data-file":"../../data/line-1.txt"},params);
		swfobject.embedSWF(openFlashChartswf, "chart8", "550px", "280px", "9.0.0", expressInstallswf, {"data-file":"../../data/line-2.txt"},params);
		swfobject.embedSWF(openFlashChartswf, "chart9", "550px", "280px", "9.0.0", expressInstallswf, {"data-file":"../../data/line-line_dot.txt"},params);
		swfobject.embedSWF(openFlashChartswf, "chart10", "550px", "280px", "9.0.0", expressInstallswf, {"data-file":"../../data/line-3.txt"},params);

		swfobject.embedSWF(openFlashChartswf, "chart11", "550px", "280px", "9.0.0", expressInstallswf, {"data-file":"../../data/pie-1.txt"},params);
		swfobject.embedSWF(openFlashChartswf, "chart12", "550px", "280px", "9.0.0", expressInstallswf, {"data-file":"../../data/pie-2.txt"},params);
	</script>
</head>
<body>
	<div id="chart1"></div> 
	<div id="chart2"></div>
	<div id="chart3"></div>
	<div id="chart4"></div> 
	<div id="chart5"></div>
	<div id="chart6"></div>
	<div id="chart7"></div> 
	<div id="chart8"></div>
	<div id="chart9"></div>
	<div id="chart10"></div> 
	<div id="chart11"></div>
	<div id="chart12"></div>
</body>
</html>