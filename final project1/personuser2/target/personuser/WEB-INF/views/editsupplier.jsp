<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="updatesupplier" method="post" commandName="supplier1">
<fieldset>
    <label><b>Supplier id</b></label>
    <form:input type="text" path="supplierid" value="${supplierdata.supplierid}" /><br>
    <br><label><b>Supplier name</b></label>
    <form:input type="text" path="suppliername" value="${supplierdata.suppliername}" /><br>
    <br><label><b>Supplier description</b></label>
    <form:input type="text" path="supplieraddress" value="${supplierdata.supplieraddress}" /><br>
	<input type="submit" value="edit"/>
</fieldset>
</form:form>



</body>
</html>