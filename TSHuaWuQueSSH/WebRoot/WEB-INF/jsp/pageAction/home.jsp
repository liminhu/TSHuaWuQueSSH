<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <%@ include file="/WEB-INF/myheadView.jspf" %>
  <body>
  <%@ include file="/WEB-INF/mycommon.jspf" %>
  <div class="banner">
	<div class="bd">
		<div class="tempWrap" style="overflow: hidden; position: relative; width: 1423px">
			<ul class="picList" style="width: 11384px; position: relative; overflow: hidden; left: -8538px; margin: 0px; padding: 0px">
			     <s:generator val="#application.page.firstBlockImgs" separator="," id="firstImgs"> </s:generator>  
                  <s:iterator status="st" value="#request.firstImgs" id="name">   
                    <li style="float: left; width: 1423px; background: url('demo_images/index/<s:property value="name"/>') no-repeat 50% 0%">
				        <a target="_blank" href="index.jsp"></a>
			  		</li>
                  </s:iterator>
                  
                  <s:generator val="#page.firstBlockImgs" separator="," id="firstImgs"> </s:generator>  
                  <s:iterator status="st" value="#request.firstImgs" id="name">   
                    <li style="float: left; width: 1423px; background: url('demo_images/index/<s:property value="name"/>') no-repeat 50% 0%">
				        <a target="_blank" href="index.jsp"></a>
			  		</li>
                  </s:iterator>
			</ul>
		</div>
	</div>
	<div class="hd">
		<a class="next"></a>
		<ul>
			<li class="">1</li>
			<li class="">2</li>
			<li class="">3</li>
			<li class="">4</li>
			<li class="">5</li>
			<li class="on">6</li>
		</ul>
		<a class="prev"></a>
	</div>
  </div>
    
    
  <div class="body-wrap">
	<div class="lybt">
		<img src="./demo_images/index/buss.jpg" alt="">
	</div>
	<div class="syybk">
		<div class="syybkdb">
			<div class="syyzb">
				<div class="tpqh">
					<ul>
						<li></li>
						<li>花艺集锦</li>
						 <li>花艺集锦</li>
						  <li></li>
					</ul>
				</div>
				<div class="ser-box ">
					<div class="slideBox" id="slideBox1">
							<div class="bd">
							<ul>
                              <li style="display: none;">
                              <img src="./demo_images/index/${page.secondBlockImg}"></li> 
							</ul>
						</div>
					</div>
				</div>
			</div>
			

		<div class="xxb clear">
			<div class="bd">
				<div class="tempWrap" style="overflow: hidden; position: relative; width: 1032px; margin-top: 15px;">
					<ul style="width: 2580px; position: relative; overflow: hidden; left: -258px; margin: 0px; padding: 0px;">
						
 <s:iterator status="st" value="#list1" id="name">  						
						<li style="float: left; width: 234px; padding: 0px" class="clone">
						<a href="${imageLink}?navEnglishName=${navEnglishName}">
						<img src="./demo_images/index/1/${image}" width="238" height="170" alt=""></a>
          				<div class="bjbg">
							<p class="bjm">	<a href="${imageLink}?navEnglishName=${navEnglishName}">${moduleChineseName}</a></p>
							<p class="xxnr"><a href="${imageLink}?navEnglishName=${navEnglishName}">${introduce}</a></div>
						</li>
</s:iterator>
						
						
					
					</ul>
			  </div>
			</div>
			<div class="btn">
				<a class="prev" href="javascript:void(0)">&lt;</a>
				<a class="next" href="javascript:void(0)">&gt;</a>
   			</div>
		</div>
	</div>
</div>
    <div class="index_bg1">
	<div class="FloralCollection">
		<img src="demo_images/index/img002.jpg" alt="">
    </div>
	<div class="prefecture">
		<ul>
			<li class="region">家居软装</li>
			<li>样板间软装</li>
			<li>酒店软装</li>
		</ul>
	</div>
	<div class="productbox" id="productbox0">
		<a class="prev" href="javascript:;"><img src="./demo_images/index/last-.png"></a>
		<a class="next" href="javascript:;"><img src="./demo_images/index/next.png"></a>
      	<div class="tempWrap" style="overflow: hidden; position: relative; width: 940px">
			<div class="bd" style="width: 2820px; position: relative; overflow: hidden; left: -940px; margin: 0px; padding: 0px">
				<ul class="clear clone" style="float: left; width: 940px">
	 <s:iterator status="st" value="#list2" id="name">				
					<li>
					<a href="${imageLink}?navEnglishName=${navEnglishName}">
             		<img src="./demo_images/index/2/${image}" width="221" height="173"/>
             			<p>${introduce}</p>
             		</a>
             		</li>
      </s:iterator>       		
				</ul>
				<ul class="clear" style="float: left; width: 940px">
				 <s:iterator status="st" value="#list2" id="name">				
					<li>
					<a href="${imageLink}?navEnglishName=${navEnglishName}">
             		<img src="./demo_images/index/2/${image}" width="221" height="173"/>
             			<p>${introduce}</p>
             		</a>
             		</li>
      </s:iterator>    
				</ul>
				<ul class="clear clone" style="float: left; width: 940px">
				 <s:iterator status="st" value="#list2" id="name">				
					<li>
					<a href="${imageLink}?navEnglishName=${navEnglishName}">
             		<img src="./demo_images/index/2/${image}" width="221" height="173"/>
             			<p>${introduce}</p>
             		</a>
             		</li>
      </s:iterator>    
				</ul>
			</div>
		</div>
	</div>
	<div class="productbox hide" id="productbox1">
		<a class="prev" href="javascript:;"><img src="./demo_images/index/last-.png"></a>
		<a class="next" href="javascript:;"><img src="./demo_images/index/next.png"></a>
      	<div class="tempWrap" style="overflow: hidden; position: relative; width: 940px">
			<div class="bd" style="width: 2820px; position: relative; overflow: hidden; left: -940px; margin: 0px; padding: 0px">
				<ul class="clear clone" style="float: left; width: 940px">
			<s:iterator status="st" value="#list3" id="name">				
					<li><a href="${imageLink}?navEnglishName=${navEnglishName}">
             		<img src="./demo_images/index/3/${image}" width="235" height="167">
             		<p>${introduce}</p></a></li>
			</s:iterator>
				</ul>
				<ul class="clear" style="float: left; width: 940px">
			<s:iterator status="st" value="#list3" id="name">				
					<li><a href="${imageLink}?navEnglishName=${navEnglishName}">
             		<img src="./demo_images/index/3/${image}" width="235" height="167">
             		<p>${introduce}</p></a></li>
			</s:iterator>
				</ul>
				<ul class="clear clone" style="float: left; width: 940px">
			<s:iterator status="st" value="#list3" id="name">				
					<li><a href="${imageLink}?navEnglishName=${navEnglishName}">
             		<img src="./demo_images/index/3/${image}" width="235" height="167">
             		<p>${introduce}</a></li>
			</s:iterator>
				</ul>
			</div>
		</div>
	</div>
	<div class="productbox hide" id="productbox2">
		<a class="prev" href="javascript:;"><img src="./demo_images/index/last-.png"></a>
		<a class="next" href="javascript:;"><img src="./demo_images/index/next.png"></a>
      	<div class="bd">
			<ul class="clear">
				<s:iterator status="st" value="#list4" id="name">	
				<li><a href="${imageLink}?navEnglishName=${navEnglishName}">
             	<img src="./demo_images/index/4/${image}" width="293" height="235">
             	<p>${introduce}</a></li>
				</s:iterator>
			</ul>
			
		</div>
	</div>
</div>
  </div>
  <script type="text/javascript">
  $(function(){
    $(".header .menu ul li").eq(0).addClass("hover");
  });
  </script>
       <%@ include file="/WEB-INF/myfooterView.jspf" %>
  </body>
</html>
