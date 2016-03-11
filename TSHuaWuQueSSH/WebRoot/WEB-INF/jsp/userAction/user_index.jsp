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
              管理员后台 &gt;&nbsp;当前登录者：&nbsp;<span id="username">${user.loginAccount}</span></p>
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
			
			<!-- 顶级目录 -->
			<s:iterator value="#application.topPrivilegeList" status="st">
					<s:if test="#session.user.hasPrivilegeByName(name)">
					    <s:if test="#st.first">
					      <li id="left_tab1" class="Selected" onClick="javascript:border_left('TabPage2','left_tab1');" title="${name}">${name}</li>
					    </s:if>
					    <s:else>
					      <li id="left_tab2" onClick="javascript:border_left('TabPage2','left_tab2');" title="${name}">${name}</li>
					    </s:else>
					</s:if>
			</s:iterator>
				</ul>
				
			<!-- 一级目录 -->	
			<div id="left_menu_cnt">
		    	<s:iterator value="#application.topPrivilegeList" status="top" >
		    	   <s:if test="#top.first">
		    	          <ul id="dleft_tab1">		
		    	                  <s:iterator value="privilegeInfos">		
								<s:if test="#session.user.hasPrivilegeByName(name)">
								 	<li id="now13"><a href="${pageContext.request.contextPath}${url}.action" onClick="go_cmdurl('${name}',this);" target="content3" title="${name}">${name}</a></li>
								</s:if>
								</s:iterator>
				          </ul>
		    	   </s:if>
		    	   <s:else>
		    	      <ul id="dleft_tab2" style="display:none;">
	                           <s:iterator value="privilegeInfos">
								<s:if test="#session.user.hasPrivilegeByName(name)">
								 	<li id="now33"><a href="${pageContext.request.contextPath}${url}.action" onClick="go_cmdurl('${name}',this);" target="content3" title="${name}">${name}</a></li>
								</s:if>
			                    </s:iterator>
             	       </ul>  
		    	   </s:else>
		
				</s:iterator>
			</div>
			<div class="clear"></div>
		</div>
		<div class="menu_end"></div>
	</div>
	<div class="right">
	   <ul id="TabPage1">
			<li id="Tab1" class="Selected" onClick="javascript:switchTab('TabPage1','Tab1');" title="首页">首页</li>
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
