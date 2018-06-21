<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width: device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<!-- JQuery first, then Bootstrap JS -->
	<script src="jquery.min.js"></script>
	<script src="bootstrap.min.js"></script>
<!-- 	<style type="text/css">
	.form-signin{
		max-width:380px;
		padding:15px 35px 45px;
		margin:0 auto;
		background-color:#fff;
		border:1px solid rgba(0,0,0,0.1);
		background-color:#cadeea;
	}

</style>
 -->
<style>
/*body {
    height: 100%;
    background-size: cover;
    background-image: url(pmsbook1.jpg);
}*/

.bg { 
	background-image: url(pmsbook1.jpg);
	background-size: cover;
	
}

</style>
</head>
<body>

	<header>
		
			
		
		<nav class="navbar navbar-default">
			<a href="#" class="navbar-brand"><b>PMS</b></a>
			<ul class="nav navbar-nav navbar-right">

				

					
			
             <li class="dropdown"><a href="#" class="data-toggle" style="right: 10px;" data-toggle="dropdown">Profile
             <span class="caret"></span></a>
             <ul class="dropdown-menu" style="padding: 5px;right: 20px">
    	     <img src="person.png" class="img-circle">



    	     <li><h4>Name:--------</h4></li>


    	     <li><h5> ProjectManager@KMIT</h5></li>
    	     <li><p> Visit us at:KMIT Example.com Hyderabad</p></li>
    	     <li><a href="#"><button type="button" class="btn btn-default">Close</button></a></li>
              <li><a href="project2.html"><button type="button" class="btn btn-success btn-sm">Logout</button></a></li>
          </li>
    </ul>
</ul>
	

	</header> 
	<div class ="bg" align = center><h1></div>
	<ul class="nav navbar-nav">
		
				<li><a href="#" data-toggle="modal" data-target="#listOfProjects" data-backdrop="static" data-kayboard="false" >List Of Projects</a></li>
			
				
			</ul>		
<!--Register user modal-->
	<div class="modal fade" id="listOfProjects">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h2 class="modal-title">List Of Projects</h2>

				</b>
				</div>
				
				

					<div class="modal-body">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Java<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#" data-toggle="modal" data-target="#Applets" data-backdrop="static" data-kayboard="false">Applet</a></li>
						<li><a href="#" data-toggle="modal" data-target="#Servlets" data-backdrop="static" data-kayboard="false">Servlet</a></li>
						<li><a href="#" data-toggle="modal" data-target="#JavaScript" data-backdrop="static" data-kayboard="false">JavaScript</a></li>
						<li><a href="#" data-toggle="modal" data-target="#JSP" data-backdrop="static" data-kayboard="false">JSP</a></li>
					</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">.Net<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#" data-toggle="modal" data-target="#P1" data-backdrop="static" data-kayboard="false">P1.net</a></li>
						<li><a href="#" data-toggle="modal" data-target="#P2" data-backdrop="static" data-kayboard="false">P2.net</a></li>
						<li><a href="#" data-toggle="modal" data-target="#P3" data-backdrop="static" data-kayboard="false">P3.net</a></li>
						<li><a href="#" data-toggle="modal" data-target="#P4" data-backdrop="static" data-kayboard="false">P4.net</a></li>
					</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Oracle<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#" data-toggle="modal" data-target="#DB1" data-backdrop="static" data-kayboard="false">DB1</a></li>
						<li><a href="#" data-toggle="modal" data-target="#DB2" data-backdrop="static" data-kayboard="false">DB2</a></li>
						<li><a href="#" data-toggle="modal" data-target="#DB3" data-backdrop="static" data-kayboard="false">DB3</a></li>
						<li><a href="#" data-toggle="modal" data-target="#DB4" data-backdrop="static" data-kayboard="false">DB4</a></li>
					</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Python<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#" data-toggle="modal" data-target="#PY1" data-backdrop="static" data-kayboard="false">PY1</a></li>
						<li><a href="#" data-toggle="modal" data-target="#PY2" data-backdrop="static" data-kayboard="false">PY2</a></li>
						<li><a href="#" data-toggle="modal" data-target="#PY3" data-backdrop="static" data-kayboard="false">PY3</a></li>
						<li><a href="#" data-toggle="modal" data-target="#PY4" data-backdrop="static" data-kayboard="false">PY4</a></li>
					</ul></li>
					

						
					</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary">Send</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>

		</div>
		</div>
		</div>
        
        <div class="modal fade" id="Applets">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a Applet Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#applet">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="Servlets">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>

					<h4 class="modal-title">This is a Servlet Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#servlet">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="JavaScript">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a JavaScript Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#javascript">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="JSP">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a JSP Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#jsp">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="P1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a First .net Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#p1">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="P2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a Second .net Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#p2">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="P3">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a Third .net Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#p3">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="P4">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a Fourth .net Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#p4">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="DB1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a First Oracle Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#db1">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="DB2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a Second Oracle Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#db2">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="DB3">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a Third Oracle Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#db3">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="DB4">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a Fourth Oracle Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#db4">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="PY1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a First Python Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#py1">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="PY2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a Second Python Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#py2">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="PY3">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a Third Python Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#py3">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="PY4">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<b>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">This is a Fourth Python Project</h4>
					
					
				</b>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info btn-sl" data-toggle="modal" data-target="#py4">Choose TL</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Status</button>
						</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="applet" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
	  <div class="modal fade" id="servlet" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
<div class="modal fade" id="javascript" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
<div class="modal fade" id="jsp" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
<div class="modal fade" id="p1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <div class="modal fade" id="p2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <div class="modal fade" id="p3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <div class="modal fade" id="p4" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <div class="modal fade" id="db1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
<div class="modal fade" id="db2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
<div class="modal fade" id="db3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <div class="modal fade" id="db4" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <div class="modal fade" id="py1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <div class="modal fade" id="py2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

  </div>
<div class="modal fade" id="py3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <div class="modal fade" id="py4" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">List Of TL</h4>
        </div>
        <div class="modal-body">
        	<ul>
						<li>Vikram</li>
						<li>Chetan</li>
						<li>Sai Kumar</li>
						<li>Bhuvanesh</li>
					</ul>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>


		



	<footer></footer>
</body>
</html>