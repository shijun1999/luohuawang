<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>Edit Course | Kootour</title>

    <meta name="description" content="overview &amp; stats">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-dialog.min.css"/>
    <link rel="stylesheet" href="summernote/summernote.css"/>
</head>

<body class="no-skin">
<div class="main-container container" id="main-container">

    <div class="main-content">
        <div class="main-content-inner">

            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="widget-box kootour-widget-color-main light-border">

                            <div class="widget-body">
                                <div class="widget-main">
                                    <form class="form-horizontal" id="course_form" method="post">
                                        <h4 class="lighter block kootour-main-color">1.名称</h4>
                                        <div class="form-validator">
                                            <div class="clearfix">
                                                <input id="name" type="text" name="name" class="form-control"
                                                       name="name" value="aaa1"/>
                                            </div>
                                        </div>
                                        <hr>
                                        <h4 class="lighter block kootour-main-color">2.坐标</h4>
                                        <div class="form-validator">
                                            <div class="clearfix">
                                                <input id="lat" type="text" name="lat" class="form-control"
                                                       name="lat" value="aaa2"/>
                                            </div>
                                        </div>
                                        <div class="form-validator">
                                            <div class="clearfix">
                                                <input id="lng" type="text" name="lng" class="form-control"
                                                       name="lng" value="aaa3"/>
                                            </div>
                                        </div>

                                        <hr>
                                        <h4 class="lighter block kootour-main-color">3.地址</h4>
                                        <div class="form-validator">
                                            <div class="clearfix">
                                                <input id="address" type="text" name="address" class="form-control"
                                                       name="address" value="aaa4"/>
                                            </div>
                                        </div>
                                        <hr>
                                        <h4 class="lighter block kootour-main-color">4.简述</h4>
                                        <div class="form-validator">
                                            <div id="shortDesc">aaa6</div>
                                        </div>
                                        <hr>
                                        <h4 class="lighter block kootour-main-color">5.详细描述</h4>
                                        <div class="form-validator">
                                            <div id="longDesc">aaa7</div>
                                        </div>
                                        <hr>
                                        <h4 class="lighter block kootour-main-color">6.CITY</h4>
                                        <div class="form-validator">
                                            <div class="clearfix">
                                                <select multiple="" class="chosen-select form-control" id="city"
                                                        data-placeholder="Choose a city..." name="city">
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

                                        <h4 class="lighter block kootour-main-color">7.楼层</h4>
                                        <div class="form-validator">
                                            <div class="clearfix"><input type="text" id="storage" name="storage"
                                                                         style="display:none"></div>
                                        </div>
                                        <hr>
                                        <h4 class="lighter block kootour-main-color">8.建商</h4>

                                        <div class="form-validator">
                                            <div class="clearfix"><input type="text" id="construction" name="construction"
                                                                         style="display:none"></div>
                                        </div>
                                        <hr>
                                        <h4 class="lighter block kootour-main-color">9.公共交通</h4>
                                        <div class="form-validator">
                                            <div class="clearfix"><input type="text" id="publicTransportation" name="publicTransportation"
                                                                         style="display:none"></div>
                                        </div>
                                        <hr>

                                        <h4 class="lighter block kootour-main-color">10.楼层平面图</h4>
                                        <table id="extra-table"
                                               class="table table-striped table-bordered table-hover">
                                            <thead>
                                            <tr>
                                                <th>Level</th>
                                                <th>Interior Area</th>
                                                <th>Exterior Area</th>
                                                <th>Total Area</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr data-extra="true" name="floorPlan">
                                                <td><input class="form-control" type="text"
                                                           placeholder="e.g. Snorking" name="level"></td>
                                                <td><input class="form-control" type="text" placeholder="20"
                                                           name="interiorArea"></td>
                                                <td><input class="form-control" type="text" placeholder="2hrs"
                                                           name="exteriorArea"></td>
                                                <td><input class="form-control" type="text" placeholder="2hrs"
                                                           name="totalArea"></td>
                                            </tr>
                                            <tr data-extra="true" name="floorPlan">
                                                <td><input class="form-control" type="text"
                                                           placeholder="e.g. Snorking" name="level"></td>
                                                <td><input class="form-control" type="text" placeholder="20"
                                                           name="interiorArea"></td>
                                                <td><input class="form-control" type="text" placeholder="2hrs"
                                                           name="exteriorArea"></td>
                                                <td><input class="form-control" type="text" placeholder="2hrs"
                                                           name="totalArea"></td>
                                            </tr>
                                            <tr data-extra="true" name="floorPlan">
                                                <td><input class="form-control" type="text"
                                                           placeholder="e.g. Snorking" name="level"></td>
                                                <td><input class="form-control" type="text" placeholder="20"
                                                           name="interiorArea"></td>
                                                <td><input class="form-control" type="text" placeholder="2hrs"
                                                           name="exteriorArea"></td>
                                                <td><input class="form-control" type="text" placeholder="2hrs"
                                                           name="totalArea"></td>
                                            </tr>
                                            <tr data-extra="true" name="floorPlan">
                                                <td><input class="form-control" type="text"
                                                           placeholder="e.g. Snorking" name="level"></td>
                                                <td><input class="form-control" type="text" placeholder="20"
                                                           name="interiorArea"></td>
                                                <td><input class="form-control" type="text" placeholder="2hrs"
                                                           name="exteriorArea"></td>
                                                <td><input class="form-control" type="text" placeholder="2hrs"
                                                           name="totalArea"></td>
                                            </tr>
                                            <tr data-extra="true" name="floorPlan">
                                                <td><input class="form-control" type="text"
                                                           placeholder="e.g. Snorking" name="level"></td>
                                                <td><input class="form-control" type="text" placeholder="20"
                                                           name="interiorArea"></td>
                                                <td><input class="form-control" type="text" placeholder="2hrs"
                                                           name="exteriorArea"></td>
                                                <td><input class="form-control" type="text" placeholder="2hrs"
                                                           name="totalArea"></td>
                                            </tr>
                                            </tbody>
                                        </table>

                                        <s:submit key="label.add" name="submit" id="button"></s:submit>
                                    </form>
                                </div><!-- /.widget-main -->
                            </div><!-- /.widget-body -->
                        </div><!-- /.widget-box -->
                    </div><!-- /.col -->
                </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/HoldOn.min.js"></script>

<script src="summernote/summernote.min.js"></script>
<script src="js/localhostCourseEdit_nowizard.js"></script>

</body>
</html>
