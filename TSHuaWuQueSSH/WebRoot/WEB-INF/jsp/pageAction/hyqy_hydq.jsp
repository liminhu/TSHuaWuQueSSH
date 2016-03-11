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
        <p style="text-align: center;">
		<strong>
		<img border="0" src="./demo_images/detail/hyqy/${images[0]}" width="600" height="486"><br/></strong></p><p style="text-align: center;">
		<strong style="font-weight: 400"><font face="微软雅黑" size="3">花语大全</font></strong></p>
		<p style="text-align: center;">
		&nbsp;</p>
		<h3 accuse="aContent" class="best-text mb-10" style="padding: 0px; margin: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		玫瑰花花色花语</h3>
		<pre style="color: rgb(0, 0, 0); font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">玫瑰（红）：热情、热爱着您　我爱你、热恋，希望与你泛起激情的爱；
玫瑰（蓝）：. 奇迹与不可能实现的事；
玫瑰（粉红）：感动、爱的宣言、铭记于心 、初恋，喜欢你那灿烂的笑容；
玫瑰（白）：天真、纯洁、尊敬、谦卑；
玫瑰（黄）：不贞、嫉妒,　欢乐, 高兴, 道歉。对于友情，黄玫瑰代表纯洁的友谊和美好的<a class="innerlink" style="cursor: pointer; text-decoration: none; color: rgb(70, 70, 70);" href="http://www.52zzl.com/songhua/zhufuyu/">祝福</a>，对于爱情，黄玫瑰就算是一种不祥之物了，因为它代表嫉妒失恋和消逝的爱，甚至是一种嫉恨的表达。在日本，黄玫瑰是分手的代表礼物代表再见，拒绝的爱；
玫瑰（紫）：忧郁.梦幻，爱做梦；
玫瑰（捧花）：幸福之爱；
玫瑰（橙）：羞怯，献给你一份神秘的爱；
玫瑰 (花苞): 美丽和青春；
玫瑰（橘）：欲望；
玫瑰 (红+白): 共有；
玫瑰 (红+黄): 快乐；
玫瑰（黑）　：你是恶魔，且为我所有；
玫瑰：纯洁的爱、美丽的爱情、美好常在；
红玫瑰：热恋、热情、热爱着你；
粉玫瑰：初恋、求爱、爱心与特别的关怀；
黄玫瑰：高贵、美丽或道歉；
橙玫瑰：富有青春气息、初恋的心情；
白玫瑰：天真、纯洁；
绿玫瑰：纯真简朴、青春长驻，我只钟情你一个；
蓝玫瑰：敦厚，善良；
黑玫瑰：高贵，神秘你是我的女神；
香宾玫瑰：梦幻。
<img border="0" src="./demo_images/detail/hyqy/${images[1]}" width="500" height="336">
<strong>玫瑰花花数花语

</strong>1朵：你是我的唯一 
2朵：世界上只有你和我 
3朵：I LOVE YOU 
4朵：誓言、承诺 
5朵：无悔 
6朵：顺利 
7朵：喜相逢 
8朵：弥补 
9朵：长相守、坚定 
10朵：十全十美 
11朵：一心一意的爱 
12朵：全部的爱 
13朵：暗恋 
14朵：骄傲 
15朵：守住你的人 
16朵： 一帆风顺 婚 
17朵：伴你一生 
18朵：青春美丽 
19朵：爱的最高点 
20朵：两情相爱 
21朵：最爱 
22朵：双双对对 
24朵：思念、纯洁的爱 
30朵：请接受我的爱 
33朵：三生三世 
36朵：我的爱只留给你 
40朵：誓死不渝的爱情 
48朵：挚爱 
50朵：无悔的爱 
51朵：我心中只有你 
66朵：我的爱永远不变 
99朵：天长地久 
100朵：白头偕老 
101朵：直到永远的爱 
108朵：求婚 
111朵：爱你一生一世 
365朵：天天爱你 
999朵：无尽的爱
1001朵: 直到永远</pre>
		<p style="padding: 0px; margin: 10px 0px; color: rgb(0, 0, 0); font-family: Tahoma, Helvetica, Arial, 宋体, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		<img border="0" src="./demo_images/detail/hyqy/${images[2]}" width="500" height="375"></p>
		<p style="text-align: left;">&nbsp;</p>
		<p style="text-align: left;">&nbsp;</p>
		<p>&nbsp;</p><p style="text-align: center;"><span style="color: rgb(75, 172, 198);"><strong>
		<font size="2">花瓣也许会离开花朵，</font></strong></span></p><p style="text-align: center;"><span style="color: rgb(75, 172, 198);"><strong>
		<font size="2">但是花香会永留我们心中，</font></strong></span></p><p style="text-align: center;"><span style="color: rgb(75, 172, 198);"><strong>
		<font size="2">永远和我们的记忆、我们的故事交织在一起，</font></strong></span></p><p style="text-align: center;"><span style="color: rgb(75, 172, 198);"><strong>
		<font size="2">成为我们生命中的一部分。</font></strong></span></p>
		<p><br/> </p><p><br/></p>        </div>

</div>

    <script type="text/javascript">
         $(".subnav ul li").eq('${selected}').addClass("hover");
     </script>
   <%@ include file="/WEB-INF/myfooterView.jspf" %>
  </body>
</html>
