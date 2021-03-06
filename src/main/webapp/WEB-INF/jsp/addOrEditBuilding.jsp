<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <!--<link rel="stylesheet" href="/css/morecontent.css"/> -->
    <link rel="stylesheet" href="/summernote/summernote.css"/>
    <link rel="stylesheet" href="/css/fileinput.min.css"/>
    <link rel="stylesheet" href="/css/ace.min.css">
    <link rel="stylesheet" href="/css/HoldOn.min.css"/>
    <%@ include file="content.jsp" %>
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


                            <div class="widget-body">
                                <div class="widget-main">
                                    <div id="fuelux-wizard-container">
                                        <div>
                                            <ul class="steps">
                                                <li data-step="1" class="active">
                                                    <span class="step">1</span>
                                                    <span class="title"><s:text name="addupdateitem.main" /></span>
                                                </li>

                                                <li data-step="2">
                                                    <span class="step">2</span>
                                                    <span class="title"><s:text name="addupdateitem.detail" /></span>
                                                </li>

                                                <li data-step="3">
                                                    <span class="step">3</span>
                                                    <span class="title"><s:text name="addupdateitem.floorplan" /></span>
                                                </li>

                                                <li data-step="4">
                                                    <span class="step kootour-main-color">4</span>
                                                    <span class="title kootour-main-color"><s:text name="addupdateitem.pic" /></span>
                                                </li>
                                            </ul>
                                        </div>

                                        <hr>
                                        <form class="form-horizontal" id="course_form" method="post">

                                            <div class="step-content pos-rel">

                                                <div class="step-pane" data-step="1">

                                                    <input type="hidden" id="buildingId" name="buildingId"
                                                           value="<s:property value="#session.updated_building_id_key"/>">
                                                    <h4 class="lighter block kootour-main-color">1.<s:text name="addupdateitem.name" /></h4>
                                                    <div class="form-validator">
                                                        <div class="clearfix">
                                                            <input id="name" type="text" name="name"
                                                                   class="form-control" name="name"/>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <h4 class="lighter block kootour-main-color">2.<s:text name="addupdateitem.coordinate" /></h4>
                                                    <div class="form-validator">
                                                        <div class="clearfix">
                                                            <input id="LAT" type="text" name="LAT" class="form-control"
                                                                   name="LAT"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-validator">
                                                        <div class="clearfix">
                                                            <input id="LNG" type="text" name="LNG" class="form-control"
                                                                   name="LNG"/>
                                                        </div>
                                                    </div>

                                                    <hr>
                                                    <h4 class="lighter block kootour-main-color">3.<s:text name="addupdateitem.address" /></h4>
                                                    <div class="form-validator">
                                                        <div class="clearfix">
                                                            <input id="address" type="text" name="address"
                                                                   class="form-control"/>
                                                        </div>
                                                    </div>
                                                    <hr>

                                                    <h4 class="lighter block kootour-main-color">4.<s:text name="addupdateitem.shortDesc" /></h4>
                                                    <div id="shortDesc" name="shortDesc"></div>
                                                    <hr>

                                                    <h4 class="lighter block kootour-main-color">5.<s:text name="addupdateitem.longdesc" /></h4>
                                                    <div id="longDesc" name="longDesc"></div>
                                                    <hr>

                                                    <h4 class="lighter block kootour-main-color">6.<s:text name="addupdateitem.city" /></h4>
                                                    <div class="form-validator">
                                                        <div class="clearfix">
                                                            <select multiple="" class="chosen-select form-control"
                                                                    id="cities" data-placeholder="Choose a cities..."
                                                                    name="cities">
                                                                <option value="Vancouver">Vancouver</option>
                                                                <option value="WestVancouver">West Vancouver</option>
                                                                <option value="Richmond">Richmond</option>
                                                                <option value="Surrey">Surrey</option>
                                                                <option value="Delta">Delta</option>
                                                                <option value="NewWestminster">New Westminster</option>
                                                                <option value="Burnaby">Burnaby</option>
                                                                <option value="NorthVancouver">North Vancouver</option>
                                                                <option value="Coquitlam">Coquitlam</option>
                                                                <option value="WhiteRock">White Rock</option>
                                                                <option value="Langley">Langley</option>
                                                                <option value="MapleRidge">Maple Ridge</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="step-pane" data-step="2">
                                                    <h4 class="lighter block kootour-main-color">7.<s:text name="addupdateitem.floors" /></h4>
                                                    <div class="form-validator">
                                                        <div class="clearfix"><input type="text" id="stroys"
                                                                                     name="stroys"></div>
                                                    </div>
                                                    <hr>
                                                    <h4 class="lighter block kootour-main-color">8.<s:text name="addupdateitem.constructer" /></h4>

                                                    <div class="form-validator">
                                                        <div class="clearfix"><input type="text" id="construction"
                                                                                     name="construction"></div>
                                                    </div>
                                                    <hr>
                                                    <h4 class="lighter block kootour-main-color">9.<s:text name="addupdateitem.publictransit" /></h4>
                                                    <div class="form-validator">
                                                        <div class="clearfix"><input type="text"
                                                                                     id="publicTransportation"
                                                                                     name="publicTransportation"></div>
                                                    </div>
                                                </div>
                                                <div class="step-pane" data-step="3">
                                                    <h4 class="lighter block kootour-main-color">10.<s:text name="addupdateitem.floorplan" /></h4>
                                                    <table id="extra-table"
                                                           class="table table-striped table-bordered table-hover">
                                                        <thead>
                                                        <tr>
                                                            <th><s:text name="addupdateitem.floorplan.floor" /></th>
                                                            <th><s:text name="addupdateitem.floorplan.interior" /></th>
                                                            <th><s:text name="addupdateitem.floorplan.exterior" /></th>
                                                            <th><s:text name="addupdateitem.floorplan.totalarea" /></th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr data-extra="true" name="floorPlan">
                                                            <td><input type="hidden" name="floorPlanId" value="">
                                                                <input class="form-control" type="text"
                                                                       placeholder="e.g. Snorking" name="level"/></td>
                                                            <td><input class="form-control" type="text" placeholder="20"
                                                                       name="interiorArea"/></td>
                                                            <td><input class="form-control" type="text"
                                                                       placeholder="2hrs" name="exteriorArea"/></td>
                                                            <td><input class="form-control" type="text"
                                                                       placeholder="2hrs" name="totalArea"/></td>
                                                        </tr>
                                                        <tr data-extra="true" name="floorPlan">
                                                            <td><input type="hidden" name="floorPlanId" value="">
                                                                <input class="form-control" type="text"
                                                                       placeholder="e.g. Snorking" name="level"/></td>
                                                            <td><input class="form-control" type="text" placeholder="20"
                                                                       name="interiorArea"/></td>
                                                            <td><input class="form-control" type="text"
                                                                       placeholder="2hrs" name="exteriorArea"/></td>
                                                            <td><input class="form-control" type="text"
                                                                       placeholder="2hrs" name="totalArea"/></td>
                                                        </tr>
                                                        <tr data-extra="true" name="floorPlan">
                                                            <td><input type="hidden" name="floorPlanId" value="">
                                                                <input class="form-control" type="text"
                                                                       placeholder="e.g. Snorking" name="level"/></td>
                                                            <td><input class="form-control" type="text" placeholder="20"
                                                                       name="interiorArea"/></td>
                                                            <td><input class="form-control" type="text"
                                                                       placeholder="2hrs" name="exteriorArea"/></td>
                                                            <td><input class="form-control" type="text"
                                                                       placeholder="2hrs" name="totalArea"/></td>
                                                        </tr>
                                                        <tr data-extra="true" name="floorPlan">
                                                            <td><input type="hidden" name="floorPlanId" value="">
                                                                <input class="form-control" type="text"
                                                                       placeholder="e.g. Snorking" name="level"/></td>
                                                            <td><input class="form-control" type="text" placeholder="20"
                                                                       name="interiorArea"/></td>
                                                            <td><input class="form-control" type="text"
                                                                       placeholder="2hrs" name="exteriorArea"/></td>
                                                            <td><input class="form-control" type="text"
                                                                       placeholder="2hrs" name="totalArea"/></td>
                                                        </tr>
                                                        <tr data-extra="true" name="floorPlan">
                                                            <td><input type="hidden" name="floorPlanId" value="">
                                                                <input class="form-control" type="text"
                                                                       placeholder="e.g. Snorking" name="level"/></td>
                                                            <td><input class="form-control" type="text" placeholder="20"
                                                                       name="interiorArea"/></td>
                                                            <td><input class="form-control" type="text"
                                                                       placeholder="2hrs" name="exteriorArea"/></td>
                                                            <td><input class="form-control" type="text"
                                                                       placeholder="2hrs" name="totalArea"/></td>
                                                        </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                                <div class="step-pane" data-step="4">


                                                    <h4 class="lighter block kootour-main-color">11.<s:text name="addupdateitem.picture" /></h4>
                                                    <div class="row clearfix">
                                                        <div id="uploaded-images">
                                                            <span class="center"><s:text name="addupdateitem.noitem" /></span>
                                                        </div>
                                                    </div>
                                                    <div class="hr hr-8"></div>

                                                    <h4 class="lighter block kootour-main-color">12.<s:text name="addupdateitem.upload" /></h4>
                                                    <form id="uploadForm" action="" method="post" target="_self"
                                                          enctype="multipart/form-data">
                                                        <input id="input-dim-1" name="file" type="file" multiple
                                                               class="file-loading" accept="image/*"
                                                               data-overwrite-initial="false">
                                                    </form>
                                                </div>


                                            </div>
                                        </form>
                                    </div>
                                    <hr>
                                    <div class="wizard-actions">
                                        <button class="btn btn-prev" disabled="disabled">
                                            <i class="ace-icon fa fa-arrow-left"></i>
                                            <s:text name="addupdateitem.prev" />
                                        </button>

                                        <button class="btn btn-success btn-next" data-last="Finish">
                                            <s:text name="addupdateitem.next" />
                                            <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                        </button>
                                    </div>
                                </div><!-- /.widget-main -->
                            </div><!-- /.widget-body -->
                        </div><!-- /.widget-box -->
                    </div><!-- /.col -->
                </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

</div>

<jsp:include page="taofunfoot.jsp"/>

<script src="/js/jquery-2.2.0.min.js"></script>
<script src="/js/bootstrap3.3.7.min.js"></script>

<!-- ace scripts -->
<script src="/js/ace-elements.min.js"></script>
<script src="/js/ace.min.js"></script>

<!-- page specific plugin scripts -->
<script src="/summernote/summernote.min.js"></script>
<script src="/js/fileinput.js"></script>
<script src="/js/fuelux.wizard.min.js"></script>
<script src="/js/jquery.validate.min.js"></script>
<script src="/js/HoldOn.min.js"></script>
<script src="/js/bootstrap-dialog.min.js"></script>
<script src="/js/addOrEditBuilding.js"></script>

</body>
</html>

