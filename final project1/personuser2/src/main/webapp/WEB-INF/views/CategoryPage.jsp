<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"type="text/javascript"></script>
<style>
body
{
background-color:#5CCCAB;
}
</style>
</head>
<body>
<nav class="navbar navbar-inverse">
<div class="container-fluid">
<ul class="nav navbar-nav">
<li><a href="category" style="color:white;">CATEGORY</a></li>
<li><a href="supplier" style="color:white;">SUPPLIER</a></li>
<li><a href="product" style="color:white;">PRODUCT</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li><a href="Logout" style="color:white;">LOGOUT <span class="glyphicon glyphicon-log-out"></span></a></li></ul>
</div></nav>


<center>
<fieldset>
<form:form action="saveCategory" commandName="category" method="post"> 
<!--<tr>
  <th>id</th>
<td>
<form:input type="hidden" path="catid"/></td></tr> -->
<tr>
<th>name</th>
<td><form:input type="text" path="catname" /></td></tr><br><br>
<tr>
<th>prize</th>
<td><form:input type="text" path="catdesc" /></td></tr><br>
<tr>
<td><input type="submit" value="submit">
</tr>
</form:form>
</fieldset>
</center>
<table style="width:100%" border="1">
            <tr>
                <th>Category id</th>
                <th>Category name</th>
                <th>Category prize</th>
                <th>delete</th>
                <th>Edit</th>
            </tr>

            <c:forEach items="${catlist}" var="category">
                <tr>
                    <td>${category.catid}</td>
                    <td>${category.catname}</td>
                    <td>${category.catdesc}</td>
                    <td><a href="catdelete?cid=${category.catid}">delete</a></td>
                    <td><a href="catedit?cid=${category.catid}">Edit</a></td> 
				</tr>
			</c:forEach>
</table>		
</body>
</html>