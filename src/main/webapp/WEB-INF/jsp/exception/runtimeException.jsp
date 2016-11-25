<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>温哥华淘房网</title>

    <link rel='stylesheet' href='/css/taofun-style.css' type='text/css'/>
    <link rel="stylesheet" href="/css/taofun.css"/>
    <link rel="stylesheet" href="/css/taofun-infobox.css"/>
</head>

<body>
<jsp:include page="../taofunheader.jsp"/>
<div class="td-main-content-wrap td-main-page-wrap td-container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="widget-box kootour-widget-color-main light-border">
Some Runtime Exception Occured!!<br><br>

Runtime Exception Name: <s:property value="exception"/><br><br>

Runtime Exception Stack Trace: <br>
<s:property value="exceptionStack"/>

                <div><br></div><div><br></div>
                <jsp:include page="../taofunfoot.jsp"/>


                <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBhdzyHt37AYtktMH3t2SKcNtdBlm_fvlI&sensor=false">
                </script>
                <script src="/js/jquery-2.2.0.min.js"></script>
                <script src="/js/bootstrap.min.js"></script>

                <div class="infobox_outer">
                    <img class="img_close" src="icon_close.png" align="right">
                    <div class="infobox_inner">
                        <div class="infobox_doc">
                            <div class="infobox_title">
                                15765 Lodestone Lane, Hacie...
                            </div>
                            <div style="float: left; width: 67px; margin-left: 6px;">
                                <img width="60px" height="70px" border="0" align="absmiddle" src="http://photo3.proxiopro.com/p2/50311714/0.jpg?t=1477927189" style="cursor:pointer;">
                            </div>
                            <div class="infobox_detail">
                                <span style="font-weight: bold; ">USD 1,588,000</span>
                                <br>Hacienda Heights<br>California<br>91745<br>USA
                            </div>
                        </div>
                    </div>
                </div>
</body>
</html>