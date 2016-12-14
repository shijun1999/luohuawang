<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <%@ include file="content.html" %>
    <link rel="stylesheet" href="/css/morecontent.css"/>
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
                            <h1 style="text-align: center;"><strong>房屋信息记录管理</strong></h1>

                            <a href="addBuilding">Add Building</a>
                        </div>
                    </div>

                    <c:if test="${!empty buildings}">
                        <s:form id="building_list_form" method="post" action="">

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
                                                <td>
                                                    <button id="update-${emp.id}" name="building" type="submit">update
                                                    </button>
                                                </td>
                                                <td>
                                                    <button id="delete-${emp.id}" name="building" type="submit">Delete
                                                    </button>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>

                                </div>
                            </div>

                        </s:form>
                    </c:if>
                </div>

                <div class="wpb_wrapper">
                    <div class="wpb_text_column wpb_content_element ">
                        <div class="wpb_wrapper">
                            <h1 style="text-align: center;"><strong>城市信息记录管理</strong></h1>
                            <a href="addVanCity">Add VanCity</a>
                        </div>
                    </div>

                    <c:if test="${!empty vanCities}">
                        <s:form id="vanCity_list_form" method="post" action="">

                            <input type="hidden" id="vanCityId" name="vanCity.id">

                            <div class="wpb_text_column wpb_content_element ">
                                <div class="wpb_wrapper">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>CityName</th>
                                            <th>description</th>
                                            <th>Order</th>
                                            <th>edit</th>
                                            <th>Delete</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${vanCities}" var="emp">

                                            <tr>
                                                <td>${emp.cityNameC} (${emp.cityNameE})</td>
                                                <td>
                                                    <div class="more">${emp.description} </div>
                                                </td>

                                                <td>${emp.order}</td>
                                                <td>
                                                    <button id="update-${emp.id}" name="vanCity" type="submit">update
                                                    </button>
                                                </td>
                                                <td>
                                                    <button id="delete-${emp.id}" name="vanCity" type="submit">Delete
                                                    </button>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>

                                </div>
                            </div>

                        </s:form>
                    </c:if>
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
<script src="/js/morecontent.js"></script>
</body>
</html>