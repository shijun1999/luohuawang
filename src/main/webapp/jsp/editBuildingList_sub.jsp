<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Spring-4 + Struts-3 + Hibernate Integration Demo</title>
    <style>
	table.list
	{
		border-collapse:collapse;
		width: 40%;
	}
	table.list, table.list td, table.list th
	{
		border:1px solid gray;
		padding: 5px;
	}
	</style>
</head>
<body>
 
<h2>Spring-4 + Struts-3 + Hibernate Integration Demo</h2>
 
<s:form method="post" action="add">
    <table>
	    <tr>
	        <td><s:textfield key="label.name" name="building.name"/></td>
	    </tr>
	    <tr>
	        <td><s:textfield key="label.lat" name="building.lat"/></td>
	    </tr>
	    <tr>
	        <td><s:textfield key="label.lng" name="building.lng"/></td>
	    </tr>
	    <tr>
	        <td>
	        	<s:submit key="label.add" name="submit"></s:submit>
	        </td>
	    </tr>
	</table> 
</s:form>
 
     
<h3>Louhuas id= ${building.id}</h3>
<c:if  test="${!empty buildings}">
	<table class="list">
		<tr>
		    <th align="left">Name</th>
		    <th align="left">lat</th>
		    <th align="left">lng</th>
			<th align="left">edit</th>
		</tr>

		<c:forEach items="${buildings}" var="emp">
		    <tr>
		        <td>${emp.name}</td>
		        <td>${emp.lat}</td>
		        <td>${emp.lng}</td>
		        <td><a href="delete/${emp.id}">delete</a> <a href="edit/${emp.id}">delete</a></td>
		    </tr>
		</c:forEach>
	</table>
</c:if>
 
</body>
</html>