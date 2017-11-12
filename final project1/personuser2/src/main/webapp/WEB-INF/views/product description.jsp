<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="Header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
.container
{
height:600px;
}

</style>
<body>
<br>
<br>

<center><h2>product details</h2></center>
<div class="container">
<div class="row">
<div class="col-sm-5">

<c:url value="/resources/${product.id }.jpg" var="imageurl"></c:url>
<img src="${imageurl }" height="300px" width="400px">
</div>
<div class="col-sm-7">
<fieldset>
<tr>
<td>
<h4>Product name:</h4></td><td>${product.name }</td>
</tr>
<tr>
<td><h4>price:</h4></td><td>Rs.${product.prize }</td></tr>
<tr>
<td><h4>Description:</h4></td><td>${product.description }</td></tr><br>
<tr>
<td>

<form action="<c:url value="/addcart/${product.id}"/>" method="get">
</td><br>
<td>

<select name="quantity">

    <option hidden="true"><h4>Quantity</h4></option>
    <option name="1">1</option>
    <option name="2" >2</option>
    <option name="3" >3</option>
    <option name="4" >4</option>
    <option name="5" >5</option>
    <option name="6">6</option>
    <option name="7" >7</option>
    <option name="8" >8</option>
    <option name="9" >9</option>
    
</select><br><br>
<button type="submit" 
 style="background:none;border:none;padding:0" class="btn btn-default btn-lg">
<span  class="glyphicon glyphicon-shopping-cart">AddCart</span></button>
<br><br>
<table>
<tr><th><h3>Specification:</h3></th></tr>
<tr><td>Style Code	:</td><td>Set Of Two Combo</td></tr>
<tr><td>Occasion	:</td><td>Party-Wedding, Formal, Casual</td></tr>
<tr><td>Watch Type	:</td><td>Wrist Watch</td></tr>
<tr><td>Pack of		:</td><td>1</td></tr>
</table>
<c:url value="/returns" var="url1"></c:url>
<a href="${url1}"><h4>Back to productList</h4></a>
</tr>
</fieldset>
<c:if test="${!sessionScope.loggedIn}">
<form action="login" method="get">

</form>
</c:if>

</div>
</div>
</div>
</body>
</html>
<%@ include file="CommonFooter.jsp" %>