<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<div class="bannerSliderWrapper">
		<div class="bx-wrapper">
			<div class="bx-window">
				<ul style="padding: 0; margin: 0" id="bannerSlider" class="bxslider">
					<s:iterator value="@util.WebUtil@imageConfigSv.getImageConfigs('main_slider')">
						<li>
							<img src="<s:property value='@entity.Configuration@pathDisplayImage'/>/main_slider/<s:property value='@util.WebUtil@contentSv.getContent(configImage,language)'/>" style="width: 1019px" />
						<div class="slide-details">
							<a href="<s:property value='configUrl'/>" class="button button-blue"><s:text name="welcome.more_detail"/></a>
						</div></li>
					</s:iterator>
					
				</ul>
			</div>
		</div>

	</div>
</div>
<div id="break1">
	<font class="fontbreak1" color="#ffffff"><s:text name="welcome.break_news"/></font> <a
		href="MediaReleaseDetail?newsID=<s:property value="newsRandom.newsID" />" style="padding-left: 50px; float: left"><font
		color="#000000"><s:property value= "@util.WebUtil@contentSv.getContent(newsRandom.title,language)"/> </font></a>
</div>
<!-- End break1 -->
<div id="content">
	<div id="leftContent">
		<div id="topContent">
			<s:iterator value="@util.WebUtil@imageConfigSv.getImageConfigs('index_reference')">
				<div class="item">
					<img class="imgItem" src="<s:property value='@entity.Configuration@pathDisplayImage'/>/index_ref/<s:property value='@util.WebUtil@contentSv.getContent(configImage,language)'/>" />
					<div style="padding-top: 10px;">
						<a href="#"><font color="#c4960c"><s:property value='@util.WebUtil@contentSv.getContent(textUrl,language)'/></font></a> 
						<img style="padding-left: 5px" src="images/CrollIcon.jpg" />
						<p style="color: #000000"><s:property value='@util.WebUtil@contentSv.getContent(textDescription,language)'/></p>
					</div>
				</div>
			</s:iterator>
		</div>
		<!-- End top-->
		
	
		
	</div>
	<!-- End leftContent-->
	<div id="rightContent">
		<a class="youtube" href="http://www.youtube.com/watch?v=J4pGQ2wrQxE">
			<img class="imgVideo" src="images/sahifa2.jpg" />
		</a> <br />
		<div>
			<font color="c4960c">Video Phu Hung Life</font>
		</div>
	</div>
	<!-- End rightContent -->
	<div id="bottomContent">
			<font color="#c4960c"><s:text name="welcome.event_week"/> </font><br />
			<s:iterator value="list4News">
			<div class="itemEvent">
				<img style="padding-left: 5px" src="images/CrollIcon.jpg" /> <a
					href="MediaReleaseDetail?newsID=<s:property value="newsID" />"><font color="#000000"><s:property value= "@util.WebUtil@contentSv.getContent(title,language)"/></font></a><br />
			</div>						
			</s:iterator>
						
		</div>
		<!-- End bottom-->

</div>
