<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Watch collections</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 <style>
.navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control 
  {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  h1
  {
  background-color:#AD5C33;
  }

 </style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">WATCHES</a>   
</div>
<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-left">
        <li><a href="#home">HOME</a></li>
        <li><a href="#contact">CONTACT US</a></li>
		<li><a href="Userproduct">PRODUCT</a></li>
		
		</ul>
		<ul class="nav navbar-nav navbar-right">
		<li class=dropdown">
    <a  href="" class="dropdown-toggle" data-toggle="dropdown"> 
    Select by Category<b class="caret"></b></a>
    <ul class="dropdown-menu">
    <li>
    <c:forEach items="${catlist }" var="c">
    <c:url value="/product/searchbycategory?searchCondition=${c.catname }" var="catName"></c:url>
   <a href="${catName }">${c.catname }</a> </c:forEach>
   <c:url value="/product/searchbycategory?searchCondition=All" var="search"></c:url>
   <a href="${search }">All</a></li></ul></li>
		
		<li><a href="perform_logout">LOGOUT</a></li>
		<li><a href="addcart"><div class="font"></div><span class="glyphicon glyphicon-shopping-cart">AddCart</div></span></a></li>
		</ul>
		</div>
		</div>
	</nav><br><br>

<center><h1>Watch Collection</h1></center>
        
        <div class="container">
        <c:forEach items="${prolist}" var="product">
                    <div class="column">
                            <div class="col-sm-6 col-md-3"><a href="productdesc/${product.id }" class="thumbnail">
		<img src="<c:url value="/resources/${product.id }.jpg"/>" style="height:245px; width:245px" alt="Error on loading images"/></a>
		<div class="caption">
		<h4>PRODUCT NAME:${product.name}</h4>
		<p>Rs.${product.prize}</p>
			</div>
                            </div> </div>  </c:forEach>
                          <br>
             
      
                           
            
        </div>
   <footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>My watches</p> 
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>
        
</body>
</html>