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
<form:form action="updateuser" method="post" commandName="user1">
<fieldset>
    <label><b>FirstName</b></label>
    <form:input type="text" path="firstname" value="${userdata.firstname}" /><br>
    <br><label><b>LastName</b></label>
    <form:input type="text" path="lastname" value="${userdata.lastname}" /><br>
    <br><label><b>UserName</b></label>
    <form:input type="text" path="username" value="${userdata.username}" /><br>
    <br><label><b>Password</b></label>
    <form:input type="password" path="password" value="${userdata.password}" /><br>
    <br><label><b>Address</b></label> 
    <form:input type="text" path="address" value="${userdata.address}" /><br>
    <br><label><b>Email-Id</b></label>
    <form:input type="email" path="email" value="${userdata.email}" /><br>
    <input type="submit" value="editForm"/>
</fieldset>
</form:form>
</body>
</html>