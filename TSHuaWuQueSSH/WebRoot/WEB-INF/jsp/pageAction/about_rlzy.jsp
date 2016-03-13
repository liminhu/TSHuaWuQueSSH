<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%@ include file="/WEB-INF/myheadView.jspf" %>
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
		<div class="inner-banner clear" style="background:url('./demo_images/45.jpg') no-repeat center 0;">
</div>
</div>

<script>
    $(function(){
      $(".header .menu ul li").eq(5).addClass("hover");
    });
</script>        

<div class="inner-main clear">
            <div class="main-con w1002 hr clear">

         <s:iterator status="st" value="#list" id="name">  	
                  <div class="div" >
                    <div class="div1"><p>职位 : ${position}</p></div>
                    <div class="div2"><p>月薪: ${monthSalary}</p></div>
                    <div class="div2"><p>学历: ${educationBackground}</p></div>
                    <div class="div3"><p class="p2">
                         <p>岗位职责：${responsibility}<br/><br/>任职资格：${qualifications}</p></div>
                    <div class="div2"><p>工作时间：${workTime}</p><p>联系电话：${connectTelephone}</p>                    
                 </div>
             </div>
         </s:iterator>    
         </div>

     </div>
 
 
    <script type="text/javascript">
         $(".subnav ul li").eq('${selected}').addClass("hover");
     </script>
   <%@ include file="/WEB-INF/myfooterView.jspf" %>
  </body>
</html>
