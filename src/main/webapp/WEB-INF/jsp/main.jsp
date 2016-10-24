<!-- http://localhost:8080/louhuawang/main -->
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>

<c:set var="context" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>Vancouver Condo</title>

    <meta name="description" content="overview &amp; stats">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="css/HoldOn.min.css"/>
    <link rel="stylesheet" href="css/bootstrap-dialog.min.css"/>

    <!-- text fonts -->

    <!-- ace styles -->
    <link rel="stylesheet" href="css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style">


    <!--[if lte IE 9]>
    <link rel="stylesheet" href="css/ace-part2.min.css" class="ace-main-stylesheet"/>
    <![endif]-->



    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBhdzyHt37AYtktMH3t2SKcNtdBlm_fvlI&sensor=false">
    </script>

</head>

<body class="no-skin">
<jsp:include page="localhostHeader.jsp"/>
<div class="main-container container" id="main-container">

    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try {
                        ace.settings.check('breadcrumbs', 'fixed')
                    } catch (e) {
                    }
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <!--sj	<a href="localhostCourseList!load">Localhost Home</a> -->
                    </li>
                </ul>
            </div>

            <div class="page-content">
                <div class="widget-box widget-color-dark">
                    <div class="widget-header">
                        <div class="widget-title bigger lighter">
                            <a href="display"><Strong style="color:white">首页&nbsp;|&nbsp;</Strong></a>
                            <a href=""><Strong style="color:white">新房&nbsp;|&nbsp;</Strong></a>
                            <a href=""><Strong style="color:white">出租&nbsp;|&nbsp;</Strong></a>
                            <a href="catchment.action"><Strong style="color:white">学区房搜索&nbsp;|&nbsp;</Strong></a>
                            <a href=""><Strong style="color:white">分析文章&nbsp;|&nbsp;</Strong></a>
                            <a href=""><Strong style="color:white">房产工具&nbsp;|&nbsp;</Strong></a>
                            <a href="list"><Strong style="color:white">楼花编辑</Strong></a>
                            <br>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="widget-box kootour-widget-color-main light-border">
                                <form role="form">
                                    <div class="form-group">
                                        <!--<input type="text" class="form-control" id="name" placeholder="请输入楼花名称或开发商名称"> -->
                                        <input id="ui_search_bar_btn" class="searchBtn buttonbg ft" type="button"
                                               value="搜  索"/>
                                        <input id="ui_search_bar_input" placeholder="输入楼花名称 或 开发商名称,支持模糊搜索"
                                               class="searchText commonbg ft" type="text" value=""/>

                                    </div>
                                    <div class="form-group">
                                        <label for="region" class="col-sm-1 control-label">地区选择</label>
                                        <div class="col-sm-11">
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1"
                                                                                  value="all">不限</label>
                                            <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2"
                                                                                   value="西温">西温</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3"
                                                                                  value="温东">温东</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1"
                                                                                  value="温西">温西</label>
                                            <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2"
                                                                                   value="列治文">列治文</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3"
                                                                                  value="东本拿比">东本拿比</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1"
                                                                                  value="北本拿比">北本拿比</label>
                                            <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2"
                                                                                   value="南本拿比">南本拿比</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3"
                                                                                  value="北温">北温</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1"
                                                                                  value="高贵林港">高贵林港</label>
                                            <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2"
                                                                                   value="高贵林">高贵林</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3"
                                                                                  value="穆迪港">穆迪港</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1"
                                                                                  value="新西敏">新西敏</label>
                                            <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2"
                                                                                   value="北素里">北素里</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3"
                                                                                  value="素里">素里</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1"
                                                                                  value="白石及南素里">白石及南素里</label>
                                            <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2"
                                                                                   value="三角洲">三角洲</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3"
                                                                                  value="兰利">兰利</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1"
                                                                                  value="枫树岭">枫树岭</label>
                                            <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2"
                                                                                   value="匹特草原">匹特草原</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3"
                                                                                  value="克洛弗代尔">克洛弗代尔</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1"
                                                                                  value="拉德纳">拉德纳</label>
                                            <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2"
                                                                                   value="措瓦森">措瓦森</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="price" class="col-sm-1 control-label">价格选择</label>
                                        <div class="col-sm-11">
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1"
                                                                                  value="all">不限</label>
                                            <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2"
                                                                                   value="30万以下">30万以下</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3"
                                                                                  value="30万至50万">30万至50万</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1"
                                                                                  value="50万至70万">50万至70万</label>
                                            <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2"
                                                                                   value="70万至100万">70万至100万</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3"
                                                                                  value="100万至150万">100万至150万</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1"
                                                                                  value="150万至300万">150万至300万</label>
                                            <label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1"
                                                                                  value="300万至500万">300万至500万</label>
                                            <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2"
                                                                                   value="500万以上">500万以上</label>
                                        </div>
                                    </div>
                                </form>
                            </div><!-- /.widget-box -->
                        </div><!-- /.col -->
                    </div>
                </div>
                <div><!-- /.page-content -->
                    <div id="googleMap" style="width:1000px;height:760px;"></div>
                </div>
            </div>
        </div><!-- /.main-content -->
    </div>


    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->
<footer>
    <jsp:include page="localhostFooter.jsp"/>
</footer>
<!-- basic scripts -->

<!--[if !IE]> -->
<script src="js/jquery-2.2.0.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="js/jquery.1.11.1.min.js"></script>
<![endif]-->

<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='/js/jquery.min.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='/js/jquery1x.min.js'>" + "<" + "/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>

<script src="js/localhostHeader.js" type="text/javascript"></script>

<!-- inline scripts related to this page -->
</body>
</html>