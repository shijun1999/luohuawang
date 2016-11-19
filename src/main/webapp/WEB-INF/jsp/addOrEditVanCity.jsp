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

    <!-- text fonts -->

    <!-- ace styles -->
    <link rel="stylesheet" href="/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style">

    <link rel="stylesheet" href="/css/font-awesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="/css/HoldOn.min.css"/>

    <!-- kootour stles -->
    <link rel="stylesheet" href="/css/kootour.css">


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
                                            <input type="hidden" id="picture" name="picture">
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


                                                <hr>
                                                <h4 class="lighter block kootour-main-color">8.建商</h4>

                                                <div class="form-validator">
                                                    <div class="clearfix"><input type="text" id="construction"
                                                                                 name="construction"></div>
                                                </div>



                                                <h4 class="lighter block kootour-main-color">12.上传图片</h4>
                                            <div id="uploaded-images">
                                                <span class="center">There is no image here.</span>
                                            </div>
                                                    <input id="input-dim-1" name="file" type="file" multiple
                                                           class="file-loading" accept="image/*" >

                                            <button id="vancity_submit" type="submit" class="btn btn-kootour-bold fullwidth">
                                                Add/Update </button>
                                        </form>
                                    </div>
                                    <hr>

                    </div><!-- /.col -->
                </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

</div><!-- /.main-container -->



<script src="/js/jquery-2.2.0.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<!-- page specific plugin scripts -->
<script src="/summernote/summernote.min.js"></script>
<script src="/js/fileinput.js"></script>
<script src="/js/jquery.validate.min.js"></script>
<script src="/js/HoldOn.min.js"></script>
<script src="/js/addOrEditVanCity.js"></script>

<script>
    $("#input-dim-1").fileinput({
       /* language: 'en', //设置语言
        showCaption: false,//是否显示标题
        browseClass: "btn btn-primary", //按钮样式
        maxFileCount: 5,
        uploadUrl: "uploadBuildingImage",
        allowedFileExtensions: ["jpg", "png", "jpeg"],
        maxFileSize: 5000*/
        uploadUrl: "uploadVanCityImage", // server upload action
        uploadAsync: false,
        showUpload: false, // hide upload button
        showRemove: false, // hide remove button
        showPreview:false,
        minFileCount: 1,
        maxFileCount: 3
    }).on("filebatchselected", function(event, files) {
        // trigger upload method immediately after files are selected
        $("#input-dim-1").fileinput("upload");
    }).on('filebatchuploadsuccess', function(event, data) {
        var response = data.response;
        var obj = JSON.parse(response);
        var copyFile = obj.copyFile;
        var imageUrl = obj.imageUrl;
        $("#picture").val(copyFile);
        var html = '' +
                '<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">' +
                '<img width="100%" src="' + imageUrl + copyFile + '" style="display: inline;"> </div>' ;
        $("#uploaded-images").append(html);
    });
</script>
</body>
</html>

