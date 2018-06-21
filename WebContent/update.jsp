<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!


%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajax tutorial</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
function progress(){
$(document).ready(function(){
	$('#butt').click(function(){
		var name=$('#nam').val();
		console.log(name);
		$.ajax({
			type:'GET',
			data: {'name': name},
			url:'ajaxcheckserv.do',
			success: function(result){
				$('#swan').html(result);
				console.log(value);
                       }
					});	
	});
});
document.getElementById("swan11").innerHTML="hello their";
}
</script>
</head>
<body >
<form>
 Name <input type="text" id="nam" />
  <input type="button" id="butt" value="click" />
 </form>
 <span id="swan"></span>
<form>
 Name <input type="text" id="name2" />
  <input type="button" id="butt12" value="clickhere" onclick="progress()"/>
 </form>
 <span id="swan11"></span>

</body>
</html>