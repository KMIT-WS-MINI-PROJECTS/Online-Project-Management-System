<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="bootstrap.min.js"></script>

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
		<a href="#" class="navbar-brand"><b>PMS</b></a>
		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="float:right;">
			Profile
		</button>
		<div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
			<img src="person.png" class="img-circle" >
			<h4>Name : Vikram</h4>
			<h5> ProjectManager@KMIT</h5>
			<p> Visit us at:KMIT Example.com ,Hyderabad</p>
			<a href="#"><button type="button" class="btn btn-default">Close</button></a>
			<a href="project2.html"><button type="button" class="btn btn-success btn-sm">Logout</button></a>
		</div>
	</nav>
	<br>
	<!-- Large button groups (default and split) -->
	<center>
		<div class="btn-group">
			<button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-toggle="dropdown">
				LIST OF PROJECTS
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
					<a data-toggle="collapse" href="#applet">Applet</a><br>
					<div class="collapse" id="applet">
						<div class="card card-body">
							This is an Applet Project.
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a>
								<button class="btn" type="button">Status</button>
							</div>
						</div>
					</div>
					<a data-toggle="collapse" href="#servlet">Servlet</a><br>
					<div class="collapse" id="servlet">
						<div class="card card-body">
							This is a Servlet Project.
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a>
								<button class="btn" type="button">Status</button>
							</div>
						</div>
					</div>
					<a data-toggle="collapse" href="#js">Javascript</a><br>
					<div class="collapse" id="js">
						<div class="card card-body">
							JS
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a>
								<button class="btn" type="button">Status</button>
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
					<a data-toggle="collapse" href="#db1">DB1</a><br>
					<div class="collapse" id="db1">
						<div class="card card-body">
							DB1
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a>
								<button class="btn" type="button">Status</button>
							</div>
						</div>
					</div>
					<a data-toggle="collapse" href="#db2">DB2</a><br>
					<div class="collapse" id="db2">
						<div class="card card-body">
							DB2
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a>
								<button class="btn" type="button">Status</button>
							</div>
						</div>
					</div>
					<a data-toggle="collapse" href="#db3">DB3</a><br>
					<div class="collapse" id="db3">
						<div class="card card-body">
							DB3
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a>
								<button class="btn" type="button">Status</button>
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
					<a data-toggle="collapse" href="#net1">NET1</a><br>
					<div class="collapse" id="net1">
						<div class="card card-body">
							NET1
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a>
								<button class="btn" type="button">Status</button>
							</div>
						</div>
					</div>
					<a data-toggle="collapse" href="#net2">NET2</a><br>
					<div class="collapse" id="net2">
						<div class="card card-body">
							NET2
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a>
								<button class="btn" type="button">Status</button>
							</div>
						</div>
					</div>
					<a data-toggle="collapse" href="#net3">NET3</a><br>
					<div class="collapse" id="net3">
						<div class="card card-body">
							NET3
							<div class="btn-group">
								<button class="btn" type="button" data-toggle="modal" data-target="#teamLeaders">Choose TL</a>
								<button class="btn" type="button">Status</button>
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
				<!--<div class="modal-body">
					<input type="checkbox">Sai Kumar<br>
					<input type="checkbox">Chetan<br>
					<input type="checkbox">Vikram<br>
					<input type="checkbox">Bhuvanesh<br>
				</div>-->
				<div>
				<table class="table table-dark table-striped" id="teamleaders">
					<thead>
						<tr>
							<th scope="col" >#</th>
							<th scope="col">Name</th>
							<th scope="col">Department</th>
							<th scope="col">Email</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td><input type="checkbox"> Sai Kumar<br>
							<input type="checkbox"> Chetan</td>
							<td>Java<br>
							Java</td>
							<td>saikumar@pms.com<br>
							    chetan@pms.com</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td><input type="checkbox"> Vikram<br>
							<input type="checkbox"> Bhuvanesh</td>
							<td>Oracle<br>
						      Oracle</td>
							<td>vikram@pms.com<br>
							    bhuvanesh@pms.com</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td><input type="checkbox"> XYZ<br>
							<input type="checkbox"> ABC</td>
							<td>.Net<br>
							.Net</td>
							<td>xyz@pms.com<br>
							    abc@pms.com</td>
						</tr>
					</tbody>
				</table>
			</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary">Send</button>
				</div>
			</div>
		</div>
	</div>

</table>
</body>
</html>