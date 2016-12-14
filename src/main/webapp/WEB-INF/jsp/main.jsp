<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
   <%@ include file="content.html" %>
</head>

<body>
<jsp:include page="taofunheader.jsp"/>
<div class="td-main-content-wrap td-main-page-wrap td-container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="widget-box kootour-widget-color-main light-border">
                <form role="form">
                    <div class="form-group">
                        <!--<input type="text" class="form-control" id="name" placeholder="请输入楼花名称或开发商名称"> -->
                        <input id="ui_search_bar_btn" class="searchBtn buttonbg ft" type="button"
                               value="<s:text name="main.button" />"/>
                        <input id="ui_search_bar_input" placeholder="<s:text name="main.button.placeholder" />"
                               class="searchText commonbg ft" type="text" value=""/>

                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><s:text name="main.area.checkbox" /></label>
                        <div class="col-sm-10">
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
                        <label class="col-sm-2 control-label"><s:text name="main.price.checkbox" /></label>
                        <div class="col-sm-10">
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
    <div><!-- /.page-content -->
        <div id="googleMap" style="width:100%;height:1000px;"></div>
    </div>


</div> <!-- /.td-main-content-wrap -->

<div><br></div>
<jsp:include page="taofunfoot.jsp"/>



<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBhdzyHt37AYtktMH3t2SKcNtdBlm_fvlI&sensor=false">
</script>
<script src="/js/infobubble.js"></script>
<script src="/js/jquery.validate.min.js"></script>
<script src="/js/bootstrap3.3.7.min.js"></script>
<script src="/js/bootstrap-dialog.min.js"></script>
<script src="/js/main.js"></script>
<script src="/js/logininandsignup.js"></script>



<!--
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
</div> -->
</body>
</html>