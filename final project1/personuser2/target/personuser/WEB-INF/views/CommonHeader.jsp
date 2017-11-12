<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Watch tools</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
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
  .font
  {
  fontsize:40px;
  }
  
    
</style>
<body>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

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
 <c:choose>
<c:when test="${sessionScope.UserLoggedIn != null}">

    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-left">
        <li><a href="#home">HOME</a></li>
        <li><a href="#contact">CONTACT US</a></li>
		<li><a href="#about us">ABOUT US</a></li>
		<li><a href="Userproduct">PRODUCT</a></li>
		
		</ul>
		<ul class="nav navbar-nav navbar-right">
		<li><a href="perform_logout">LOGOUT</a></li>
		<li><a href="Cart"><div class="font"></div><span class="glyphicon glyphicon-shopping-cart">Cart</div></span></a></li>
		</ul>
		</div>
	</nav>
	<div style="height:650px;overflow:hidden;" id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

        <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="C:\MEN WATCHES\watch1.jpg " alt="New York" width="1200" height="700"> 
      </div>
      <div class="item">
        <img src="C:\MEN WATCHES\watch2.jpg "  alt="Chicago" width="1200" height="700">     
      </div>
    
      <div class="item">
        <img src="C:\MEN WATCHES\watch3.jpg "  alt="Los Angeles" width="1200" height="700">      
      </div>
    </div>
   
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

  <div class="row">
    <div class="col-sm-4 watch-list">
      <p class="text-center"><strong>FAST TRACK</strong></p><br>
      <a href="#demo" data-toggle="collapse">
        <img src="C:\MEN WATCHES\fasttrack.jpg" class="img-circle" alt="Random Name" width="255" height="255">
      </a>
      
    </div>
    <div class="col-sm-4 watch-list">
      <p class="text-center"><strong>Rolex</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
        <img src="C:\MEN WATCHES\rolex.jpg " class="img-circle" alt="Random Name" width="255" height="255">
      </a>
      
    </div>
    <div class="col-sm-4 watch-list">
      <p class="text-center"><strong>Omega</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="C:\MEN WATCHES\Omega.jpg " class="img-circle" alt="Random Name" width="255" height="255">
      </a>
    </div>
  </div>
			
	</c:when>
                 
    			<c:otherwise>
    				
        			<li class="sub-menu"><a href="category">Category</a>
		<ul>
			<li><a href="saveCategory">AddCategory</a></li>
    		<li><a href="editcategory">ShowCategory</a></li>                    
    	</ul>
	</li>                
    <li class="sub-menu"><a href="supplier">Supplier</a>
        <ul>
            <li><a href="SaveSupplier">AddSupplier</a></li>
            <li><a href="updatesupplier">ShowSupplier</a></li>                    
        </ul>
     </li>
     <li class="sub-menu"><a href="product">Product</a>
         <ul>
              <li><a href="Product">AddProduct</a></li>
              <li><a href="editproduct">ShowProduct</a></li>                    
         </ul>
     </li>  
     <li class="sub-menu"><a href="admin">User</a></li>
     <li class="sub-menu"><a href="perform_logout">Logout</a></li>
  </c:otherwise>
    		</c:choose>

				<p>${sessionScope.UserLoggedIn}</p>
<script>
(function(){
	 
	  $("#cart").on("click", function() {
	    $(".shopping-cart").fadeToggle( "fast");
	  });
	  
	})();
</script>		
</body>
</html>