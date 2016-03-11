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

                                <div class="div" >
                    <div class="div1"><p>职位 : 驾驶员</p></div>
                    <div class="div2"><p>月薪:面议   学历:高中及以上</p></div>
                    <div class="div3">
                        <!-- <p class="p1">岗位职责 </p> -->
                        <p class="p2">
                         <p>岗位职责：负责公司货物运送，清点数量，以及车辆的日常保养和清洁。</p><p>任职资格：1：男性，熟悉唐山市路况，驾龄三年以上。2：无不良驾驶违章记录，具有较强的安全意识。</p><p>工作时间：8：00--18：00</p><p>联系电话：0315——2336628</p><p><br/></p>                    
                     
                 </div>
             </div>
                             <div class="div" >
                    <div class="div1"><p>职位 : 花艺师</p></div>
                    <div class="div2"><p>月薪:面议   学历:中专及以上学历</p></div>
                    <div class="div3">
                        <!-- <p class="p1">岗位职责 </p> -->
                        <p class="p2">
                         <p>岗位职责：鲜花日常护理，花束花盒设计，店面销售。<br/>任职资格：有花店工作经验，能独立完成花束，插花工作，有自创新思想文字功底好。<br/>工作时间：8:00--18:00</p><p>联系电话：0315——2337728</p>                    
                   
                 </div>
             </div>
             
         </div>

     </div>
 
 
    <script type="text/javascript">
         $(".subnav ul li").eq('${selected}').addClass("hover");
     </script>
   <%@ include file="/WEB-INF/myfooterView.jspf" %>
  </body>
</html>
