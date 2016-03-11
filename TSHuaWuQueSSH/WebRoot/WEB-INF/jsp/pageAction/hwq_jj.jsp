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
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
				<p><span style="font-size: 12.0pt; font-family: 微软雅黑">
				唐山市花无缺花店，现位于唐山市路北区万科金域华府底商14号。于<span lang="EN-US">1995</span>年创办成立，是一家以经营鲜花、仿生花（绢花）家居饰品为主的花店。我们一直坚持用最优级的花材和我们的原创设计，将现代美学和时尚不断融合</span><span style="font-family: 微软雅黑; font-size: 18px">，</span><font size="3"><span style="font-family: 微软雅黑">希望</span></font><span style="font-size: 12.0pt; font-family: 微软雅黑">给每个顾客提供最好的花礼和服务。</span></p>
				<p><br/></p><p style="text-align:center;">
				<img alt="${images[0]}"  src="./demo_images/detail/hwq/${images[0]}" width="400" height="317"/></p><p>&nbsp;</p><p><br/></p><p style="text-align: left;">
				<strong>
				<span style="font-family: 微软雅黑, 'Microsoft YaHei'; font-size: 18px">
				制作</span><span style="font-family: 微软雅黑, 'Microsoft YaHei'; font-size: 18px;">各类国内外花卉礼品</span></strong></p>
				<p style="text-align: left;"><strong>
				<span style="font-family: 微软雅黑, 'Microsoft YaHei'; font-size: 18px;"><br/></span></strong>
				<span style="font-family: 微软雅黑; font-size: 18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
				<span style="font-family: 微软雅黑, Microsoft YaHei; font-size: 18px">
				&nbsp;</span></p><p>
				<span style="font-family: 微软雅黑, Microsoft YaHei; font-size:18px">
				<font style="font-size: 18px; font-family:微软雅黑, Microsoft YaHei">
				唐山市花无缺花店是一家从事花卉艺术，园林景观，庭院设计，导演唯美婚礼的专业团队。企业秉承“发现美、创造美、引领美、传承美”四美的文化理念，让美丽的事业永久传承。</font></span></p>
				<p style="text-align: left;">
				<font style="font-size: 18px; font-family:微软雅黑, Microsoft YaHei"><br/>每天我们从全国各地，包括厄瓜多尔，
				肯尼亚等地选购优良的自然花材。通过先进的花卉保鲜技术运输到实体店。在这里，我们有资深的花艺师为您精心挑选并搭配款式、设计经典的精美花艺成品，并由我们专业的配送人员为您上门送花。<br/>花店满足您对不同品种，不同颜色，不同品味的鲜花需求，提供各种鲜花花束、花篮、瓶花、绿植以及各类礼品（包括食品、饰品、水果、玩具等等）。无论您是需要新鲜花材、新颖设计，还是独立包装，都可以在
				花无缺得到满足。</font></p>
				<p style="text-align: left;">
				<span style="font-family: 微软雅黑, 'Microsoft YaHei'; font-size: 18px;"><br/>&nbsp;</span><span style="font-family: 微软雅黑, 'Microsoft YaHei'; font-size: 18px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<img border="0" src="./demo_images/detail/hwq/${images[1]}" width="400" height="267"></span></p>
				<p style="text-align: left;">
				<span style="font-family: 微软雅黑, 'Microsoft YaHei'; font-size: 18px;"><br/><strong>承办各式会展婚庆的花卉装饰，提供园艺设计</strong></span></p>
				<p style="text-align: left;">&nbsp;
				</p>
				<p style="text-align: left;">&nbsp;
				</p>
				<p>
				<span style="font-size: 18px; font-family: 微软雅黑, 'Microsoft YaHei'">
				唐山市花无缺花店主要以大型花艺设计和整体软装设计为主，多年来依靠雄厚的专业技术、超前的艺术水准、为唐山各大星级酒店，娱乐城，影楼，别墅，家庭，做了很多整体设计。以诚信为本的经营理念在竞争激烈的花艺行业顽强的生存、发展。在唐山市民心中建立了良好的口碑，享有盛誉。花无缺拥有遍布城市各个方位的五家专业店，实现了快速、便捷、联动的客户服务，专业设计等全方位的多重项目。具有强大的商品储备能力，对于突如其来的大型花事活动具有较强的技术承接力和人员调配力。<br>
				<b>
				<br>
				主要作品：</b><br>
				历届市委市政府对国家省部级以上领导接待会议得专项会场花卉布置<br>
				金碧辉煌娱乐城整体花艺和配饰设计<br>
				锦江国际饭店花艺配饰设计<br>
				曹妃甸别墅配饰设计<br>
				南湖木屋和四合院部分配饰软装设计<br>
				食神豆捞整体花艺设计<br>
				唐山市政府外事接待活动花艺<br>
				宏中影楼橱窗花艺和配饰设计<br>
				微微新娘橱窗花艺和配饰设计<br>
				历届陶瓷博览会部分展厅软装配饰<br>
				南湖维景酒店花艺和配饰设计<br>
				曹妃甸别墅花艺和配饰设计<br>
				万科蓝湾部分花艺设计<br>
				万科别墅样板间仿真植物设计<br>
				万科金域华府仿真植物设计<br>
				中郡别墅软装讲座<br>
				汇丰家具花艺和配饰设计</span></p>
				<p>&nbsp;
				</p>
				<p>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				、<img border="0" src="./demo_images/detail/hwq/${images[2]}" width="700" height="359"></p>
				<p>
				<span style="font-size: 18px; font-family: 微软雅黑, 'Microsoft YaHei'">
				<b>我们的空间美陈设计受到很多用户单位的好评，屡次被评为唐山市的金牌花店，这展示了花无缺的美学思想和设计能力创作风格和服务水准。今后我们还会坚持一贯的唯美主义风格，精心钻研专业插花技能，希望把更好的花艺带给唐山市的广大人民。</b><br>
				<br/>
				</span></p><p style="text-align: center;">
				<img alt="${images[3]}" src="./demo_images/detail/hwq/${images[3]}" width="400" height="247"/></p>			</div>
		</div>
	</div>
	  <script type="text/javascript">
         $(".subnav ul li").eq('${selected}').addClass("hover");
     </script>
   <%@ include file="/WEB-INF/myfooterView.jspf" %>
  </body>
</html>
