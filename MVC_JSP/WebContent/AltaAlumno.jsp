<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  	<title>Alta Alumno</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  	
  	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>
<body>
	
	<div class="container-fluid">
  		<h1>Alta Alumno</h1>
	</div>
	
	<form action="Controlador?action=agregaralumno" method="post">
		  <div class="form-group">
    			<label for=nombre>Nombre:</label>
    			<input type="text" class="form-control" name="nombre">
  		  </div>
  		  <button type="submit" class="btn btn-success">OK</button>
	</form>

</body>
</html>