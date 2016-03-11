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
		<div class="inner-banner clear" style="background:url('./demo_images/detail/hwq/${detail.defaultBigImg}') no-repeat center 0;">
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
  $(".header .menu ul li").eq(1).addClass("hover");
});

$(".subnav li").click(function(){
	var i = $(this).index();
	$(this).addClass("bs").siblings("li").removeClass("bs");

});
</script>	
   <div class="inner-main clear">
        <div class="main-con w1002">
        <p style="text-align: center;"><strong><br/></strong></p><p style="text-align: center;">
		<font face="微软雅黑" size="3"><strong style="font-weight: 400">谢谢您光顾 “唐山市 
		花无缺花店”</strong></font></p>
		<p style="text-align: center;">&nbsp;</p>
		<p style="text-align: center;"><font face="微软雅黑" size="3">
		<strong style="font-weight: 400">世界上有那么多花店，而你缺走进了我的……谢谢你！</strong></font></p>
		<p style="text-align: center;">&nbsp;</p>
		<p style="text-align: center;">&nbsp;</p><p style="text-align: center;">&nbsp;&nbsp;&nbsp; 
		<img border="0" src="./demo_images/detail/hwq/${images[0]}" width="400" height="534"></p>
		<p style="text-align: center;">&nbsp; &nbsp; &nbsp;</p><p><strong>&nbsp; &nbsp; </strong>
		<span style="font-size: 10pt">花无缺花店是唐山市一家以鲜花、仿生花（绢花）及绿色植物为主营项目的专业花店，二十多年来依靠雄厚的专业技术、超前的艺术水准、以诚信为本的经营理念在竞争激励的花艺行业顽强的生存、发展。在唐山市民心中建立了良好的口碑，享有盛誉。</span></p>
		<p><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></p>
		<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img border="0" src="./demo_images/detail/hwq/${images[1]}" width="400" height="291"></p>
		<p>&nbsp;</p>
		<p><span style="font-size: 10pt">&nbsp;&nbsp;&nbsp; 唐山市花无缺拥有城市
		中心位置的实体店并且配备有业内顶尖级花艺师，竭诚为您美好生活贡献力量！我们拥有国内外知名花卉基地的专供鲜花，能够快速、便捷、联动的为客户服务。</span></p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<img border="0" src="./demo_images/detail/hwq/${images[2]}" width="450" height="449"></font></p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p><font size="2">&nbsp;&nbsp;&nbsp; 唐山市花无缺</font><span style="font-size: 10pt">实现了线上线下零售、批发、专业设计等全方位的多重项目。具有强大的商品储备能力，对于突如其来的大型花事活动具有较强的技术承接力和人员调配力。在园林、绿化方面我们拥有国家级的一级二级等多种级别的园林绿化资质。并拥有一百多亩基地用于培育有根花卉。为承接城市，企事业单位等各项绿化业务奠定了坚实的基础。  
		</span>

</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
		</font><img border="0" src="./demo_images/detail/hwq/${images[3]}" width="600" height="400"></p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p><span style="font-size: 10pt">&nbsp;&nbsp;&nbsp; 花无缺首席花艺师于涛先生，李树芳女士自幼喜爱绘画，在步入花卉领域后孜孜研习参悟花朵植物之语言，用以绘画与花艺相结合的手法感悟体现花卉的自然之美。</span></p>
		<p><font size="2">&nbsp;&nbsp; </font><span style="font-size: 10pt">
		于涛先生追随众多国际级花艺大师研习花之奥秘，先后经历荷兰、法国、德国、新西兰、比利时、英国、美国、新加坡、台、港、花艺名师的培养与传授，后又得到亚洲杯冠军林惠里老师，美国国际花艺学院院长杰姆斯.莫瑞先生，世界杯冠军得主大卫.丹尼尔的亲自教授和悉心教导。刻苦研习不断创新在国内乃至国际花艺行业赢得了重要的一席之位。陶然于花花世界，留连忘返
		，自成风格。在国际、国内花艺大赛上频频获得各种奖项和成绩。</span></p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
		<img border="0" src="./demo_images/detail/hwq/${images[4]}" width="400" height="266"></font></p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p><span style="font-size: 10pt">&nbsp;&nbsp; 李树芳女士毕业于清华大学美术学院，擅于借助美术基础来实践创新，把建筑与雕塑的设计理念与花卉融为一体，走一条独立自主的花艺设计风格。</span></p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
		<img border="0" src="./demo_images/detail/hwq/${images[5]}" width="400" height="385"></font></p>
		<p>&nbsp;</p><p style="text-align: center;">
		<span style="color: rgb(75, 172, 198);"><strong><font size="2">以花为媒</font></strong></span></p><p style="text-align: center;"><span style="color: rgb(75, 172, 198);"><strong>
		<font size="2">过日子没有那么多跌宕起伏的剧情，</font></strong></span></p><p style="text-align: center;"><span style="color: rgb(75, 172, 198);"><strong>
		<font size="2">平淡真实中的一束花束，</font></strong></span></p><p style="text-align: center;"><span style="color: rgb(75, 172, 198);"><strong>
		<font size="2">就是最温馨妥帖的浪漫。</font></strong></span></p>
		<p style="text-align: center;">&nbsp;</p>
		<p>&nbsp;</p>
		<p><span style="font-size: 10pt">&nbsp;&nbsp;&nbsp; 唐山市花无缺在花艺领域已全方位的具备了非常雄厚的实力，我们的技能属一流水平，业务强项是大型场所的整体环境软装饰设计，如宾馆，酒店，卖场，居室，庆典、会议、展览等等。所涵盖范围与内容不仅限于几枝花草的堆放于排列，而是以艺术的视觉表现人文环境，使人们能够感受视觉上美的冲击与震撼。 
		</span>

</p><p><span style="font-size: 16px;"><br/></span>&nbsp; &nbsp;&nbsp;<br/></p><p style="text-align:center">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img border="0" src="./demo_images/detail/hwq/${images[6]}" width="556" height="372"></p><p><br/></p><p>
	
		</p>
		<p>
		<font size="2">&nbsp;</font></p><p><strong style="font-size: 10pt;">&nbsp; &nbsp;</strong><span style="font-size: 10pt;">花艺是花店的灵魂，而用心是花艺的灵魂。
		唐山市花无缺花店的前二十年，是以满足市场需求为生存目标，在市场经济环境下，许多连锁店如雨后春笋般，出现在我们的生活之中。现在进入成熟期，花无缺把花店开到了最热闹最繁华最高端的街区，通过针对顾客消费群的差异性，把产品多元化，用不同种类、不同空间进行配组，让不同的顾客在愉悦和惊喜中完成体验式消费。</span><font size="2"><br/>
		</font></p><p>&nbsp;</p><p style="text-align:center">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img border="0" src="./demo_images/detail/hwq/${images[7]}" width="389" height="499"></p><p>&nbsp;</p>
		<p><font size="2"> <br/> </font> </p><p><strong><font size="2">&nbsp; &nbsp; 
		</font></strong><font size="2">唐山市花无缺花店用打磨百年品牌的方式来积淀自己，不同于其他互联网领域的电商以及O2O模式，也不同于所谓的互联网思维，它并不是——采取低廉或免费策略占领市场，以图获得海量的用户数后实现盈利。它一直踏踏实实经营着实体店，互联网在传播其理念和品牌内涵时当然也会起到一定的推广作用，但是线下店铺能让客户更好地体验和接受方便的本地服务。</font></p>
		<p>&nbsp;</p>
		<p><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</font></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img border="0" src="./demo_images/detail/hwq/${images[8]}" width="280" height="453"><br/></p><p style="text-align:center">
		&nbsp;&nbsp; </p><p>&nbsp;</p><p><strong><font size="2">&nbsp; &nbsp;任</font></strong><font size="2">何一个经典品牌，都不可能是投机取巧哗众取宠可以树立起来的，一定是经过漫长岁月的洗礼，经过一代又一代人的见证检验，一点一滴铸就的。它的骨子里自有一股作为一家老牌花店的骄傲，更多了一份历风沐雨后的谦和与地气，一种低调的奢华，像是一个成熟男人从举手投足每一处细节中发散出来的优雅。</font></p><p><br/> </p><p style="text-align:center">
		&nbsp;</p><p>&nbsp;</p><p style="text-align: center;"><span style="color: rgb(75, 172, 198);"><strong>
		<font size="2">花瓣也许会离开花朵，</font></strong></span></p><p style="text-align: center;"><span style="color: rgb(75, 172, 198);"><strong>
		<font size="2">但是花香会永留我们心中，</font></strong></span></p><p style="text-align: center;"><span style="color: rgb(75, 172, 198);"><strong>
		<font size="2">永远和我们的记忆、我们的故事交织在一起，</font></strong></span></p><p style="text-align: center;"><span style="color: rgb(75, 172, 198);"><strong>
		<font size="2">成为我们生命中的一部分。</font></strong></span></p>
		<p style="text-align: center;">&nbsp;</p>
		<p style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<img border="0" src="./demo_images/detail/hwq/${images[9]}" width="448" height="339"><font size="2"><br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</font> </p><p><font size="2">&nbsp; &nbsp; 幸福，是要寻找、要发现、要争取、要付出、要创造；唯有如此，幸福，才会来敲门，才会延续，才能永恒。【
		唐山市花无缺】也深信这一份感悟同样会传递给每一位和我们一样热爱生活热爱美学的朋友和客户，更会伴着我们用每一分每一秒每一花每一草编织的作品，传递到千家万户。</font></p><p><br/> </p><p><br/></p>       
   </div>
</div>
  
    <script type="text/javascript">
         $(".subnav ul li").eq('${selected}').addClass("hover");
     </script>
   <%@ include file="/WEB-INF/myfooterView.jspf" %>
  </body>
</html>
