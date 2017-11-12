<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTERATION PAGE</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .well form-horizontal
  {
  background-image: url("watch1.jpg");
  }
   </style>
</head> 
<body>
<div class="container">
<center>

  
<form:form action="register" class="well form-horizontal" id="contact_form" method="post" commandName="user">
<fieldset>
<legend><center><h2><b>Registration Form</b></h2></center></legend><br>
    <div class="form-group">
    <label class="col-md-4 control-label"><b>FirstName</b></label>
    <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    <form:input type="text" path="firstname" class="form-control" placeholder="Enter Firstname"/><br>
    </div>
  </div>
</div>
<div class="form-group">
    <br><label class="col-md-4 control-label"><b>LastName</b></label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    <form:input type="text" path="lastname" class="form-control" placeholder="Enter Lastname"/><br>
    </div>
  </div>
</div>
    <div class="form-group">
    <br><label class="col-md-4 control-label"><b>UserName</b></label>
    <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    <form:input type="text" path="username" class="form-control" placeholder="Enter Username"/><br>
    </div>
  </div>
</div>
<div class="form-group">
     <br><label class="col-md-4 control-label"><b>Password</b></label>
     <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    <form:input type="password" path="password" class="form-control" placeholder="Enter Password"/><br>
    </div>
    </div>
    </div>
    <center>
    <div class="form-group">
    <label class="col-md-4 control-label"><b>Address</b></label>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    <form:input type="text" path="address" class="form-control" placeholder="Enter address"/><br>
    </div>
    </div>
    </div>
    </center>
    <div class="form-group">
     <br><label class="col-md-4 control-label"><b>Email-Id</b></label>
     <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
     <form:input type="email" path="email" class="form-control" placeholder="Enter E-mail"/><br>
     </div>
     </div>
     </div>
     <div class="form-group">
     <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
  </div>
</div>
    

</center>
</fieldset>
</form:form>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            first_name: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        notEmpty: {
                        message: 'Please enter your First Name'
                    }
                }
            },
             last_name: {
                validators: {
                     stringLength: {
                        min: 2,
                    },
                    notEmpty: {
                        message: 'Please enter your Last Name'
                    }
                }
            },
			 user_name: {
                validators: {
                     stringLength: {
                        min: 8,
                    },
                    notEmpty: {
                        message: 'Please enter your Username'
                    }
                }
            },
			 user_password: {
                validators: {
                     stringLength: {
                        min: 8,
                    },
                    notEmpty: {
                        message: 'Please enter your Password'
                    }
                }
            },
                        email: {
                validators: {
                    notEmpty: {
                        message: 'Please enter your Email Address'
        },
        emailAddress: {
            message: 'Please enter a valid Email Address'
        }
    }
            

</script>

</body>
</html>