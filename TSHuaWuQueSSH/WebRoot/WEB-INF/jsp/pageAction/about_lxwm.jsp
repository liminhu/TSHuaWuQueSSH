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
	var map = new BMap.Map("allmap");    // 创建Map实例
	map.centerAndZoom(new BMap.Point(118.144, 39.654), 11);  // 初始化地图,设置中心点坐标和地图级别
	map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
	map.setCurrentCity("唐山市");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
</script>


  
  </body>
</html>
