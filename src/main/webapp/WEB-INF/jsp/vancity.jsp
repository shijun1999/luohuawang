<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html><!--<![endif]-->
<head>
    <title>温哥华淘房网</title>

    <link rel="stylesheet" href="/css/bootstrap3.3.7.min.css">
    <link rel='stylesheet' href='/css/taofun-style.css' type='text/css'/>
    <link href="/css/kootour.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/pagination.css"/>
    <link rel="stylesheet" href="/css/morecontent.css"/>
</head>
<body>
<jsp:include page="taofunheader.jsp"/>

<div class="td-container td-post-template-default ">
    <div class="td-pb-row">
        <div class="td-pb-span12 td-main-content" role="main">
            <div class="td-ss-main-content">
                <div class="clearfix"></div>

                <article>
                    <div class="td-post-header">

                        <ul class="td-category">
                            <li class="entry-category"><a href="http://www.ladichan.com/?cat=35">
                                <s:property value="vanCity.cityNameC"/>南加州热门城市3</a>
                            </li>
                        </ul>
                        <header class="td-post-title">
                            <h1 class="entry-title"><s:property value="vanCity.cityNameC"/> <s:property
                                    value="vanCity.cityNameE"/> 城市介绍-3--<s:property value="vanCityId"/></h1>
                        </header>
                    </div>

                    <div class="td-post-content">
                        <div class="td-post-featured-image">
                            <figure><a
                                    href="http://www.ladichan.com/wp-content/uploads/2016/02/20141021085722424.jpg"
                                    data-caption="蒙特利公园Monterey Park" class="td-modal-image"><img
                                    width="696" height="463" class="entry-thumb td-animation-stack-type0-2"
                                    src="<s:property value="vanCity.picture"/>"/>"
                                alt="蒙特利公园Monterey Park" title="蒙特利公园Monterey Park"></a>
                                <figcaption class="wp-caption-text">蒙特利公园Monterey Park</figcaption>
                            </figure>
                        </div>
                        <div id="description"><s:property value="vanCity.description"/></div>
                        <p>平均家庭收入：52,159美元</p>
                        <p>房价中位数：547,800美元</p>
                        <p>房价上涨趋势：年涨21.11%</p>
                        <p>学校：小学：8所初中：1所高中：2所</p>
                        <div id="aaa"></div>
                        <p><a href="http://www.ladichan.com/?page_id=592">点击查看蒙特利公园 Monterey Park 热门上市屋！</a>
                        </p>
                    </div>
                </article> <!-- /.post -->


            </div>
        </div>
    </div> <!-- /.td-pb-row -->
</div> <!-- /.td-container -->


<jsp:include page="taofunfoot.jsp"/>

<script src="/js/jquery-2.2.0.min.js"></script>
<script src="/js/bootstrap3.3.7.min.js"></script>
<script src="/js/vancity.js"></script>

</body>
</html>