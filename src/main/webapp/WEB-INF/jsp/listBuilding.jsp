<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>温哥华淘房网</title>

    <link rel='stylesheet' href='/css/taofun-style.css' type='text/css'/>
    <link rel="stylesheet" href="/css/taofun.css"/>
</head>

<body>


<jsp:include page="taofunheader.jsp"/>
<div class="td-main-content-wrap td-main-page-wrap">
    <div class="td-container">
        <div class="vc_row wpb_row td-pb-row">
            <div class="wpb_column vc_column_container td-pb-span12">
                <div class="wpb_wrapper">
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <h1 style="text-align: center;"><strong>南加州高分学区房 &#8211; 小学 (10分)</strong></h1>

                        </div>
                    </div>

                    <c:if test="${!empty buildings}">
                    <s:form id="list_form" method="post" action="">

                    <input type="hidden" id="buildingId" name="building.id">

                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <table>
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>lat</th>
                                    <th>lng</th>
                                    <th>address</th>
                                    <th>edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${buildings}" var="emp">
                                <tr>
                                    <td>${emp.name}</td>
                                    <td>${emp.lat}</td>
                                    <td>${emp.lng}</td>
                                    <td>${emp.address}</td>
                                    <td><button id="update-${emp.id}" type="submit">update</button></td>
                                    <td><button id="delete-${emp.id}" type="submit">Delete</button></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                        </div>
                    </div>

                    </s:form>
                    </c:if>

                    <a href="add">Add Building</a>
                </div>
            </div>
        </div>
    </div>
</div> <!-- /.td-main-content-wrap -->

<jsp:include page="taofunfoot.jsp"/>
</div><!--close content div-->


<script src="/js/jquery-2.2.0.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/listBuilding.js"></script>
</body>
</html>