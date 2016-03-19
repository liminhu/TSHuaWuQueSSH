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
	    <li><a href="${pageContext.request.contextPath}/user_logout.action">退出系统</a>&nbsp;|&nbsp;</li>
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
	                   		<!-- <li id="now33"><a href="about_hwq.action" onClick="go_cmdurl('关于花无缺管理',this);" target="content3" title="关于花无缺管理">花无缺管理</a></li> -->
	                   		<li id="now33">花无缺管理</li>
	                   		<li id="now33"><a href="detail_list.action?navEnglishName=hwq_jj" onClick="go_cmdurl('关于花无缺',this);" target="content3" title="关于花无缺">关于花无缺</a></li>
	                   		<li id="now33"><a href="detail_list.action?navEnglishName=hwq_qywh" onClick="go_cmdurl('企业文化',this);" target="content3" title="企业文化">企业文化</a></li>
	                   		<li id="now33"><a href="detail_list.action?navEnglishName=hwq_lyzz" onClick="go_cmdurl('荣誉资质',this);" target="content3" title="荣誉资质">荣誉资质</a></li>
	                   		<li id="now33">花艺集锦管理</li>
	                   		<li id="now33"><a href="detail_list.action?navEnglishName=hyjj_hs" onClick="go_cmdurl('花束',this);" target="content3" title="花束">花束</a></li>
	                   		<li id="now33"><a href="detail_list.action?navEnglishName=hyjj_hc" onClick="go_cmdurl('花插',this);" target="content3" title="花插">花插</a></li>
	                   		<li id="now33"><a href="detail_list.action?navEnglishName=hyjj_hh" onClick="go_cmdurl('花盒',this);" target="content3" title="花盒">花盒</a></li>
	                   		<li id="now33"><a href="detail_list.action?navEnglishName=hyjj_hw" onClick="go_cmdurl('会务',this);" target="content3" title="会务">会务</a></li>
	                   		<li id="now33"><a href="detail_list.action?navEnglishName=hyjj_hd" onClick="go_cmdurl('活动',this);" target="content3" title="活动">活动</a></li>
	                   		<li id="now33">花言巧语管理</li>
							<li id="now33"><a href="detail_list.action?navEnglishName=hyqy_xhyhzs" onClick="go_cmdurl('鲜花养护知识',this);" target="content3" title="鲜花养护知识">鲜花养护知识</a></li>
							<li id="now33"><a href="detail_list.action?navEnglishName=hyqy_hydq" onClick="go_cmdurl('花语大全',this);" target="content3" title="花语大全">花语大全</a></li>
							<li id="now33"><a href="detail_list.action?navEnglishName=hyqy_xhyaq" onClick="go_cmdurl('鲜花与爱情',this);" target="content3" title="鲜花与爱情">鲜花与爱情</a></li>
   		                   <li id="now33">软装与花艺管理</li>
   		                   	<li id="now33"><a href="detail_list.action?navEnglishName=lzyhy_jjrz" onClick="go_cmdurl('家居软装',this);" target="content3" title="家居软装">家居软装</a></li>
   		                   	<li id="now33"><a href="detail_list.action?navEnglishName=lzyhy_ybjrz" onClick="go_cmdurl('样板间软装',this);" target="content3" title="样板间软装">样板间软装</a></li>
   		                   	<li id="now33"><a href="detail_list.action?navEnglishName=lzyhy_jdrz" onClick="go_cmdurl('酒店软装',this);" target="content3" title="酒店软装">酒店软装</a></li>
	                   		
	                   		<!-- <li id="now33"><a href="about_hwq.action" onClick="go_cmdurl('人力资源管理',this);" target="content3" title="人力资源管理">人力资源管理</a></li> -->
	                   		 <li id="now33">微信文章管理</li>
	                   		<li id="now33"><a href="wechat_list.action" onClick="go_cmdurl('微信链接管理',this);" target="content3" title="微信链接管理">微信链接管理</a></li>
	                   		<!-- <li id="now33"><a href="about_hwq.action" onClick="go_cmdurl('用户登录管理',this);" target="content3" title="用户登录管理">用户登录管理</a></li> -->
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
