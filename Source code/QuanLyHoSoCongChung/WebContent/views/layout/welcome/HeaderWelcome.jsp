<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div id="header">
	<div id="topHeader">
		<div id="leftTopHeader">
		<s:set name="linkGoogle" value="@util.WebUtil@imageConfigSv.getImageConfig(1)"/>
		<s:set name="linkFacebook" value="@util.WebUtil@imageConfigSv.getImageConfig(2)"/>
		<s:set name="linkTwister" value="@util.WebUtil@imageConfigSv.getImageConfig(3)"/>
			<font class="fontText"><s:text name="welcome.follow_us"/> </font> <a
				href='<s:property value="#linkFacebook.configUrl"/>'
				onclick="javascript:window.open(this.href,
                                    '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');
                            return false;">
				<img class="imgHead" id="facebook"
				src="images/1_0000_icon-face-80.png" />
			</a> <a href="<s:property value="#linkTwister.configUrl"/>"
				data-lang="en"
				onclick="javascript:window.open(this.href,
                                    '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');
                            return false;">
				<img class="imgHead" id="tweeter" src="images/1_0001_icon-tw-80.png" />
			</a> <a href="<s:property value="#linkGoogle.configUrl"/>"
				onclick="javascript:window.open(this.href,
                                    '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');
                            return false;">
				<img class="imgHead" id="google"
				src="images/1_0003_icon-google-80.png" />
			</a>
			<!--<h:graphicimages class="imgHead" id="rss" value="resources/imagess/1_0002_icon-rss-80.png"/>-->

		</div>
		<!-- End left top header -->
		<div id="rightTopHeader">
			<a href="Index"><img class="imgHead" src="images/1_0007_home-80.png"/></a>
		
			 <img class="imgHead" src="images/seperator.jpg" /> <a href="AboutUs"> <font
				class="fontMenu"> <s:text name="page.about_us"/> </font>
			</a> <img class="imgHead" src="images/seperator.jpg" /> <a href="MediaRelease"><font
				class="fontMenu"><s:text name="page.media"/></font></a> <img class="imgHead"
				src="images/seperator.jpg" /> <a href="Career"><font class="fontMenu"><s:text name="page.career"/></font></a>
			<img class="imgHead" src="images/seperator.jpg" /> <a href="ContactUs"><font
				class="fontMenu"><s:text name="page.contact_us"/></font></a>
			<form class="main_search_form search" action="SearchResult" method="get">
				<input type="text" style="border-color: transparent;" name="key"
					class="fontText" placeholder="<s:text name='welcome.search'/>" ></input> <img class="imgHead layout_search_btn"
					src="images/icon_search.png" />
			</form>

		</div>
	</div>
	<!-- End top header -->
	<div id="menu">
		<div id="logo">
			<h:form>
				<a href="Index"><img src="images/1_0008_logo.png" /></a>
			</h:form>
		</div>
		<!-- End logo -->
		<div id="containMenu">
			<ul id="topnav">

				<li style="text-transform: capitalize;"><a href="Product"><s:text name="welcome.product_cap"/></a>

					<ul class="children">
						<s:iterator value="@util.WebUtil@productSv.getAllProducts()">
							<li><a href="ProductDetail?pid=<s:property value='productID'/>"><s:property value="@util.WebUtil@contentSv.getContent(name,language)"/></a></li>	
						</s:iterator>

					</ul></li>
				<li><a href="Service"><s:text name="welcome.service_cap"/></a>

					<ul class="children">
						<s:iterator value="@util.WebUtil@serviceSv.getAllServices()">
							<li><a href="ServiceDetail?pid=<s:property value='serviceID'/>"><s:property value="@util.WebUtil@contentSv.getContent(name,language)"/></a></li>	
						</s:iterator>

					</ul></li>
				<li><a href="http://customerportal.phuhunglife.vn"><s:text name="welcome.cus_portal"/></a></li>

			</ul>


		</div>
		<!-- End containMenu -->
		<div id="nationality">
			<img value="images/english.png" class="imgHead" /> <select
				style="border-color: transparent; color: #bcb8b8" class="language_select" onchange="changeLanguage();">
				<option value="en" <s:if test="language == 'en'">selected="selected"</s:if>> <s:text name="lang.English"/> </option>
				<option value="vi" <s:if test="language == 'vi'">selected="selected"</s:if>> <s:text name="lang.Vietnam"/> </option>
			</select>
		</div>
		<!-- End nationality -->
	</div>
	<!-- End menu -->
</div>