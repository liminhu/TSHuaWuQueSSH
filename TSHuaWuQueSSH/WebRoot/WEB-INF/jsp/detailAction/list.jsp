<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
    <title>{nav.navChineseName}信息列表</title>
	<%@ include file="/WEB-INF/jsp/commons.jspf" %>
</head>
<body>
 
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> ${nav.navChineseName}管理
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle">
       
        <!-- 表头-->
        <thead>
            <tr align=center valign=middle id=TableTitle>
            	<td width="400px">总共图片${detail.imagesNum}张</td>
				<td>相关操作</td>
            </tr>
        </thead>

		<!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="detail">
        
        
        <s:generator val="#request.detail.imagesAddress" separator=";" id="img"> </s:generator>
        <s:iterator  status="st" value="#request.img" id="name">  
			<tr class="TableDetail1 template" height="130px">
			<td width="80%"><img alt="${nav.navChineseName}" src="${pageContext.request.contextPath}/demo_images/detail/${path}/<s:property value="name"/>"></td>
				<td width="20%">
					<%-- <s:a action="detail_delete?id=%{id}" onclick="return window.confirm('您确定要删除吗？')">删除</s:a> --%>
					<a href="detail_editUI.action?img=${name}&id=${detail.id}&path=${path}">
						修改
					</a>
					&nbsp;
				</td>
			</tr>
		</s:iterator>	
			
        </tbody>
    </table>
    
    <!-- 其他功能超链接 -->
 <%--    <div id="TableTail">
        <div id="TableTail_inside">
            <s:a action="detail_addUI"><img src="${pageContext.request.contextPath}/style/images/createNew.png" /></s:a>
        </div>
    </div> --%>
</div>


</body>
</html>
