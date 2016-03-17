<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link rel="Shortcut Icon" href="./demo_images/hwq.ico" />
    <title>花无缺管理员后台</title>
	<link rel="stylesheet" href="<%=path%>/css/default.css" type="text/css"></link>
    <script type="text/javascript" src="<%=path%>/js/menu.js"></script>
    <style type="text/css">
      #username{
       font-size: 30px;
	   font-weight: bold;
	   color:red;   
      }
    </style>
  </head>
  
  <body>
    <div id="header" style="height:40px;">
       <p style="float:left ; margin-left:50px; margin-top:10px; color:#FFF; font-size:16px; font-family:黑体;">
              管理员后台 &gt;&nbsp;当前登录者：&nbsp;<span id="username">${user.userName}</span></p>
	<ul> 
	    <li><a href="${pageContext.request.contextPath}/userInfo_logout.action">退出系统</a>&nbsp;|&nbsp;</li>
	</ul>
	</div>	
	
<div id="contents">
	<div class="left">
		<ul class="bigbtu">	
		</ul>
		<div class="menu_top"></div>
		<div class="menu" id="TabPage3">
			<ul id="TabPage2">
			  <li id="left_tab2" onClick="javascript:border_left('TabPage2','left_tab2');" title="信息管理">信息管理</li>
			</ul>
				
			<!-- 一级目录 -->	
			<div id="left_menu_cnt">
		          
		    	      <ul id="dleft_tab2" style="display:none;">
	                   		<li id="now33"><a href="page_aboutHwq.action" onClick="go_cmdurl('首页管理',this);" target="content3" title="首页管理">首页管理</a></li>
	                   		<li id="now33"><a href="about_hwq.action" onClick="go_cmdurl('关于花无缺管理',this);" target="content3" title="关于花无缺管理">关于花无缺管理</a></li>
	                   		<li id="now33"><a href="about_hwq.action" onClick="go_cmdurl('花艺集锦管理',this);" target="content3" title="花艺集锦管理">花艺集锦管理</a></li>
	                   		<li id="now33"><a href="about_hwq.action" onClick="go_cmdurl('花言巧语管理',this);" target="content3" title="花言巧语管理">花言巧语管理</a></li>
	                   		<li id="now33"><a href="about_hwq.action" onClick="go_cmdurl('软装与花艺管理',this);" target="content3" title="软装与花艺管理">软装与花艺管理</a></li>
	                   		<li id="now33"><a href="about_hwq.action" onClick="go_cmdurl('人力资源管理',this);" target="content3" title="人力资源管理">人力资源管理</a></li>
	                   		<li id="now33"><a href="about_hwq.action" onClick="go_cmdurl('微信链接管理',this);" target="content3" title="微信链接管理">微信链接管理</a></li>
	                   		<li id="now33"><a href="about_hwq.action" onClick="go_cmdurl('用户登录管理',this);" target="content3" title="用户登录管理">用户登录管理</a></li>
             	       </ul>  
		   
			</div>
			<div class="clear"></div>
		</div>
		<div class="menu_end"></div>
	</div>
	<div class="right">
	   <ul id="TabPage1">
			<!-- <li id="Tab1" class="Selected" onClick="javascript:switchTab('TabPage1','Tab1');" title="首页">首页</li> -->
			<li id="Tab3" onClick="javascript:switchTab('TabPage1','Tab3');"><span id="dnow99" style="display:block">空白</span></li>
	   </ul>
		<div id="cnt">
		  <div id="dTab1" class="Box">
		  <iframe src="" name="content1" frameborder="0" scrolling="auto"></iframe>
		  </div>
			<div id="dTab2" class="HackBox Box">
			<iframe src="" name="content2" frameborder="0" scrolling="auto"></iframe>
			</div>
			<div id="dTab3" class="HackBox Box">
			<iframe src="" name="content3" id="content3" frameborder="0" scrolling="auto"></iframe>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
  </body>
</html>
