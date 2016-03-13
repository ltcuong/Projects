<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div id="footer">
	<div id="slide1">
		<div id="tS2" class="jThumbnailScroller">
			<div class="jTscrollerContainer">
				<div class="jTscroller">
				<s:set name="listImageFooter" value="@util.WebUtil@webSv.getImageConfigFooter()"/>
				<s:iterator value="#listImageFooter">
					<a href='<s:property value="configUrl"/>'><img src="<s:property value='@entity.Configuration@pathDisplayImage'/>/footer/<s:property value='@util.WebUtil@contentSv.getContent(configImage,language)' />" width="100px" height="48px" /></a>
				</s:iterator>		
					
						
				</div>
			</div>
			<a href="#" class="jTscrollerPrevButton"></a> <a href="#"
				class="jTscrollerNextButton"></a>
		</div>
	</div>
	<!-- End slide1-->
	<div id="search">
		<select class="quick_access_menu">
			<option value="Index"><s:text name="footer.quick_access"/></option>
			<option value="Index"><s:text name="page.index"/></option>
			<option value="AboutUs"><s:text name="page.about_us"/></option>
			<option value="MediaRelease"><s:text name="page.media"/></option>
			<option value="Career"><s:text name="page.career"/></option>
			<option value="ContactUs"><s:text name="page.contact_us"/></option>
			
			<option value="Product"><s:text name="page.product"/></option>
			
			<s:iterator value="@util.WebUtil@productSv.getAllProducts()">
				<option value="ProductDetail?pid=<s:property value='productID'/>">&nbsp&nbsp&nbsp&nbsp<s:property value="@util.WebUtil@contentSv.getContent(name,language)"/></option>
			</s:iterator>
			
			
			<option value="Service"><s:text name="page.service"/></option>
			<s:iterator value="@util.WebUtil@productSv.getAllServices()">
				<option value="ServiceDetail?pid=<s:property value='serviceID'/>">&nbsp&nbsp&nbsp&nbsp<s:property value="@util.WebUtil@contentSv.getContent(name,language)"/></option>
			</s:iterator>
			
			
			
			<option value="SiteMap"><s:text name="footer.sitemap"/></option>
			<option value="CompanyInfo"><s:text name="footer.company_info"/></option>
			<option value="PersonInChange"><s:text name="footer.person_in_change"/></option>
			<option value="Disclaimer"><s:text name="footer.dis_n_intel"/></option>
			<option value="Privacy"><s:text name="footer.privacy"/></option>
			
		</select>
	</div>
	<!-- End search -->
</div>
<!-- End footer-->
<div id="bottomFooter">
	<font class="fontMenu" style="float: left">Copyright &copy; 2014
		Phu Hung Life. All Rights Reserved</font>
	<div>
		<a href="SiteMap"><font class="fontMenu"><s:text name="footer.sitemap"/></font></a> <img
			class="imgHead" src="images/seperator.jpg" /> 
			
			<a href="CompanyInfo"><font
			class="fontMenu"><s:text name="footer.company_info"/></font></a> <img class="imgHead"
			src="images/seperator.jpg" /> 
			
			<a href="PersonInChange"><font class="fontMenu"><s:text name="footer.person_in_change"/></font></a>
		<img class="imgHead" src="images/seperator.jpg" /> 
		
		<a href="Disclaimer"><font
			class="fontMenu"><s:text name="footer.dis_n_intel"/></font></a> <img
			class="imgHead" src="images/seperator.jpg" /> 
			
			<a href="Privacy"><font
			class="fontMenu"><s:text name="footer.privacy"/></font></a>
	</div>
</div>
<!-- End bottom footer -->