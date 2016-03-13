<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<?xml version='1.0' encoding='UTF-8' ?> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

    <head>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon_1.ico"></link>
        
        <meta name="robots" content="noindex, nofollow"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Quản lý dữ liệu hồ sơ công chứng</title>
    </head>

    <body>

        <div id="main">
        	<div id="main2">
           <tiles:insertAttribute name="headerWelcome" />
            <tiles:insertAttribute name="body" />    
			<tiles:insertAttribute name="footer" />
			</div>
        </div>
    </body>

</html>
