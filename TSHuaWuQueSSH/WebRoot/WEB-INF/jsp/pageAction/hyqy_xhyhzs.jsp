<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%@ include file="/WEB-INF/myheadView.jspf" %>
<script src="./demo_js/jquery.ZoomPic.js" type="text/javascript" charset="utf-8"></script>
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
		<div class="inner-banner clear" style="background:url('./demo_images/detail/hyqy/${detail.defaultBigImg}') no-repeat center 0;">
    </div>
</div>
<div class="subnav">
		<div class="ably">
        	<div class="ably-tit" style="width: 160px; height: 48px">&nbsp;花言巧语</div>
        </div>
        <ul>
            <s:iterator value="#request.childrenNav" status="st">
                <li><a href="${navLink}?navEnglishName=${navEnglishName}">${navChineseName}&nbsp;/</a></li>
            </s:iterator>
        </ul>
        <hr/>
</div>


<script>
$(function(){
  $(".header .menu ul li").eq(3).addClass("hover");
});

   $(".subnav li").click(function(){
	var i = $(this).index();
	$(this).addClass("bs").siblings("li").removeClass("bs");
});
</script>	
	
  <div class="inner-main clear">
        <div class="main-con w1002">
        <p style="text-align: center;"><strong><br/></strong></p>
		<p style="text-indent: 153.5pt"><b><span style="font-size: 8pt">鲜切花的养护知识</span></b><span lang="EN-US"><br>
		</span>　　<span lang="EN-US">&nbsp;&nbsp;&nbsp; </span>　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		　<span lang="EN-US"><img border="0" src="./demo_images/detail/hyqy/${images[0]}" width="440" height="660"><br>
		</span>注意：<span lang="EN-US">1.</span>所有花材进货到店里之后都要剪根生水，夏天每天早晚一次剪根换水，冬天一天一次，也可以隔天一次。所有花材叶材不可以暴晒，不可以被风吹。保持空气流通，水质干净。<span lang="EN-US">&nbsp;2.</span>换水之时倾斜剪根<span lang="EN-US">1-2</span>公分即可。（所有花材通用）。不可以有花杆的叶子浸泡到水里，防止烂根。<span lang="EN-US"><br>
		<br>
		<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></span><span lang="en-us"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span style="font-size: 8pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
		</b></span><b><span style="font-size: 8pt">水量</span></b><span lang="EN-US"><br>
		</span>　　　<span lang="EN-US"><br>
		</span>玫瑰：放容器的二分之一水。<span lang="EN-US"><br>
		</span>百合：放容器三分之一或者二分之一水<span lang="EN-US">,</span>如遇脱水可以适当加多一些水。促使百合开放的方法<span lang="EN-US">:</span>花头勤喷水并沐浴阳光<span lang="EN-US">;</span>给水加温<span lang="EN-US">,</span>手伸进去舒服的程度<span lang="EN-US">;</span>剪根倾斜度加大<span lang="EN-US">,</span>冬天可以放到暖气旁边<span lang="EN-US">.</span>反之可以控制花期延长<span lang="EN-US"><br>
		</span>康乃馨：放<span lang="EN-US">5</span>公分左右的水<span lang="EN-US">,</span>百合开放的花头一律朝外<span lang="EN-US">.<br>
		</span>太阳花：第一次拿回来的太阳花不可以剪根。发现有烂根之后在剪掉。放<span lang="EN-US">10</span>公分的水即可。<span lang="EN-US"><br>
		</span>剑兰：剑兰根部的叶子要清理干净，泥土要清洗掉<span lang="EN-US">,</span>放容器三分之一水。<span lang="EN-US"><br>
		</span>紫罗兰<span lang="EN-US">:</span>花瓣绝对不可以喷水<span lang="EN-US">,</span>放三分之一水<span lang="EN-US">.<br>
		</span>金鱼草<span lang="EN-US">:</span>同紫罗兰<span lang="EN-US">.<br>
		</span>菊花<span lang="EN-US">:</span>花瓣不可喷水<span lang="EN-US">,</span>放<span lang="EN-US">10</span>公分水即可<span lang="EN-US">.<br>
		</span>满天星<span lang="EN-US">:</span>花头不可以喷水<span lang="EN-US">,</span>容易变黄<span lang="EN-US">,</span>变黑<span lang="EN-US">.</span>用塑料袋罩上<span lang="EN-US">,</span>根部放<span lang="EN-US">10</span>公分水即可<span lang="EN-US">.<br>
		</span>勿忘我<span lang="EN-US">:</span>放<span lang="EN-US">10</span>公分左右水<span lang="EN-US">.</span>不放水也可以做干花<span lang="EN-US">.<br>
		</span>红掌<span lang="EN-US">:</span>可以直接用营养管<span lang="EN-US">,</span>也可以去掉营养管剪根放十几公分<span lang="EN-US">.<br>
		</span>洋桔梗<span lang="EN-US">:</span>放三分之一水即可<span lang="EN-US">.<br>
		</span>天堂鸟<span lang="EN-US">:</span>放容器三分之一水<span lang="EN-US">.<br>
		</span>黄金鸟<span lang="EN-US">:</span>同天堂鸟<span lang="EN-US">.<br>
		</span>千日红<span lang="EN-US">:</span>可以做干花<span lang="EN-US">,</span>放<span lang="EN-US">5-10</span>公分水即可<span lang="EN-US">.<br>
		</span>蛇鞭菊<span lang="EN-US">:</span>不易脱水<span lang="EN-US">,</span>少放水<span lang="EN-US">,10</span>公分左右水即可<span lang="EN-US">.<br>
		</span>跳舞兰<span lang="EN-US">:</span>不用拆掉包装<span lang="EN-US">,</span>带着棉球养护即可<span lang="EN-US">,</span>放<span lang="EN-US">10</span>公分水<span lang="EN-US">.<br>
		<br>
		<br>
		</span>注二<span lang="EN-US">:</span>花店里拿货需要备一部分货<span lang="EN-US">,</span>需要摆台的<span lang="EN-US">,</span>摆台的玫瑰打刺之后花需要整理干净<span lang="EN-US">.</span>同类花材放到一起花头保持摆放平行最好<span lang="EN-US">,</span>比如玫瑰放一起<span lang="EN-US">,</span>百合一起<span lang="EN-US">,</span>草花一起<span lang="EN-US">.&nbsp;</span>因为看上去会很整洁<span lang="EN-US">.</span>备存的货放到一个大桶即可<span lang="EN-US">.</span>玫瑰的备货不用打刺<span lang="EN-US">.<br>
		<span style="font-size: 8pt"><br>
		<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></span>
		</span><b><span style="font-size: 8pt">叶材的养护</span></b></p>
		<p style="text-indent: 90.0pt">
		<img border="0" src="./demo_images/detail/hyqy/${images[1]}" width="399" height="600"></p>
		<p style="text-indent: 90.0pt"><span lang="EN-US"><br>
		</span>凡是叶材类通用养护方法<span lang="EN-US">:1,</span>在地上铺一张大纸板或者塑料袋<span lang="EN-US">,</span>叶材平铺上面<span lang="EN-US">,</span>喷水即可<span lang="EN-US">.</span>每天翻一次<span lang="EN-US">,</span>防止发黄<span lang="EN-US">,</span>腐烂<span lang="EN-US">.2,</span>也可以先在水里捞一下在放到纸箱子里养护<span lang="EN-US">,</span>时刻保持湿度即可<span lang="EN-US">. 
		3,</span>也可以使用下面的方法<span lang="EN-US">,</span>使用以下方法的时候叶子剪不剪根都可以<span lang="EN-US">,</span>如果有的叶子严重脱水则需要剪根生水<span lang="EN-US">.</span>放水的时候以容器为参照物<span lang="EN-US">.<br>
		</span>栀子叶：放<span lang="EN-US">10</span>公分水即可<span lang="EN-US">.<br>
		</span>黄莺<span lang="EN-US">:</span>需要把杆上的叶子清理掉<span lang="EN-US">,</span>用报纸把头部包起来<span lang="EN-US">,</span>防止脱水变干<span lang="EN-US">.<br>
		</span>水晶草<span lang="EN-US">:</span>放<span lang="EN-US">10</span>公分左右水<span lang="EN-US">,</span>不放水也可以做干花<span lang="EN-US">.<br>
		</span>蓬莱松<span lang="EN-US">:</span>头部用报纸包上<span lang="EN-US">,</span>喷水即可<span lang="EN-US">,</span>根部放<span lang="EN-US">10</span>公分左右水<span lang="EN-US">.<br>
		</span>散尾<span lang="EN-US">:</span>放<span lang="EN-US">10</span>公分水即可<span lang="EN-US">.<br>
		</span>春雨<span lang="EN-US">:</span>同散尾<span lang="EN-US"><br>
		</span>龟背<span lang="EN-US">:</span>同散尾<span lang="EN-US">.</span>注<span lang="EN-US">:</span>以上三类叶材属于片状面状的<span lang="EN-US">,</span>使用上面的第二种方法即可<span lang="EN-US">.</span>面状叶材不易压变形<span lang="EN-US">.<br>
		</span>排草<span lang="EN-US">:</span>头部用报纸包起来<span lang="EN-US">,</span>分布放<span lang="EN-US">10</span>公分左右水即可<span lang="EN-US">.<br>
		</span>叶上花（高山积雪）<span lang="EN-US">:</span>头部用报纸包起来<span lang="EN-US">,</span>放三分之一水<span lang="EN-US">.<br>
		</span>叶上黄金<span lang="EN-US">:</span>同上<span lang="EN-US">,<br>
		</span>常青藤<span lang="EN-US">:</span>用纸包起来<span lang="EN-US">,</span>喷水即可<span lang="EN-US">,</span>根部放<span lang="EN-US">10</span>公分左右水<span lang="EN-US">,</span>也可以整个泡水里<span lang="EN-US">,</span>但是时间不可以超过三天<span lang="EN-US">.<br>
		</span>唐棉<span lang="EN-US">:</span>剪根并且花头用报纸包上<span lang="EN-US">,</span>根部放三分之一水即可<span lang="EN-US">.<br>
		</span>山苏（鸟巢厥）<span lang="EN-US">:</span>剪根放三分之一水<span lang="EN-US">.<br>
		</span>叶兰<span lang="EN-US">&nbsp;</span>：剪根放<span lang="EN-US">10</span>公分左右水即可<span lang="EN-US"><br>
		</span>浦棒<span lang="EN-US">(</span>水烛叶）<span lang="EN-US">:</span>剪根放三分之一水即可<span lang="EN-US"><br>
		</span>龙柳：剪根放三分之一水<span lang="EN-US">,</span>不放水可以直接做干花<span lang="EN-US"><br>
		&nbsp;</span></p>
	    <p><img border="0" src="./demo_images/detail/hyqy/${images[2]}" width="440" height="660"></p>
		<p align="center" style="text-align:center"><span lang="EN-US">&nbsp;</span></p>
		<p align="center" style="text-align:center"><strong>
		<span style="font-size: 10.0pt; font-family: 宋体; color: #4BACC6">
		花瓣也许会离开花朵，</span></strong></p>
		<p align="center" style="text-align:center"><strong>
		<span style="font-size: 10.0pt; font-family: 宋体; color: #4BACC6">
		但是花香会永留我们心中，</span></strong></p>
		<p align="center" style="text-align:center"><strong>
		<span style="font-size: 10.0pt; font-family: 宋体; color: #4BACC6">
		永远和我们的记忆、我们的故事交织在一起，</span></strong></p>
		<p align="center" style="text-align:center"><strong>
		<span style="font-size: 10.0pt; font-family: 宋体; color: #4BACC6">
		成为我们生命中的一部分。</span></strong><br/></p><p style="text-align:center">
		&nbsp;&nbsp; </p>
		<p><br/> </p><p><br/></p>        
		</div>
</div>

    <script type="text/javascript">
         $(".subnav ul li").eq('${selected}').addClass("hover");
     </script>
   <%@ include file="/WEB-INF/myfooterView.jspf" %>
  </body>
</html>
