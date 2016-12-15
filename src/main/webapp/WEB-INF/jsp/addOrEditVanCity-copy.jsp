<%@ page import="com.vancondos.util.Const" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>Edit Course</title>

    <meta name="description" content="overview &amp; stats">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/bootstrap-dialog.min.css"/>
    <link rel="stylesheet" href="/summernote/summernote.css"/>
    <link rel="stylesheet" href="/css/fileinput.min.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style">

    <link rel="stylesheet" href="/css/font-awesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="/css/HoldOn.min.css"/>

    <!-- kootour stles -->
    <link rel="stylesheet" href="/css/kootour.css">

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/css/ace-part2.min.css" class="ace-main-stylesheet"/>
    <![endif]-->

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="/js/html5shiv.min.js"></script>
    <script src="/js/respond.min.js"></script>
    <![endif]-->


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


    <style>
        .user-thumbnail {
            width: 480px;
            height: 420px;
            border: 3px solid #2277DD;
            margin-bottom: 15px;
            background-size: cover;
            background-position: center center;
            border-radius: 5%;
        }

        .nomargin {
            margin: 0;
        }
    </style>
</head>

<body class="no-skin">
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

                                <h4 class="lighter block kootour-main-color">1.City Name (English)</h4>
                                <div class="form-validator">
                                    <div class="clearfix">
                                        <input id="cityNameE" type="text" name="cityNameE" class="form-control"/>
                                    </div>
                                </div>
                                <hr>

                                <h4 class="lighter block kootour-main-color">2.City Name (Chinese)</h4>
                                <div class="form-validator">
                                    <div class="clearfix">
                                        <input id="cityNameC" type="text" name="cityNameC" class="form-control"/>
                                    </div>
                                </div>
                                <hr>

                                <h4 class="lighter block kootour-main-color">3.Description</h4>
                                <div id="desc" name="desc"></div>
                                <hr>

                                <h4 class="lighter block kootour-main-color">4.Sort # </h4>
                                <div class="form-validator">
                                    <div class="clearfix">
                                        <input id="sort" type="text" name="sort" class="form-control"/>
                                    </div>
                                </div>
                                <hr>

                                <h4 class="lighter block kootour-main-color">5. On the Topbar</h4>
                                <div class="form-validator">
                                    <div class="clearfix">
                                        <div class="checkbox">
                                            <label><input type="checkbox" id="onTopbar"> On the Topbar</label>
                                        </div>
                                    </div>
                                </div>

                                <h4 class="lighter block kootour-main-color">6. Picture</h4>


                                            <div class="user-thumbnail nomargin" id="output-uploader"
                                                 style="background-image:url('<s:property
                                                         value="#request.picture"/>')"></div>

                                          <!--  <input class="file-input" type='file' id="output" accept="image/*"> -->
                                           <!-- <input id="output" name="output" type="file" multiple class="file-loading"> -->
                                <form id="uploadForm" action="" method="post" target="_self"
                                      enctype="multipart/form-data">
                                    <input id="input-dim-1" name="file" type="file" multiple
                                           class="file-loading" accept="image/*"
                                           data-overwrite-initial="false">
                                </form>


                                <button id="vancity_submit" type="submit" class="btn btn-kootour-bold fullwidth">
                                    Add/Update
                                </button>


                            </form>
                        </div><!-- /.widget-box -->
                    </div><!-- /.col -->
                </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

</div><!-- /.main-container -->

<!--
<script>
//    var loadFile = function (event) {
//        var output = document.getElementById('output-uploader');
//        output.style.backgroundImage = "url('" + URL.createObjectURL(event.target.files[0]) + "')";
//
//    };

</script> -->

<script>
       /* $('#output').on('change', function (event) {
            var uuu = URL.createObjectURL(event.target.files[0]);
            alert(uuu)
            $('#output-uploader').css('background-image', 'url(' + uuu + ')');
            // $('#output').fileinput('upload');
        });
*/
        var $input = $("#output");
        $input.fileinput({
            uploadUrl: "uploadVanCityImage", // server upload action
            uploadAsync: false,
            showUpload: false, // hide upload button
            showRemove: false, // hide remove button
            minFileCount: 1,
            maxFileCount: 1
        }).on("filebatchselected", function(event, files) {
            // trigger upload method immediately after files are selected
            var uuu = URL.createObjectURL(event.target.files[0]);
            $('#output-uploader').css('background-image', 'url(' + uuu + ')');
            $input.fileinput("upload");
        });
</script>

<script src="/js/bootstrap.min.js.copy"></script>

<!-- ace scripts -->
<script src="/js/ace-elements.min.js"></script>
<script src="/js/ace.min.js"></script>

<!-- page specific plugin scripts -->
<script src="/summernote/summernote.min.js"></script>
<script src="/js/fileinput.js"></script>
<script src="/js/fuelux.wizard.min.js"></script>
<script src="/js/jquery.validate.min.js"></script>
<script src="/js/HoldOn.min.js"></script>
<script src="/js/addOrEditVanCity.js"></script>

</body>
</html>

