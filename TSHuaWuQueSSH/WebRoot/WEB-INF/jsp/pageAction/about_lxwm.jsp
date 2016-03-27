<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Force latest IE rendering engine or ChromeFrame if installed -->
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<![endif]-->

<link rel="Shortcut Icon" href="./demo_images/hwq.ico" />
<title>花无缺花艺空间设计室</title>


<%-- ${pageContext.request.contextPath} --%>
<!--[if lt IE 9]>
	<script src="./demo_js/jquery-1.10.2.min.js" type="text/javascript" charset="utf-8"></script>	
<![endif]-->

<!--[if gte IE 9]>
	<script src="./demo_js/jquery-2.0.3.min.js" type="text/javascript" charset="utf-8"></script>	
<![endif]-->

    <!--[if !IE]><!-->
	<script src="./demo_js/jquery-2.0.3.min.js" type="text/javascript" charset="utf-8"></script>	
	<!--<![endif]-->

<!--[if IE 6]>
<script src="./demo_js/jquery-1.10.2.min.js" type="text/javascript" charset="utf-8"></script>
<script src="./demo_js/IE6PNG.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">IE6PNG.fix('*');</script>
<![endif]-->


<script src="./demo_js/jquery.cookie.min.js" type="text/javascript" charset="utf-8"></script>
<script src="./demo_js/template.min.js" type="text/javascript" charset="utf-8"></script>
<script src="./demo_js/jquery.easing.min.js" type="text/javascript" charset="utf-8"></script>
<script src="./demo_js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>

<!-- static file error: web/jquery.situa.js findout. --><!-- static file error: web/jquery.scrollLoading.js findout. -->
<script src="./demo_js/jquery.validate.js" type="text/javascript" charset="utf-8"></script>
<script src="./demo_js/tools.js" type="text/javascript" charset="utf-8"></script>
<script src="./demo_js/init.js" type="text/javascript" charset="utf-8"></script>


<link rel="stylesheet" href="./demo_css/style.css" type="text/css" media="screen" charset="utf-8">
<link rel="stylesheet" href="./demo_css/page.css" type="text/css" media="screen" charset="utf-8">

<style type="text/css">
	body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=mPOhS1FM4UceHhuFcG8elGjv"></script>
    <script async src="http://c.cnzz.com/core.php"></script>
</head>


<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(118.158437, 39.654562);//定义一个中心点坐标
        map.centerAndZoom(point,16);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
    var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
    map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
    var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:0});
    map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
    var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
    map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"花无缺花店",content:"花店电话：0315-2336628<br/>QQ： 527280479",point:"118.158437|39.654562",isOpen:0,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}
         ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
            var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
            var iw = createInfoWindow(i);
            var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
            marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
            
            (function(){
                var index = i;
                var _iw = createInfoWindow(i);
                var _marker = marker;
                _marker.addEventListener("click",function(){
                    this.openInfoWindow(_iw);
                });
                _iw.addEventListener("open",function(){
                    _marker.getLabel().hide();
                })
                _iw.addEventListener("close",function(){
                    _marker.getLabel().show();
                })
                label.addEventListener("click",function(){
                    _marker.openInfoWindow(_iw);
                });
                if(!!json.isOpen){
                    label.hide();
                    _marker.openInfoWindow(_iw);
                }
            })();
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
</script>
  
  <body>

  <%@ include file="/WEB-INF/mycommon.jspf" %>
    
<script>
	$(function(){
		$(".menu li").hover(function(){
			$(".menu li").find(".subnav").stop().slideUp();
            $(this).find(".subnav").stop().slideDown();//.parent().siblings().find(".subnav").slideUp();
        },function(){
            $(".menu li").find(".subnav").stop().slideUp();//.parent().siblings().find(".subnav").slideDown();
        });
	});
</script>	


<div class="body-wrap">	
    <div class="inner-banner clear" id="allmap"></div>
</div>
	  

<script>
    $(function(){
      $(".header .menu ul li").eq(6).addClass("hover");
    });
</script>        
 
    <script type="text/javascript">
         $(".subnav ul li").eq('${selected}').addClass("hover");
     </script>

<script type="text/javascript">
	// 百度地图API功能
	
	//initMap();//创建和初始化地图
	var map = new BMap.Map("allmap");    // 创建Map实例
	map.centerAndZoom(new BMap.Point(118.158437, 39.654562), 16);  // 初始化地图,设置中心点坐标和地图级别
	map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
	map.setCurrentCity("英伦美家");          // 设置地图显示的城市 此项是必须设置的
	

    
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
</script>

  </body>
</html>
