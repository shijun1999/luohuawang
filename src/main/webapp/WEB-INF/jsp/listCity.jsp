<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <%@ include file="content.jsp" %>
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
                            <h2 style="text-align: center;"><strong><s:text name="management.city.title"/></strong></h2>
                            <h3><a href="addVanCity" class="taofun-main-color"><s:text name="management.city.addnewcity"/></a></h3>
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
                                            <th class="col-sm-2 taofun-main-color"><s:text name="management.city.name"/></th>
                                            <th class="col-sm-7 taofun-main-color"><s:text name="management.city.description"/></th>
                                            <th class="col-sm-1 taofun-main-color"><s:text name="management.city.order"/></th>
                                            <th class="col-sm-1 taofun-main-color"><s:text name="management.city.edit"/></th>
                                            <th class="col-sm-1 taofun-main-color"><s:text name="management.city.delete"/></th>
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
                                                    <button id="update-${emp.id}" name="vanCity" type="submit"><s:text name="management.city.edit"/>
                                                    </button>
                                                </td>
                                                <td>
                                                    <button id="delete-${emp.id}" name="vanCity" type="submit"><s:text name="management.city.delete"/>
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


<script src="/js/listBuilding.js"></script>
<script src="/js/morecontent.js"></script>
</body>
</html>