<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<title>Second view</title>
	<!-- Required meta tags -->
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width: device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<!-- JQuery first, then Bootstrap JS -->
	<script src="jquery.min.js"></script>
	<script src="bootstrap.min.js"></script>
	<script type="text/javascript">
	   function process(){
		   console.log("hloo their");
		   $(document).ready(function(){
				console.log("hi");		
						$.ajax({
							type:'POST',
							url:'name.do',
							success: function(result){
								console.log(result);
							$('#swan').html(result);
							}
						});
				});
	   }
	</script>
	<style type="text/css">
	.form-signin{
		max-width:380px;
		padding:15px 35px 45px;
		margin:0 auto;
		background-color:#fff;
		border:1px solid rgba(0,0,0,0.1);
		background-color:#cadeea;
	}
	.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  
  margin:auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}

ul.dropdown-menu{
	width: 250px;
}

</style>
</head>
<body>
	
	<header>
		<nav class="navbar navbar-default">
			<a href="#" class="navbar-brand">PMS</a>
			<ul class="nav navbar-nav">
				<li class="active"><a href="javascript:process()">Home</a></li>
			</ul>
           
<ul class="nav navbar-nav navbar-right">
				<li><a href="login.jsp"><b>Logout<b></a></li>
			</ul>

<ul class="nav navbar-nav navbar-right">
   			<li><a href="drag.jsp"><b>Status<b></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!-- <li class="active"><a href="#">Home</a></li> -->
				<li class="dropdown"><a href="javascript:process()" class="data-toggle" style="right: 20px;" data-toggle="dropdown">My Profile<span class="caret"></span></a>
				
					<ul class="dropdown-menu" style="padding: 5px;right: 20px">
						<li>

<div class="card">
  <img src="me.png" alt="bhuvi image" style="width:50%">
<div>
  <h3>Name:</h3><h4 id='swan'></h4>
 </div>
  <p class="title">Developer & Tester,KMIT </p>
  <address>
 
Visit us at:KMIT<br>
Example.com<br>
Hyderabad
</address>
  
  
 <p><button>Contact</button></p>
</div>





						</li>
					</ul>
				</li>
			</ul>


			








	</header>  
	<div class="container">
		<h1 align="center">WELCOME BHUVANESH REDDY</h1>

<br><br>


<div class="row">
 <div class="dropdown text-center">
 <div class="dropdown btn-group">

<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">List Of Projects
        <span class="caret"></span>
      </button>



<!--<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">List of Projects<span class="caret"></span></a>

					-->

					<ul class="dropdown-menu">
						<li><a href="#" data-toggle="modal" data-target="#m1" data-backdrop="static" data-kayboard="false">Project 1</a></li>
						<li><a href="#" data-toggle="modal" data-target="#m2" data-backdrop="static" data-kayboard="false">Project 2</a></li>
							
								
					</ul></li>


</div>
</div>
</div>
	</div>
<!--Register user modal-->
	<div class="modal fade" id="m1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Assigned Project</h4>
				</div>

					<div class="modal-body">
						<p>Description of Project1.</p>
					</div>
						<div class="modal-footer">
							<form action="draganddrop.html">



							<button type="submit" class="btn btn-primary">Enter Project</button>



                          


							<button type="button" class="btn btn-secondary" data-dismiss="modal">close</button>

							</form>
						</div>
		</div>
		</div>
		</div>


<div class="modal fade" id="m2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Assigned Project</h4>
				</div>

					<div class="modal-body">
						<p>Description of Project2.</p>
					</div>
						<div class="modal-footer">
							<form action="draganddrop.html">



							<button type="submit" class="btn btn-primary">Enter Project</button>



                          


							<button type="button" class="btn btn-secondary" data-dismiss="modal">close</button>

							</form>
						</div>
		</div>
		</div>
		</div>




	<footer></footer>

</body>
</html>