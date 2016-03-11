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
        <h2 class="rich_media_title" id="activity-name" style="margin: 0px 0px 14px; padding: 0px 0px 10px; font-weight: 400; font-size: 24px; line-height: 1.4; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(231, 231, 235); color: rgb(0, 0, 0); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;" align="center">
		彭丽媛：我必须是你近旁的一株木棉</h2>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="left">
		<strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;">
		<span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; font-size: 14px;">
		“我如果爱你，绝不像攀援的凌霄花，借你的高枝炫耀自己……我必须是你近旁的一株木棉，作为树的形象和你站在一起……”</span></strong><br>
		9·3阅兵的现场，红地毯的一端，彭丽媛穿着一袭大红色的连衣裙，和习大大一起接见外宾，端庄大方。<br>
		让人想起了这首《致橡树》。<br>
		阅兵式之后，流传着一句话，“女人，要么像彭丽媛，让老公走到哪儿领到哪儿！要么像朴槿惠，自己想上哪儿就上哪儿。”<br>
		其实，彭丽媛也是“自己想上哪儿就上哪儿”啊！<br>
		除了“习夫人”以外，她还有众多头衔：中国著名女高音歌唱家、中国第一位民族声乐硕士、国家一级演员、解放军艺术学院院长、中国音乐学院客座教授、全国政协委员……<br>
		她并不是“妻凭夫贵”，不是“攀援的凌霄花”，而是一株火红的木棉，与习大大这棵高大的橡树站在一起。</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[0]}" width="500" height="435"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[1]}" width="500" height="500"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="left">
		1962年11月，彭丽媛生于山东菏泽郓城县一个普通家庭。彭丽媛的父亲叫彭龙坤，高中生，早年当过夜校校长。彭丽媛的母亲早年是县剧团的演员。家里有3个孩子，彭丽媛是老大，她的童年时光很多是在县剧团的牛车上度过的。妈妈随团到乡下去演出，她也跟着坐剧团的牛车“四处漂泊”，经常饥一顿饱一顿。<br>
		9岁那年，彭丽媛父亲被打成右派和反革命。身为老大的她早早就学会“懂事”和“刻苦”。<br style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;">
		<img border="0" src="./demo_images/detail/hyqy/${images[2]}" width="500" height="500"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="left">
		1978年，16岁的彭丽媛从郓城来到济南，在山东五七艺术学校（1978年底改为山东艺术学院）中专部读书，进入山东艺术学院学习，彭丽媛真正走上了艺术之路。1980年，彭丽媛代表山东济宁艺术学校到北京参加文艺汇演，表现优秀，得以出访欧洲六国。同年，她被招入济南军区前卫歌舞团，成为军队的一名文艺战士，后考入中国音乐学院声乐系攻读大专，大学本科以及硕士研究生。<br>
		1981年，彭丽媛拜声乐教育家金铁霖教授为师。金铁霖曾说，彭丽媛是最勤奋的学生，练功练歌，从来不睡午觉。</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[3]}" width="500" height="500"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		1982年，经过重重挑选，彭丽媛参加中央电视台第一届“春节联欢晚会”的演出，演唱了歌曲《在希望的田野上》和《我爱你，塞北的雪》，开始为中国观众所熟识。 
		</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		1983年，她出了人生的第一张专辑——《彭丽媛（女高音）独唱歌曲选》。彭丽媛给人的印象一直是谦虚和端庄，总是笑眯眯的，和她共过事的人都非常喜欢她的随和，也都知道她的勤奋。</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[4]}" width="500" height="500"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		1984年，彭丽媛正式由前卫歌舞团调入总政歌舞团。1985年，彭丽媛获文化部举办的第一届“全国聂耳、星海声乐作品比赛‘民族唱法组’”金牌。后又因主演中国大型歌剧《白毛女》获第三届“梅花奖” 
		。<br>
		1984年，彭丽媛被正式调入总政歌舞团。当时，是中国明星大“走穴”的时期。有人挣了几十万、几百万，而彭丽媛还在坚守着她的音乐梦想，每月领着几百元的工资。真正的艺术家要耐得住寂寞，彭丽媛的“专注”也是成就她艺术巅峰的重要原因。</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[5]}" width="500" height="500"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		1985年7月，彭丽媛加入中国共产党，并被推选为中国音乐家协会最年轻的理事。一连20多年，她一直是春节晚会的固定出场角色。从1980年开始，算起来，彭丽媛曾经到50多个国家和地区演出，将中国歌剧和民族声乐推向国际舞台。1990年，她就先后在北京、上海、广州、新加坡举办了大型独唱音乐会，时任新加坡总理王鼎昌先生前来观看并给予了高度评价。<br>
		1986年，彭丽媛经人介绍认识了习近平。当时，彭丽媛已经是全国有名的歌唱家，习近平是厦门市副市长。照理说，彭丽媛的条件并不比习近平差，甚至能找到更有钱有势的人。<br>
		现在女孩相亲，都把自己捯饬得美美的，可彭丽媛不一样。见面那天，她有意考察一下对方是否只看重外貌，特意穿了肥大的军裤，谁知道习近平穿得一样朴素。</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[6]}" width="500" height="500"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		和一些希望女儿嫁有钱人的父母不同，当时，彭丽媛的父母并不像把女儿嫁给高干子弟，担心攀高结贵会让女儿受委屈。<br>
		面对阻力，习近平安慰彭丽媛说：“我父亲也是农民的儿子。我家的孩子找的对象都是平民的孩子。我会向你父母解释清楚，他们会接受我的。”彭丽媛发现，原来习近平经历吃过的苦比她好多，两人一起做决定，并争取了父母的祝福。<br>
		彭丽媛名气很大，但是习近平当时根本不知道她很有名，只是听过她的歌。<br>
		她不因他的家庭而自卑，他也不因她的名气而退缩。一开始，他们就是站在平等的地位上，谈恋爱和谈婚姻。</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[7]}" width="500" height="500"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		彭丽媛说，第一次见面就喜欢上了朴实上进的习近平。习近平也曾说，聊了40分钟就认定了彭丽媛。<br>
		他们的爱情，是基于灵魂的碰撞和沟通。第一次见面，两个人没有聊流行歌曲、出场费，而是聊起了声乐唱法。<br>
		1987年9月1日，两人低调结婚。习近平并没有给彭丽媛一个高大上的婚礼，而是一个只有一桌人的庆祝晚餐。放在现在，有几个姑娘可以接受这样的“简单”？</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[8]}" width="500" height="500"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		1987年，两个人结婚之后，彭丽媛并没有放弃自己的事业，而是仍然活跃在歌坛，到世界各地访问演出。据说，彭丽媛当时也常常在家庭和工作之间难以权衡，习近平给了她最大的支持，让她努力去做自己想做的事情，不放弃喜欢的舞台。<br>
		1992年，彭丽媛生了女儿习明泽。兼顾家庭和事业，彭丽媛足迹遍布几十个国家，还在纽约林肯艺术中心首演中国歌剧《木兰诗篇》，并荣获林肯艺术中心艺术委员会颁发的“杰出艺术家”奖；推出新专辑《我的士兵兄弟》；应奥地利联邦维也纳国家歌剧院邀请主演歌剧《木兰诗篇》，奥地利联邦剧院委员会和维也纳国家歌剧院联合向她授予“艺术杰出贡献奖。</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[9]}" width="500" height="500"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		异地恋是让人觉得特别煎熬的事情，彭丽媛和习近平的“段位”更高，她们曾经历“异地婚”。新婚后第四天，彭丽媛就飞到北京参加全国艺术节，又出访加拿大、美国。彭丽媛在北京，习近平在厦门，一北一南，新婚第一次小别就近三个月。<br>
		两个人一直过着牛郎织女的生活，双方都表示出了最大的信任和尊重，陪伴至今，终于熬到了“到哪都牵着手，一起看遍风景”的现在。</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[10]}" width="500" height="500"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		近几年，彭丽媛在自己事业上的时间少了，更多的时间是陪着习近平出席各种场合。习近平的事业达到现在的地位，就是属于国家和人民的了。彭丽媛深知这个道理，在陪同习近平的同时，不忘热衷公益，关注艾滋病人群，还是全国结核病防治形象大使，会书法、懂外交，成了习近平的贤内助。<br>
		让丽媛STYLE火遍全球，这并不是一件容易的事情。</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[11]}" width="500" height="500"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		有一年冬天，南方过冬没有暖气，彭丽媛回到北京就一直惦记着给习近平做床棉被，特意托母亲用新棉花弹了一床6斤重的棉被，自己去布店扯了被里被面，一路从北京背到沈阳、长春、鞍山再到厦门，看到习近平盖上了她才安心。<br>
		这是普通生活的细节，是平常夫妻的牵挂。直到现在，他们成了世界瞩目的夫妻档，在他们自己看来，他们也只是平凡的普通夫妻。在彭丽媛眼里，习近平是最优秀的人。在习近平看来，彭丽媛是最贴心的妻子。<br>
		这样一起经历过年岁的爱，丝丝点点地弥漫在了日常生活里。不信，你们看他们不经意的小动作，看他们最自然的眼神对视。<br>
		他们都变成了更好的自己。不变的，是身边那熟悉的味道和笑容。这就是最好的爱情吧。</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[12]}" width="640" height="474"></p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
		让我们再回顾一下舒婷名作《致橡树》，小时候初次读的就被深深打动。这首诗里有东方文化中女性的高洁坚强，更有现代女性的独立之姿。这应该是每个追求独立和完美爱情的女性的心声：</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		《致橡树》<br>
		我如果爱你——<br>
		绝不像攀援的凌霄花，<br>
		借你的高枝炫耀自己；<br>
		我如果爱你——<br>
		绝不学痴情的鸟儿，<br>
		为绿荫重复单调的歌曲；<br>
		也不止像泉源，<br>
		常年送来清凉的慰藉；<br>
		也不止像险峰，<br>
		增加你的高度，衬托你的威仪。<br>
		甚至日光，<br>
		甚至春雨。<br>
		不，这些都还不够！<br>
		我必须是你近旁的一株木棉，<br>
		作为树的形象和你站在一起。<br>
		根，紧握在地下；<br>
		叶，相触在云里。<br>
		每一阵风过，<br>
		我们都互相致意，<br>
		但没有人，<br>
		听懂我们的言语。<br>
		你有你的铜枝铁干，<br>
		像刀，像剑，也像戟；<br>
		我有我红硕的花朵，<br>
		像沉重的叹息，<br>
		又像英勇的火炬。<br>
		我们分担寒潮、风雷、霹雳；<br>
		我们共享雾霭、流岚、虹霓。<br>
		仿佛永远分离，<br>
		却又终身相依。<br>
		这才是伟大的爱情，<br>
		坚贞就在这里：<br>
		爱——<br>
		不仅爱你伟岸的身躯，<br>
		也爱你坚持的位置，<br>
		足下的土地。</p>
		<p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: pre-wrap; color: rgb(62, 62, 62); font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', 'Microsoft YaHei', Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" align="center">
		<img border="0" src="./demo_images/detail/hyqy/${images[13]}" width="500" height="592"><br style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;">
&nbsp;</p>
		<br/><br/>        </div>

</div>


    <script type="text/javascript">
         $(".subnav ul li").eq('${selected}').addClass("hover");
     </script>
   <%@ include file="/WEB-INF/myfooterView.jspf" %>
  </body>
</html>
