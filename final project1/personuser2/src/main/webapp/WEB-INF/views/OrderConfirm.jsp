<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="Header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body { margin-top:20px; }

/* CSS for Credit Card Payment form */
.credit-card-box .panel-title {
    display: inline;
    font-weight: bold;
}
.credit-card-box .form-control.error {
    border-color: red;
    outline: 0;
    box-shadow: inset 0 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(255,0,0,0.6);
}
.credit-card-box label.error {
  font-weight: bold;
  color: red;
  padding: 2px 8px;
  margin-top: 2px;
}
.credit-card-box .payment-errors {
  font-weight: bold;
  color: red;
  padding: 2px 8px;
  margin-top: 2px;
}
.credit-card-box label {
    display: block;
}
/* The old "center div vertically" hack */
.credit-card-box .display-table {
    display: table;
}
.credit-card-box .display-tr {
    display: table-row;
}
.credit-card-box .display-td {
    display: table-cell;
    vertical-align: middle;
    width: 50%;
}
/* Just looks nicer */
.credit-card-box .panel-heading img {
    min-width: 180px;
}

</style>

</head>
<body>
<br><br><br><br>
<table cellspacing="3" align="center" width="100%" >
<tr>
<td colspan="5"><center><h3>Shopping Cart</h3></center></td>
</tr>
<tr>
<tr bgcolor="white" width="100%">
<td><b><h4>Product Name</h4></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><b><h4>Quantity</h4></b>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><b><h4>SubTotal</h4></b>&nbsp;&nbsp;&nbsp;</td>
<td><b><h4>Image</h4></b></td>
</tr>
<tr>

<c:forEach items="${cartitems}" var="cartitem">
<tr>
<td>${cartitem.name}</td>

<td><input type="text" value="${cartitem.quantity }" name="quantity" required/></td>
<td>${cartitem.prize * cartitem.quantity }</td>
<td><img src="<c:url value='/resources/${cartitem.id}.jpg'/>" width="100" height="100">
</tr>
</c:forEach>
<tr>
<td colspan="3">Grand Total</td>
<td>${grandtotal }</td>
</tr>
</table>



<table cellspacing="3" cellpadding="10" align="center" border="5">
<tr bgcolor="white">
<td colspan="2"><center><strong><h3><b>Payment Information</b></h3></strong></center></td>
</tr>

<tr>
<td><h4><b>Payment Mode</b></h4></td>
<td>
<input type="radio" name="pmode" value="CC" /><b>Credit Card</b>
<input type="radio" name="pmode" value="IB" /><b>Internet Banking</b>
<input type="radio" name="pmode" value="CD" /><b>Cash On Delivery</b>
</td>

<tr bgcolor="black">
<td colspan="2"><center><a href="OrderConfirm"><input type="submit" value="pay" /></center></td>



</table>
<br><br>

<br><br>

</body>
</html>
<%@include file="CommonFooter.jsp" %>