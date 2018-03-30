<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet" %>
    <%ResultSet rs = null; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> book club</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/responsive-slider.css" rel="stylesheet">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css"> 
	<link href="css/style.css" rel="stylesheet">	
"WebContent/viewMember.jsp"



  </head>
  <body>
	<header>
		<div class="container">
			<div class="row">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<div class="navbar-header">
							<div class="navbar-brand">
								<a href="home.jsp"><h1>WELCOME TO 4C KNOWLEDGE !</h1></a>
							</div>
						</div>
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="home.jsp">Home</a></li>								
								<li role="presentation"><a href="home.jsp">Sign Out</a></li>						
							</ul>
						</div>
					</div>			
				</nav>
			</div>
		</div>
	</header>
	
	
	<div class="container">
		<div class="row">			
			<div class="media-body">
				<div class="navbar-header">
					<div class="navbar-brand">
						<a href="signUp.jsp"><h1>Your Information</h1></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="container">
		<div class="row">
			<hr>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-lg-6">	
				<form role="form" action="viewMember" method="post" >
					<div class="form-group">
						<input type="text" class="form-control" name="fname" value="<%= request.getParameter("fname") %>" disabled="disabled">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="lname" value=<%= request.getParameter("lname") %> disabled="disabled">
					</div>
					<div class="form-group">
						<input type="date" class="form-control" name="DOB"  value="<%= request.getParameter("DOB") %>" disabled="disabled" >
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="P_address"  value="<%= request.getParameter("P_address") %>" disabled="disabled">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="C_address"  value="<%= request.getParameter("C_address") %>" disabled="disabled" >
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="Mobile"  value="<%= request.getParameter("Mobile") %>" disabled="disabled">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="Telephone"  value="<%= request.getParameter("Telephone") %>" disabled="disabled">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="Email"  value="<%= request.getParameter("fname") %>" disabled="disabled">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="Password"  value="<%= request.getParameter("fname") %>" disabled="disabled">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="favourites"  value="<%= request.getParameter("fname") %>" disabled="disabled">
					</div>
				</form>
			</div>
			
			<div class="col-lg-6">
				<div class="image">						
						<img src="img/home/signup.jpg" width="500px" height="500px" class="img-responsive" alt="" />
					</div>										
			</div>			
	</div>
	
	<div class="container">
		<div class="row">
			<hr>
		</div>
	</div>
		

  </body>
</html>