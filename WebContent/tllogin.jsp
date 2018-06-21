<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
     <title>Login page</title>
	<!-- Required meta tags -->
	<meta name="viewport" content="width: device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<!-- JQuery first, then Bootstrap JS -->
	<script src="jquery.min.js"></script>
	<script src="bootstrap.min.js"></script>
	<style type="text/css">
	.form-signin{
		max-width:380px;
		padding:15px 35px 45px;
		margin:0 auto;
		background-color:#fff;
		border:1px solid rgba(0,0,0,0.1);
		background-color:#cadeea;
	}
</style>
</head>
<body>
<h1 align="center">Project TeamLeader</h1>
	<div align="center">
	<img src="pms.jpg"></img>
	</div>
	<br><br>
	<div class="container">
		<form action="tllogin.do" method="post" class="form-signin">
			<div class="form-group">
				<label for="email">Username:</label>
				<input type="text" class="form-control" name="uname" placeholder="username" required="" autofocus=""  />
			</div>
			<div class="form-group">
				<label for="email">password:</label>
				<input type="password" class="form-control" name="pname" placeholder="password" required="" autofocus="" />
			</div>
			<button type="submit" class="btn btn-lg btn-block btn-primary">Login</button>
		</form>
	</div>


	<footer></footer>
</body>
</html>