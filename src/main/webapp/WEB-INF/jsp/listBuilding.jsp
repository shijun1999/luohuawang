<!doctype html >
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                            <h2 style="text-align: center;"><strong><s:text name="management.house.title"/></strong></h2>

                            <h3><a href="addBuilding" class="taofun-main-color"><s:text name="management.house.addnewhouse"/></a></h3>
                        </div>
                    </div>

                    <c:if test="${!empty buildings}">
                        <s:form id="building_list_form" method="post" action="">

                            <input type="hidden" id="buildingId" name="building.id">

                            <div class="wpb_text_column wpb_content_element">
                                <div class="wpb_wrapper">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th class="col-sm-3 taofun-main-color"><s:text name="management.house.name"/></th>
                                            <th class="col-sm-2 taofun-main-color"><s:text name="management.house.lat"/></th>
                                            <th class="col-sm-2 taofun-main-color"><s:text name="management.house.lng"/></th>
                                            <th class="col-sm-3 taofun-main-color"><s:text name="management.house.address"/></th>
                                            <th class="col-sm-1 taofun-main-color"><s:text name="management.house.edit"/></th>
                                            <th class="col-sm-1 taofun-main-color"><s:text name="management.house.delete"/></th>
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
                                                    <button id="update-${emp.id}" name="building" type="submit"><s:text name="management.house.edit"/>
                                                    </button>
                                                </td>
                                                <td>
                                                    <button id="delete-${emp.id}" name="building" type="submit"><s:text name="management.house.delete"/>
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