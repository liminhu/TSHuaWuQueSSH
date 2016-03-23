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
		<div class="inner-banner clear" style="background:url('./demo_images/detail/hyjj/${detail.defaultBigImg}') no-repeat center 0;">
    </div>
</div>

<div class="subnav">
  <div class="ably">
   <div class="ably-tit" style="width:136px">&nbsp;花艺集锦</div>
</div>
 <ul style=" width:682px;; margin:0 auto;">
   <s:iterator value="#request.childrenNav" status="st">
          <li><a href="${navLink}?navEnglishName=${navEnglishName}">${navChineseName}&nbsp;/</a></li>
    </s:iterator>
</ul>
<hr/>
</div>
<script>
    $(function(){
      $(".header .menu ul li").eq(2).addClass("hover");
  });
</script>      

<div class="inner-main clear">
        <div class="news-boxs clear neiye">
            <div class="new_con">
               <p><br/></p>

<s:iterator status="st" value="#request.images" id="name">   
    <p style="text-align: center">
				<img src="./demo_images/detail/hyjj/<s:property value="name"/>"/></p>
	<p style="text-align: center">&nbsp;</p>
</s:iterator>
             
				
          </div>
   </div>
</div>

    <script type="text/javascript">
         $(".subnav ul li").eq('${selected}').addClass("hover");
     </script>
   <%@ include file="/WEB-INF/myfooterView.jspf" %>
  </body>
</html>
