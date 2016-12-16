<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
    <%@ include file="content.jsp" %>

    <link rel="stylesheet" href="/css/morecontent.css"/>
    <link rel="stylesheet" href="/summernote/summernote.css"/>
    <link rel="stylesheet" href="/css/fileinput.min.css"/>
    <link rel="stylesheet" href="/css/HoldOn.min.css"/>
</head>

<body>
<jsp:include page="taofunheader.jsp"/>
<div class="main-container container" id="main-container">

    <div class="main-content">
        <div class="main-content-inner">

            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="widget-box kootour-widget-color-main light-border">

                            <hr>
                            <form class="form-horizontal" id="van_city_form" method="post">

                                <input type="hidden" id="vanCityId" name="vanCityId"
                                       value="<s:property value="#session.updated_van_city_id_key"/>">
                                <input type="hidden" id="picture" name="picture">
                                <h4 class="lighter block kootour-main-color">1.<s:text name="addeditcity.name.english"/></h4>
                                <div class="form-validator">
                                    <div class="clearfix">
                                        <input id="cityNameE" type="text" name="cityNameE" class="form-control"/>
                                    </div>
                                </div>
                                <hr>

                                <h4 class="lighter block kootour-main-color">2.<s:text name="addeditcity.name.chinese"/></h4>
                                <div class="form-validator">
                                    <div class="clearfix">
                                        <input id="cityNameC" type="text" name="cityNameC" class="form-control"/>
                                    </div>
                                </div>
                                <hr>

                                <h4 class="lighter block kootour-main-color">3.<s:text name="addeditcity.description"/></h4>
                                <div id="desc" name="desc"></div>
                                <hr>

                                <h4 class="lighter block kootour-main-color">4.<s:text name="addeditcity.sort.no"/> </h4>
                                <div class="form-validator">
                                    <div class="clearfix">
                                        <input id="sort" type="text" name="sort" class="form-control"/>
                                    </div>
                                </div>
                                <hr>

                                <h4 class="lighter block kootour-main-color">5.<s:text name="addeditcity.topbar"/></h4>
                                <div class="form-validator">
                                    <div class="clearfix">
                                        <div class="checkbox">
                                            <label><input type="checkbox" id="onTopbar"><s:text name="addeditcity.topbar"/></label>
                                        </div>
                                    </div>
                                </div>

                                <hr>
                                <h4 class="lighter block kootour-main-color">6.<s:text name="addeditcity.upload"/></h4>
                                <div id="uploaded-images" class="clearfix">
                                    <span class="center"><s:text name="addeditcity.noimage"/></span>
                                </div>
                                <hr>
                                <div class="form-validator">
                                    <div class="clearfix">
                                        <input id="input-dim-1" name="file" type="file" multiple
                                               class="file-loading" accept="image/*">
                                    </div>
                                </div>
                                <hr>
                                <button id="vancity_submit" type="submit" class="btn btn-kootour-bold fullwidth">
                                    <s:text name="addeditcity.add"/>
                                </button>
                            </form>
                        </div>
                        <hr>

                    </div><!-- /.col -->
                </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
    <jsp:include page="taofunfoot.jsp"/>
</div><!-- /.main-container -->

<!--<script src="/js/jquery-2.2.0.min.js"></script>-->
<!-- page specific plugin scripts -->
<script src="/summernote/summernote.min.js"></script>
<script src="/js/fileinput.js"></script>
<script src="/js/HoldOn.min.js"></script>
<script src="/js/addOrEditVanCity.js"></script>

</body>
</html>

