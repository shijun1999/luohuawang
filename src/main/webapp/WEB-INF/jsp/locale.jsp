<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
</head>

<body>
<h1>Struts 2 localization example</h1>

<s:form action="validateUser" namespace="/user">

    <s:textfield key="abc" name="username" />
    <s:password key="global.password" name="password"/>
    <s:submit key="global.submit" name="submit" />

</s:form>

<s:url var="localeEN" namespace="/" action="localee" >
    <s:param name="request_locale" >en</s:param>
</s:url>
<s:url var="localezhCN" namespace="/" action="localee" >
    <s:param name="request_locale" >zh_CN</s:param>
</s:url>
<s:url var="localeDE" namespace="/" action="localee" >
    <s:param name="request_locale" >de</s:param>
</s:url>
<s:url var="localeFR" namespace="/" action="localee" >
    <s:param name="request_locale" >fr</s:param>
</s:url>

<s:a href="%{localeEN}" >English</s:a>
<s:a href="%{localezhCN}" >Chinese</s:a>
<s:a href="%{localeDE}" >German</s:a>
<s:a href="%{localeFR}" >France</s:a>

</body>
</html>