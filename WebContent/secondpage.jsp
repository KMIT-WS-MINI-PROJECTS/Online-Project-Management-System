<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
	<title>Bootstrap Demo</title>
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
		background-color:#fff;
		border:1px solid rgba(0,0,0,0.1);
		background-color:#cadeea;
	}


	.pad{
		padding-top: 5px;
	}
	
	  .modal-backdrop {
   background-color: yellow;
}

.navbar-custom {
    background-color: #98FB98	;
}

</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-sm bg-success navbar-light fixed-top">
			<a href="#" class="navbar-brand"> <img src="logo.jpg" class="rounded-circle" alt="Logo" style="width:50px;"></a>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#" data-toggle="modal" data-target="#Assigned_projects" data-backdrop="static" data-kayboard="false">Assigned_projects</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Developers <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#"> Developer1</a></li>
						<li><a href="#">Developer2</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				

				<li class="dropdown"><a href="#" class="data-toggle" style="right: 10px;" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>Profile<span class="caret"></span></a>
					<ul class="dropdown-menu" style="padding: 5px;right: 20px">



<div class="card" style="width:100px">
  <img class="card-img-top" src="image.png" alt="Profile image" width="100">
  <div class="card-body">
    <h4 class="card-title">Name</h4>
    <p class="card-text">visit us at:KMIT Example.com Hyderabad</p>
    <a href="#" class="btn btn-warning" data-dismiss="modal">Close</a>
  </div>
</div>

    
					</ul>
				</li>
                <li><a href="project1.html"> <span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
			</ul>
			
		</nav>
					
		

	</header>




<!--Assigned projects modal-->
	<div class="modal fade" id="Assigned_projects">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
					<h4 class="modal-title">Assigned project</h4>
				</b>
				</div>

					<div class="modal-body">
						<h4>Hello Chethan,these are the projets assigned to you</h4>
						
					</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Assign_modules" data-backdrop="static" data-kayboard="false">Attend</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">close</button>
						</div>
		</div>
		</div>
		</div>

<!--attend Module-->
<div class="modal fade" id="Assign_modules">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
					<h4 class="modal-title">Assign modules</h4>
				</b>
				</div>
				       <div class="modal-body">
						<h4>Hello Chethan,please assign the modules</h4>

                       <form action="login.do" method="post">
                       Module1:	<input type="text" name="name1" placeholder="Developer1" /><br><br>
                       Module2:	<input type="text" name="name2" placeholder="Developer2" /><br><br>
                       Module3:	<input type="text" name="name3" placeholder="Developer3" /><br><br>
                       Module4:	<input type="text" name="name4" placeholder="Developer4" /><br><br>
                        
						
						
					</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary">Submit</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">close</button>
						</div>
					</form>
        </div>
		</div>
		</div>


	<footer></footer>
</body>
</html>