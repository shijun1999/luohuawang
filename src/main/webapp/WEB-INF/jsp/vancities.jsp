<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
    <%@ include file="content.html" %>

    <link rel="stylesheet" href="/css/pagination.css"/>
    <link rel="stylesheet" href="/css/morecontent.css"/>
    <style type="text/css">
        ul li {
            margin-left: 0px;
        }
    </style>
</head>

<body>
<jsp:include page="taofunheader.jsp"/>

<div class="td-main-content-wrap td-main-page-wrap td-container">
    <section>
        <div id="dataContainer"></div>
        <div id="pagination"></div>
    </section>
</div>


<jsp:include page="taofunfoot.jsp"/>

<script src="/js/template/template.js"></script>
<script src="/js/pagination.js"></script>
<script src="/js/handlebars.js"></script>
<script src="/js/vancities.js"></script>


</body>
</html>