<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<form:form action="saveProduct" modelAttribute="product" method="post" >
<!-- <tr>
<th>product id</th>
<td>
<form:input type ="hidden" path="id"/></td>
</tr> -->
<tr>
<th>product name</th>
<td><form:input type ="text" path ="name"/></td><br><br>
</tr><br>

<tr>
<th>product prize</th>
 <td><form:input type ="text" path ="prize"/></td><br><br>
 </tr><br>
 <tr>
<th>quantity</th>
<td><form:input type ="text" path ="quantity"/></td><br><br>
</tr><br>
<tr>
<th>description</th>
 <td><form:input type ="text" path ="description"/></td><br><br>
 </tr><br>
 <th>Category ID</th>
 <td><form:select name="CategoryId" path="CatId">
         <option value="-1" selected>select..</option>
         <c:forEach var="category" items="${catlist}">
         <option value="${category.catname}">${category.catname}</option></c:forEach></form:select>
</td><br><br>

<th>Supplier ID</th>
 <td><form:select path ="SupId">
         <option value="-1">select..</option>
         <c:forEach var="supplier" items="${suplist}">
         <option value="${supplier.suppliername}">${supplier.suppliername}</option></c:forEach>
         </form:select>
</td><br><br>
<tr>  
<td><h3>Upload an image</h3><input type="file" path="pimage"></td></tr> 
<tr>   
    
     <td><input type ="submit" value="Submit" ></td>
        
     </tr>


</form:form>
</center>
<table style="width:100%" border="1">
            <tr>
            	<th>Image</th>
                <th>product id</th>
                <th>product name</th>
                <th>product quantity</th>
                <th>product description</th>
                <th>product prize</th>
            </tr>

            <c:forEach items="${prolist}" var="product">
            <c:url value="/resources/${product.id}.jpg" var="imageurl"></c:url>
                <tr>
                	<td><img src="${imageurl}" height="50" width="50"></td>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.quantity}</td>
                    <td>${product.description}</td>
                    <td>${product.prize}</td>
					
  				</tr>
  				</c:forEach>
  				
</table>		
</body>
</html>