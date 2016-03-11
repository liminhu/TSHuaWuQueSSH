<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%--request.getAttribute()方法返回request范围内存在的对象，
而request.getParameter()方法是获取http提交过来的数据。 
--%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="<%=path%>/js/jquery-2.1.1.js"></script>
    <link rel="Shortcut Icon" href="./demo_images/hwq.ico" />
    <title>花无缺花艺空间设计室-后台管理入口</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <style type="text/css">
 
*{overflow:hidden; font-size:12pt; }
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(<%=path%>/images/loginImages/bg.gif);
	background-repeat: repeat-x;
}
  #mytable{
   float:left;
   margin-left: 80px;
  }
  
  
a{
   float:left;
   color:red;
 }
 
 a:hover{
   color:#00f;
 }
 
 #result{
   color:#00f;
 }
  </style>
 
  <script type="text/javascript">
  $(document).ready(function() { 
     
      $("#submitButton").click(function(){
      if(form1.loginAccount.value==""){
          alert("账号不能为空！");
          return;
      }
      if(form1.password.value==""){
          alert("密码不能为空！");
          return;
      }
      if(form1.code.value==""){
         alert("验证码不能为空！");
         return;
      }
  /*     if(form1.code.value != $("#real_code").value){
         alert($("#real_code").value+"验证码不正确！");
         return;
      } */
      form1.submit();
    });
    
    
    $("#click").click(function(){
       var str=new Date().getTime();
         $("#codeimg").attr("src","<%=path%>/code.jsp?time="+str);
         return false;
     });
   
          $(":input").css("border","2px solid #C0C1C6");
        
	      $("#loginAccount").focus(function(){
	          $("#loginAccount").css("border","2px solid #598EB9");
	      });
	      
	      
	      
	       $("#password").focus(function(){
	          $("#password").css("border","2px solid #598EB9");
	      });
	      
	        $("#code").focus(function(){
	          $("#code").css("border","2px solid #598EB9");
	      });

	      $("#loginAccount").blur(function(){  //失去焦点
              $("#loginAccount").css("border","1px solid #C0C1C6");
          });
          
          
            $("#password").blur(function(){
	            $("#password").css("border","1px solid #C0C1C6");
	      });
          
            $("#code").blur(function(){
	             $("#code").css("border","1px solid #C0C1C6");
	      });
          
          
     
     $("#loginAccount").click(function(){
             $("#result").hide();
         });
     $("#code").click(function(){
             $("#result").hide();
      });
   
     $("#click").click(function(){
           $("#result").hide();
      });
      
       $("#password").click(function(){
           $("#result").hide();
      });
    
  });
  </script>
  
 </head>
<body>
    <form action="user_login.action" method="post" name="form1" target=_top>
    <table width="100%" height="100%" border="0" cellpadding="0">      
      <tr ><td height="20px" align="center"><b><font color="red" size="20px">当前位置：唐山花无缺-管理员后台入口</font></b></td></tr> 
    <tr>
      <td>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
        <td height="561" style="background:url(<%=path%>/images/loginImages/lbg.gif)">
         <table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
           <tr><td height="238" style="background:url(<%=path%>/images/loginImages/login01.jpg)">&nbsp;</td>
           </tr>
           <tr>
              <td height="190"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="208" height="190" style="background:url(<%=path%>/images/loginImages/login02.jpg)">&nbsp;</td>
                <td width="518" style="background:url(<%=path%>/images/loginImages/login03.jpg)">
                <table id="mytable" width="320px" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="50px" height="50" style="float:right"><img src="<%=path%>/images/loginImages/user.gif" width="30" height="30"></td>
                    <td width="50px" height="50" >账号:</td>
                    <td width="231px" height="50"><input type="text" name="userName" id="loginAccount" style="width:164px; height:32px; line-height:34px; background:url(<%=path%>/images/loginImages/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; font-family:Verdana, Geneva, sans-serif;"></td>
                  </tr>
                  <tr>
                    <td height="50" width="50px" style="float:right"><img src="<%=path%>/images/loginImages/password.gif" width="28" height="32"></td>
                    <td height="50">密码:</td>
                    <td height="50"><input type="password" name="password" id="password"  style="width:164px; height:32px; line-height:34px; background:url(<%=path%>/images/loginImages/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; "></td>
                  </tr>
               
                   
                  <tr>
                    <td colspan="2" height="50" width="105">
                    <input type="hidden" name="real_code" id="real_code" value=""> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;验&nbsp;证&nbsp;码:</td>
                    <td width="50"><input name="code" id="code"  size='10' type="text" style="width:164px; height:32px; line-height:34px; background:url(<%=path%>/images/loginImages/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; font-family:Verdana, Geneva, sans-serif;">
                    </td>
                  </tr>
                  
                   <tr> <td colspan="2" ></td>
                        <td> <div id="result">
                        <s:fielderror>
                           <s:param>login</s:param>
                        </s:fielderror></div></td>
                  </tr>
                  <tr>
                    <th  colspan="2" height="50" id="ajax">&nbsp;<img name="codeimg" id="codeimg" src="<%=path%>/code.jsp" ></th>    
                    <th height="50" width="100"> <a href="#" id="click">&nbsp;点击,换一张</a></th>
                  </tr>
                   
                  <tr align="center">
                    <td height="60"><input type="button" value="登录" id="submitButton"/></td>
                    <td height="40"><input type="reset" name="reset" value="重置"></td>
                  </tr>
                </table>
                </td>
              <td width="214" style="background:url(<%=path%>/images/loginImages/login04.jpg)" >&nbsp;</td>
            </tr>
            </table>
            </td>
          </tr>
           <tr>
            <td height="133" style="background:url(<%=path%>/images/loginImages/login05.jpg)">&nbsp;</td>
          </tr>
        </table>
        </td>
       </tr>
     </table>
    </td>
   </tr>
  </table>
  </form>
</body>
</html>













