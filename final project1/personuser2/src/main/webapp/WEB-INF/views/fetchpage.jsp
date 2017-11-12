<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"type="text/javascript"></script>

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
<li><a href="fetchpage">USER FETCHDATA</a></li>
<li><a href="perform_logout" style="color:white;">LOGOUT <span class="glyphicon glyphicon-log-out"></span></a></li></ul>
</div></nav>

<table border="1" cellpadding="5">
            <tr>
                <th>firstname</th>
                <th>lastname</th>
                <th>username</th>
                <th>Password</th>
                <th>email</th>
                <th>address</th>
                <th>delete</th>
                <th>edit</th>
            </tr>

            <c:forEach items="${userlist}" var="user">
                <tr>
                    <td>${user.firstname}</td>
                    <td>${user.lastname}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.email}</td>
                    <td>${user.address}</td>
                     <td><a href="delete?uid=${user.username}">delete</a></td> 
           			<td><a href="edit?uid=${user.username}">Edit</a></td>
            </tr>
            </c:forEach>
            
        </table>

</body>
</html>