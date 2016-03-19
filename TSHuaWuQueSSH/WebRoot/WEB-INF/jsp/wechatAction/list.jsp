<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
    <title>微信链接信息列表</title>
	<%@ include file="/WEB-INF/jsp/commons.jspf" %>
</head>
<body>
 
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 微信链接管理
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle">
       
        <!-- 表头-->
        <thead>
            <tr align=center valign=middle id=TableTitle>
            	<td width="200px">链接标题</td>
				<td width="400px">链接地址</td>
				<td width="150px">更新时间</td>
				<!-- <td width="150px">访问次数</td> -->
				<td>相关操作</td>
            </tr>
        </thead>

		<!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="wechatList">
        
        <s:iterator value="#wechatList">
			<tr class="TableDetail1 template" height="130px">
				<td>${title}&nbsp;</td>
				<td>${link}&nbsp;</td>
				<td>${updateTime}&nbsp;</td>
				<%-- <td>${visiteTimes}&nbsp;</td> --%>
				<td>
					<s:a action="wechat_delete?wechatId=%{wechatId}" onclick="return window.confirm('您确定要删除吗？')">删除</s:a>
					<s:a action="wechat_editUI?wechatId=%{wechatId}">
						修改
					</s:a>
					&nbsp;
				</td>
			</tr>
		</s:iterator>	
			
        </tbody>
    </table>
    
    <!-- 其他功能超链接 -->
    <div id="TableTail">
        <div id="TableTail_inside">
            <s:a action="wechat_addUI"><img src="${pageContext.request.contextPath}/style/images/createNew.png" /></s:a>
        </div>
    </div>
</div>


</body>
</html>
