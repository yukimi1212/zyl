<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>百度地图API显示多个标注点带提示的代码</title>
    <!--css-->
    <link href="style/demo.css" rel="stylesheet" type="text/css" />
    <!--javascript-->
    <script src="scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="scripts/demo.js" type="text/javascript"></script>
</head>
<body>
    <div class="demo_main">

        <fieldset class="demo_content">
            <div style="min-height: 500px; width: 100%;" id="map">
            </div>
            <script type="text/javascript">
                var markerArr = [
                    { title: "名称：广州火车站12345", point: "113.264531,23.157003", address: "广东省广州市广州火车站", tel: "12306" },
                    { title: "名称：广州塔（赤岗塔）", point: "113.330934,23.113401", address: "广东省广州市广州塔（赤岗塔） ", tel: "18500000000" },
                    { title: "名称：广州动物园", point: "113.312213,23.147267", address: "广东省广州市广州动物园", tel: "18500000000" },
                    { title: "名称：天河公园", point: "113.372867,23.134274", address: "http://www.baidu.com", tel: "http://www.baidu.com" }

                ];



                function map_init() {
                    var map = new BMap.Map("map"); // 创建Map实例
                    var point = new BMap.Point(113.312213, 23.147267); //地图中心点，广州市
                    map.centerAndZoom(point, 13); // 初始化地图,设置中心点坐标和地图级别。
                    map.enableScrollWheelZoom(true); //启用滚轮放大缩小
                    //向地图中添加缩放控件
                    var ctrlNav = new window.BMap.NavigationControl({
                        anchor: BMAP_ANCHOR_TOP_LEFT,
                        type: BMAP_NAVIGATION_CONTROL_LARGE
                    });
                    map.addControl(ctrlNav);

                    //向地图中添加缩略图控件
                    var ctrlOve = new window.BMap.OverviewMapControl({
                        anchor: BMAP_ANCHOR_BOTTOM_RIGHT,
                        isOpen: 1
                    });
                    map.addControl(ctrlOve);

                    //向地图中添加比例尺控件
                    var ctrlSca = new window.BMap.ScaleControl({
                        anchor: BMAP_ANCHOR_BOTTOM_LEFT
                    });
                    map.addControl(ctrlSca);

                    var point = new Array(); //存放标注点经纬信息的数组
                    var marker = new Array(); //存放标注点对象的数组
                    var info = new Array(); //存放提示信息窗口对象的数组
                    for (var i = 0; i < markerArr.length; i++) {
                        var p0 = markerArr[i].point.split(",")[0]; //
                        var p1 = markerArr[i].point.split(",")[1]; //按照原数组的point格式将地图点坐标的经纬度分别提出来
                        point[i] = new window.BMap.Point(p0, p1); //循环生成新的地图点
                        marker[i] = new window.BMap.Marker(point[i]); //按照地图点坐标生成标记
                        map.addOverlay(marker[i]);
//                        marker[i].setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
                        var label = new window.BMap.Label(markerArr[i].title, { offset: new window.BMap.Size(20, -10) });
                        marker[i].setLabel(label);
                        info[i] = new window.BMap.InfoWindow("<p style=’font-size:12px;lineheight:1.8em;’>" + markerArr[i].title + "</br>地址：" + markerArr[i].address + "</br> 电话：" + markerArr[i].tel + "</br> 详情...：" + markerArr[i].tel + "</br></p>"); // 创建信息窗口对象

                   }

                    for (var i = 0; i < markerArr.length; i ++) 
                    {
                            var index = i;
                            console.log(i);
                            //alert(i);
                            addInfo("<p style=’font-size:12px;lineheight:1.8em;’>" + markerArr[i].title + "</br>地址：" + markerArr[i].address + "</br> 电话：" + markerArr[i].tel + "</br> 详情...：" + markerArr[i].tel + "</br></p>",marker[i]);
                    }


                }

                  function addInfo(txt,marker){
                    var infoWindow = new BMap.InfoWindow(txt);
                    marker.addEventListener("click", function(){this.openInfoWindow(infoWindow);});
                    }


                //异步调用百度js
                function map_load() {
                    var load = document.createElement("script");
                    load.src = "http://api.map.baidu.com/api?v=1.4&callback=map_init";
                    document.body.appendChild(load);
                }
                window.onload = map_load;
            </script>
        </fieldset>
    </div>
</body>
</html>

作者：hulaye
链接：https://www.jianshu.com/p/9e305854cd00
來源：简书
简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。