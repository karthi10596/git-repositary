<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>edit category page</title>
</head>
<body>
<form:form action="editcategory" method="post" modelAttribute="category1">
<fieldset>
    <label><b>Category id</b></label>
    <form:input type="text" path="catid" value="${categorydata.catid}" /><br>
    <br><label><b>category name</b></label>
    <form:input type="text" path="catname" value="${categorydata.catname}" /><br>
    <br><label><b>category description</b></label>
    <form:input type="text" path="catdesc" value="${categorydata.catdesc}" /><br>
	<input type="submit" value="edit"/>
</fieldset>
</form:form>
</body>
</html>