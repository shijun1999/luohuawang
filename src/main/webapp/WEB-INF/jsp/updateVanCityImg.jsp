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

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="/css/chosen.min.css"/>
    <link rel="stylesheet" href="/css/daterangepicker.css"/>
    <link rel="stylesheet" href="/css/jquery.timepicker.css"/>
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


                                                <div class="step-pane" data-step="4">


                                                    <h4 class="lighter block kootour-main-color">11. 图片</h4>
                                                    <div class="row clearfix">
                                                        <div id="uploaded-images">
                                                            <span class="center">There is no image here.</span>
                                                        </div>
                                                    </div>
                                                    <div class="hr hr-8"></div>

                                                    <h4 class="lighter block kootour-main-color">12.上传图片</h4>
                                                    <form id="uploadForm" action="" method="post" target="_self"
                                                          enctype="multipart/form-data">
                                                        <input id="input-dim-1" name="file" type="file" multiple
                                                               class="file-loading" accept="image/*"
                                                               data-overwrite-initial="false">
                                                    </form>
                                                </div>


                                </div><!-- /.widget-main -->
                            </div><!-- /.widget-body -->
                        </div><!-- /.widget-box -->
                    </div><!-- /.col -->
                </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

</div><!-- /.main-container -->

<script src="/js/jquery-2.2.0.min.js"></script>
<script src="/js/bootstrap.min.js"></script>

<!-- ace scripts -->
<script src="/js/ace-elements.min.js"></script>
<script src="/js/ace.min.js"></script>

<!-- page specific plugin scripts -->
<script src="/summernote/summernote.min.js"></script>
<script src="/js/fileinput.js"></script>
<script src="/js/fuelux.wizard.min.js"></script>
<script src="/js/jquery.validate.min.js"></script>
<script src="/js/HoldOn.min.js"></script>
<script src="/js/addOrEditBuilding.js"></script>

</body>
</html>

