<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,javax.servlet.jsp.JspWriter,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript">
var id,id2;
var dict={
'row1col1':'buttonmove','row1col2':'buttonmove','row1col3':'buttonmove','row1col4':'buttonmove','row1col5':'buttonmove',
'row2col1':'buttonmove1','row2col2':'buttonmove1','row2col3':'buttonmove1','row2col4':'buttonmove1','row2col5':'buttonmove1',
'row3col1':'buttonmove2','row3col2':'buttonmove2','row3col3':'buttonmove2','row3col4':'buttonmove2','row3col5':'buttonmove2',
'row4col1':'buttonmove3','row4col2':'buttonmove3','row4col3':'buttonmove3','row4col4':'buttonmove3','row4col5':'buttonmove3',
'row5col1':'buttonmove4','row5col2':'buttonmove4','row5col3':'buttonmove4','row5col4':'buttonmove4','row5col5':'buttonmove4',
};
var dict1={
	'row1col1':'col1','row2col1':'col1','row3col1':'col1','row4col1':'col1','row5col1':'col1',
	'row1col2':'col2','row2col2':'col2','row3col2':'col2','row4col2':'col2','row5col2':'col2',
	'row1col3':'col3','row2col3':'col3','row3col3':'col3','row4col3':'col3','row5col3':'col3',
	'row1col4':'col4','row2col4':'col4','row3col4':'col4','row4col4':'col4','row5col4':'col4',
	'row1col5':'col5','row2col5':'col5','row3col5':'col5','row4col5':'col5','row5col5':'col5',
};
var dict2={
'col1':'actionitems','col2':'inprogress','col3':'verify','col4':'verified','col5':'completed'
};
var dict3={
		'buttonmove':'actionitem1','buttonmove1':'actionitem2','buttonmove2':'actionitem3','buttonmove3':'actionitem4','buttonmove4':'actionitem5'
};
//document.getElementById("output").innerHTML=dict['buttonmove'];
function allowdrag(ev){
  ev.preventDefault();
}
function drag(ev){
	id=ev.target.id;
	}

function drop(ev){
	id2=ev.target.id;
  if(dict[id2]==id){
	if(dict2[dict1[id2]]=="inprogress"){
	//  console.log(dict2[dict1[id2]]);
	   $(document).ready(function(){
		//  console.log("hi");
			var id123=dict1[id2];
			//var bool;
			//console.log("hi");
				$.ajax({
					type:'GET',
					data: {'colname': dict2[id123],
					'buttonname': dict3[id]},
					url:'updateserv.do',
					success: function(result){
						var data=$.trim(result);
						  if(data === "true"){
							 ev.target.append(document.getElementById(id));
							 }
							 console.log(result);
					//$('#output').html(result);           
		               }
				});
		});
  }
		
else{
	$(document).ready(function(){	
		var id123=dict1[id2];
		console.log("in else");
			$.ajax({
				type:'GET',
				data: {'name': dict2[id123],
				'buttonname': dict3[id]},
				url:'ajaxcheckserv.do',
				success: function(result){
					var data=$.trim(result);
					if(data === "true"){
					ev.target.append(document.getElementById(id));}
					//$('#output').html(result);
	               }
			});
	});
  }
}
  else{
	  console.log("hloo");
  } 
//console.log(str);
   //if(dict[id2]==id){
	//ev.target.append(document.getElementById(id));
	//console.log(dict[id]);
	//console.log(dict1[id2]);
	//console.log("hi");
	//console.log(document.getElementById(dict1[id2])); 
   //}
  //else{
	//console.log(id);
	//console.log(id2);
	//console.log(dict[id2]);
	   //ev.target.append(id2);
//}
}

</script>
<style>
.leftone,.rightone{
    float:left;
    width:250px;
    height:250px;
	margin:5px;
	border:3px solid black;
}
.basedonsize{
	border : 1px solid black;
}
</style>
</head>
<body>
	<span id="output"> </span>
	<h2 id="output1"> </h2>
<table border="1" class="basedonsize" align='center' >
<thead>
<tr>
	<th>sno</th>
	<th id="col1">actionitems</th>
	<th id="col2">inprogress</th>
	<th id="col3">verify</th>
	<th id="col4">verified</th>
	<th id="col5">completed</th>
</tr>
</thead>
<tbody>
<tr ondragover="allowdrag(event)" ondrop="drop(event)">
	<th >1</th>
	<th id="row1col1">
	 <div >
	           <button  onmouseup="myfunction(event)" id="buttonmove" draggable="true" ondragstart="drag(event)"><text id="buttonmove" draggable="true" ondragstart="drag(event)"><a id="buttonmove" draggable="true"  ondragstart="drag(event)"  href="data.java">actionevent1</a><text></button>
              </div>
              </th>
    <th id="row1col2"> </th>
	<th id="row1col3"> </th>
	<th id="row1col4"> </th>
	<th id="row1col5" > </th>
</tr>	
<tr ondragover="allowdrag(event)" ondrop="drop(event)" >
	<th>2</th>
	<th id="row2col1"> <div >
	<button id="buttonmove1" draggable="true" ondragstart="drag(event)"><text id="buttonmove1" draggable="true" ondragstart="drag(event)"><a id="buttonmove1" draggable="true"  ondragstart="drag(event)"  href="data.java">actionevent2</a><text></button>
</div>
</th>
    <th id="row2col2"> </th>
	<th id="row2col3"> </th>
	<th id="row2col4"> </th>
	<th id="row2col5"> </th>
</tr>
<tr ondragover="allowdrag(event)" ondrop="drop(event)">
	<th>3</th>		
	<th id="row3col1"> <div >
	<button id="buttonmove2" draggable="true" ondragstart="drag(event)"><text id="buttonmove2" draggable="true" ondragstart="drag(event)"><a id="buttonmove2" draggable="true"  ondragstart="drag(event)"  href="data.java"> actionevent3</a><text></button>
</div>
</th>
    <th id="row3col2"> </th>
	<th id="row3col3"> </th>
	<th id="row3col4"> </th>
	<th id="row3col5"> </th>
</tr>
<tr ondragover="allowdrag(event)" ondrop="drop(event)">
	<th>4</th>
	<th id="row4col1"> <div >
		<button id="buttonmove3" draggable="true" ondragstart="drag(event)"><text id="buttonmove3" draggable="true" ondragstart="drag(event)"><a id="buttonmove3" draggable="true"  ondragstart="drag(event)"  href="data.java"> actionevent4</a><text></button>
</div>
</th>
    <th id="row4col2"> </th>
	<th id="row4col3"> </th>
	<th id="row4col4"> </th>
	<th id="row4col5"> </th>
</tr>
<tr ondragover="allowdrag(event)" ondrop="drop(event)">
	<th>5</th>
	<th id="row5col1"> <div >
		<button id="buttonmove4" draggable="true" ondragstart="drag(event)"><text id="buttonmove4" draggable="true" ondragstart="drag(event)"><a id="buttonmove4" draggable="true"  ondragstart="drag(event)"  href="data.java"> actionevent5</a><text></button>
</div>
</th>
    <th id="row5col2"> </th>
	<th id="row5col3"> </th>
	<th id="row5col4"> </th>
	<th id="row5col5"> </th>
</tr>
</tbody>
</table>	
</body>
</html>