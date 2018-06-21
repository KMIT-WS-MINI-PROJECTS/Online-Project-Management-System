<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>	PMS </title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
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
	   $(document).ready(function(){
		   $('#clickbutton').click(function(){
			//   var prname=$('#p1').val();
			   console.log(prname);
			   var prname=document.getElementById('app').innerHTML;
			   console.log(prname);
				     $.ajax({
					type:'POST',
					data:{prname:prname},
					url:'resgistertl.do',
					success: function(result){
					   console.log(result);
					}
				});
		   });
	   });
	</script>
	
	<style>
	.dropdown-toggle {
		margin-left: 75rem;
	}
	.modal-dialog {
		max-width: 75rem;
	}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a href="#" class="navbar-brand"><b><a href="javascript:process()">PMS</a></b></a>
		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			Profile
		</button>
		<div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
			<img src="person.png" class="img-circle">
			<h4>Name:<h3 id='swan'></h3></h4>
			<h5> ProjectManager@KMIT</h5>
			<p> Visit us at:KMIT Example.com Hyderabad</p>
			<a href="#"><button type="button" class="btn btn-default">Close</button></a>
			<a href="project2.html"><button type="button" class="btn btn-success btn-sm">Logout</button></a>
		</div>
	</nav>
	<br>
	<!-- Large button groups (default and split) -->
	<center>
		<div class="btn-group">
			<button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-toggle="dropdown">
				Languages
			</button>
			<div class="dropdown-menu dropright">
				<a class="dropdown-item" data-toggle="modal" data-target="#java">JAVA</a>
				<a class="dropdown-item" data-toggle="modal" data-target="#oracle">Oracle</a>
				<a class="dropdown-item" data-toggle="modal" data-target="#net">.NET</a>
			</div>
		</div>
	</center>

	<!-- Modal for java-->
	<div class="modal fade" id="java" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Java Projects</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<a data-toggle="collapse"  href="#applet" id="app">Applet</a><br>
					<div class="collapse" id="applet">
						<div class="card card-body">
							Applet
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a></button><br></br>
								<button class="btn" type="button"><a href="drag.jsp">Status</a></button>
							</div>
						</div>
					</div>
					<a data-toggle="collapse"  href="#servlet" id="app">Servlet</a><br>
					<div class="collapse" id="servlet">
						<div class="card card-body">
							servlet
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a></button><br></br>
								<button class="btn" type="button"><a href="drag.jsp">Status</a></button>
							</div>
						</div>
					</div>
					<a data-toggle="collapse"  href="#js" id="app">Javascript</a><br>
					<div class="collapse" id="js">
						<div class="card card-body">
							JS
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a></button></br>
								<button class="btn" type="button"><a href="drag.jsp">Status</a></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal for oracle -->
	<div class="modal fade" id="oracle" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Oracle Projects</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<a data-toggle="collapse" href="#db1" id="app">DB1</a><br>
					<div class="collapse" id="db1">
						<div class="card card-body">
							DB1
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a><br>
								<button class="btn" type="button"><a href="drag.jsp">Status</a></button>
							</div>
						</div>
					</div>
					<a data-toggle="collapse" href="#db2" id="app">DB2</a><br>
					<div class="collapse" id="db2">
						<div class="card card-body">
							DB2
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a><br>
								<button class="btn" type="button"><a href="drag.jsp">Status</a></button>
							</div>
						</div>
					</div>
					<a data-toggle="collapse" href="#db3" id="app">DB3</a><br>
					<div class="collapse" id="db3">
						<div class="card card-body">
							DB3
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a><br>
								<button class="btn" type="button"><a href="drag.jsp">Status</a></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- modal for net -->
	<div class="modal fade" id="net" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id=".net">.NET Projects</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<a data-toggle="collapse"  href="#net1" id="app">NET1</a><br>
					<div class="collapse" id="net1">
						<div class="card card-body">
							NET1
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a><br>
								<button class="btn" type="button"><a href="drag.jsp">Status</a></button>
							</div>
						</div>
					</div>
					<a data-toggle="collapse"  href="#net2" id="app">NET2</a><br>
					<div class="collapse" id="net2">
						<div class="card card-body">
							NET2
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a><br>
								<button class="btn" type="button"><a href="drag.jsp">Status</a></button>
							</div>
						</div>
					</div>
					<a data-toggle="collapse"  href="#net3" id="app">NET3</a><br>
					<div class="collapse" id="net3">
						<div class="card card-body">
							JS
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a><br>
								<button class="btn" type="button"><a href="drag.jsp">Status</a></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- modal for java teamleaders -->
	<div class="modal fade" id="teamLeaders" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">TeamLeaders</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<input name='c1' type="checkbox">bob
					<input name='c1' type="checkbox">chetan
					<input name='c1' type="checkbox">abcd
					<input name='c1' type="checkbox">ravi
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" id="clickbutton">Send</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>