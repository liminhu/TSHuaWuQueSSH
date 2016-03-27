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
		<div class="inner-banner clear" style="background:url('./demo_images/detail/lzyhy/${detail.defaultBigImg}') no-repeat center 0;">
</div>
</div>
<div class="subnav">
	<div class="ably">
        	<div class="ably-tit" style="width: 150px; height: 48px">&nbsp;${nav.navChineseName}</div>
	</div>
		<ul>
		    <s:iterator value="#request.childrenNav" status="st">
		         <s:hidden name="navigationId"></s:hidden>
                <li><a href="${navLink}?navEnglishName=${navEnglishName}">${navChineseName}&nbsp;/</a></li>
            </s:iterator>
        </ul>
        <hr/>
</div>


<script>
$(function(){
  $(".header .menu ul li").eq(4).addClass("hover");
});

$(".subnav li").click(function(){
	var i = $(this).index();
	$(this).addClass("bs").siblings("li").removeClass("bs");

});
</script>	

 <div class="inner-main clear">

        <div class="news-boxs clear neiye">
            <div class="top">
                <p class="p1">英伦美家软装之——样板间软装</p>
				<p class="p2">&nbsp;</p>
            </div>
			<div class="new_con">
			  <s:iterator status="st" value="#request.images" id="name"> 
				<p><br/></p>
				<p style="text-align: center">
				<img src="./demo_images/detail/lzyhy/<s:property value="name"/>" /></p>
				<p style="text-align: center">
				&nbsp;</p>
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
