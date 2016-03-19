<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
	<title>${nav.navChineseName}-图片设置</title>
	<%@ include file="/WEB-INF/jsp/commons.jspf" %>
		<script type="text/javascript" src="js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="js/ajaxfileupload.js"></script>
	<script type="text/javascript">
	function checkFile(){  
        var value = $("#uploadFile").val();  
        if(!value || value=="" ){  
            alert("请选择您要上传的图片！");  
            return false;  
        }else{  
        	var pathName=$("#uploadFile").val();
            var startIndex = pathName.lastIndexOf('\\');
            var endIndex = pathName.lastIndexOf('.');
            var fileName =  pathName.substring(startIndex+1,endIndex);    
            $("#fileName").val(fileName);  
            if(value.lastIndexOf(".jpg") != -1){  
                $("#suffix").val("jpg");  
                 $("#image_upload").show();
                return true;  
            }else if(value.lastIndexOf(".jpeg") != -1){  
                $("#suffix").val("jpeg");  
                 $("#image_upload").show();
                return true;  
            }else if(value.lastIndexOf(".gif") != -1){  
                $("#suffix").val("gif");  
                 $("#image_upload").show();
                return true;  
            }else if(value.lastIndexOf(".bmp") != -1){  
                $("#suffix").val("bmp");  
                 $("#image_upload").show();
                return true;  
            }else if(value.lastIndexOf(".png") != -1){  
                $("#suffix").val("png");  
                $("#image_upload").show();
                return true;  
            }else{
                alert("对不起，您上传文件格式有误，请选择指定格式的图片文件上传");
                return false;  
            }
        }  
}
		
  $(document).ready(function(){
    $("#upload").hide();
    
    $("#update").click(function(){
		$("#upload").show();
		$("#image_upload").hide();
	});
    
	$("#image_upload").click(function(){
		      $.ajaxFileUpload({
	                   type:"post",
	                   secureuri:false,//一般设置为false
	              //     ContentType: "multipart/form-data;charset=utf-8",
	                   fileElementId:"uploadFile",  
	                   url:"image_upload.action",
	                   data:{fileName:$("#fileName").val(),suffix:$("#suffix").val(),oldImg:$("#oldImg").val(),path:$("#path").val()},//,uploadFile:$("#uploadFile").val()
	                   dataType:"text",
	                   success: function(data){
	                       var endIndex =data.lastIndexOf(';');
	                       alert(data.substring(0,endIndex));
                           var imag="/TSHuaWuQueSSH/demo_images/detail/"+data.substring(endIndex+1,data.length);
                 
	                       $("#img").attr("src",imag);
	                       $("#newPicture").val(data.substring(endIndex+1,data.length));
	                }
	             });//ajax上传
	});
	

  });
	</script>
</head>
<body>

<!-- 标题显示 --> 
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/>${nav.navChineseName}图片修改
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>

    <s:form action="detail_%{id == null ? 'add' : 'edit'}">
        <s:hidden name="id"></s:hidden>
        
        <div class="ItemBlock_Title1"><!-- 信息说明<DIV CLASS="ItemBlock_Title1">
        	<IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="${pageContext.request.contextPath}/style/blue/images/item_point.gif" /> 菜品类目信息 </DIV>  -->
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                  	  <tr height="130px">
				         <td width="150px">原始图片
				             <input type="button" value="更新" id="update"/>
				         </td>
				         <td >
				         <input type="hidden" value="${img}" name="imagesAddress" id="newPicture"/>
				         <input type="hidden" value="${path}" name="path" id="path"/>
				         <input type="hidden" value="${img}" name="oldImg" id="oldImg"/>
				         <img alt="${nav.navChineseName}" id="img" src="${pageContext.request.contextPath}/demo_images/detail/${path}/${img}">
				         </td>
				     </tr>
                </table>
<!-- 上传 -->
<div id="upload">
 <table>
    <tr>  
 <td style="width: 100px;">  
     <strong>上传图片</strong>  
     <input type="hidden" value="" name="suffix" id="suffix" />
     <input type="hidden" value="" name="fileName" id="fileName" />
 </td>  

 <td style="width: 225px;">  
     <input type="file" name="uploadFile" id="uploadFile" onchange="checkFile();"/>  
 </td>  

</tr>  

<tr>  

 <td style="width: 100px;"></td>  

 <td style="width: 225px;">  
     <span class="red">（图片格式：jpg,jpeg,bmp,gif,png;</span><br/>  
 </td> 
</tr>
<tr><td><input type="button" id="image_upload" value="上传"/></td></tr>
</table>
</div>
 <!-- 上传结束 -->            
            </div>
        </div>
        
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <input type="image" src="${pageContext.request.contextPath}/style/images/save.png"/>
            <a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/style/images/goBack.png"/></a>
        </div>
    </s:form>
</div>

</body>
</html>
