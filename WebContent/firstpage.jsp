<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
	<title>Login</title>
<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width: device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- JQuery first, then Bootstrap JS -->
	<script src="jquery.min.js"></script>
	<script src="bootstrap.min.js"></script>
	<style type="text/css">
	.form-signin{
		max-width:380px;
		padding:15px 35px 45px;
		margin:0 auto;
		background-color:;
		border:1px solid rgba(0,0,0,0.1);
		background-color:#3EF5FA;
	}

	.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 20%;
}

h1 {
    color:black ;
    font-family: courier;
    font-size: 300%;
}


</style>

</head>

<body>

	<h1 align="center">Online ProjectManagementSystem </h1>

	<img src="pms.jpg" alt="image" width="75" height="150" class="center">

<br><br>
       <div class="container">
		<form action="secondpage.jsp" method="post" class="form-signin">
			<div class="form-group">
				<label for="email">Username:</label>
				<input type="text" class="form-control" name="name" placeholder="usename" required="" autofocus=""  />
			</div>
			<div class="form-group">
				<label for="email">password:</label>
				<input type="password" class="form-control" name="name" placeholder="password" required="" autofocus="" />
			</div>
			<button type="submit" class="btn btn-lg btn-block btn-success">Login</button>
		</form>
	</div>



</body>
</html>