<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>title</title>
    <style>
        table.list {
            border-collapse: collapse;
            width: 40%;
        }

        table.list, table.list td, table.list th {
            border: 1px solid gray;
            padding: 5px;
        }
    </style>
</head>
<body>

<h2>Building List</h2>

<h3>Louhuas id= ${building.id}</h3>
<c:if test="${!empty buildings}">
    <s:form id="list_form" method="post" action="">

        <input type="hidden" id="buildingId" name="building.id">
        <table class="list">
            <tr>
                <th align="left">Name</th>
                <th align="left">lat</th>
                <th align="left">lng</th>
                <th align="left">edit</th>

                <th align="left">Delete</th>
            </tr>

            <c:forEach items="${buildings}" var="emp">
                <tr>
                    <td>${emp.name}</td>
                    <td>${emp.lat}</td>
                    <td>${emp.lng}</td>
                    <td>
                        <button id="update-${emp.id}" type="submit">update</button>
                    </td>
                    <td>
                        <button id="delete-${emp.id}" type="submit">Delete</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </s:form>
</c:if>

<a href="add">Add Building</a>

<script src="/js/jquery-2.2.0.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/listBuilding.js"></script>
</body>
</html>

