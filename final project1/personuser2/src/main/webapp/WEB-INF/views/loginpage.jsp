<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN PAGE</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                
</head>
<body>
<center>

<br/>
<div align="justify">
<div align="center">

<div class="container" style="margin-top:40px" ">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong> Sign Up here</strong>
					</div>
					<br/>
					<div align="center">
					
					</div>
					<div class="panel-body">
      
<form action="perform_login" method="post" class="login-form">
<fieldset>
								<div class="row">
									<div class="center-block">
										
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12 col-md-10  col-md-offset-1 ">
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-user"></i>
												</span>
<input  class="form-username form-control" placeholder="Username" required id="username" name="username" type="text"  title="length for username "/>
</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-lock"></i>
												</span>
<input class="form-password form-control" placeholder="Password" required name="password" type="password" title="Enter Valid credentials"/>
</div>
										</div>
										<div class="form-group">
<input type="submit" value="login"/>
</div>
									</div>
								</div>
							</fieldset></form>
							
					</div>
					</div>
					<div class="panel-footer ">
						New User? <a href="register" onClick=""> Sign Up Here </a>
						</br>
						Forgot Password?<a href="ForgetPassword" onClick="">Click here..</a>
					</div>
					
                </div>
			</div>
		</div>
	</div>
	</div>
<br><br><br>
</center>	
</body>
</html>