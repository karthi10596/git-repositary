<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="Header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;    
}
</style>
</head>
<body>
<br><br><br><br>
<table class=" cellspacing="10" align="center"  style="width:100%" >
<tr bgcolor="white">
<td><b><h3>ProductName</h3> </b></td>
<td><b><h3>Quantity</h3></b></td>
<td><b><h3>SubTotal</h3></b></td>
<td><b><h3>ProductImage</h3></b></td>
<td><b><h3>Operation</h3></b></td>
</tr>
<c:forEach items="${cartitems }" var="cartitem">
<tr>
<form action="<c:url value="/updateCartItem/${cartitem.citemid }" />" />
<td>${cartitem.name }</td>
<td><input type="text" value="${cartitem.quantity}" name="quantity" required/></td>
<td>Rs.${cartitem.prize * cartitem.quantity}</td>
<td><img src="<c:url value='/resources/${cartitem.id}.jpg'/>" width="160" height="110">
<td>
<a href="<c:url value="/deleteCartItem/${cartitem.citemid }" />">DELETE </a>
</td>
</tr>

</c:forEach>		
<tr>
<br>
<td><a href="<c:url value="/CheckOut" />"> <b><h4>CheckOut</h4></b></a></center></td>
</tr>
</table>
</body>
</html>
<%@include file="CommonFooter.jsp" %>