<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import= "view.AlumnoView"%>
<html>
<head>

<title>Insert title here</title>
<title>Alumno</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  	
  	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>
<body>

   <%
	
	AlumnoView alumno = (AlumnoView) request.getAttribute("alumno");

	%>



<form action="Controlador?action=editaralumno" method="post">
		  <div class="form-group">
    			<label for=nombre>Nombre:</label>
    			<input type="text" class="form-control" name="nombre" value="<%=alumno.getNombre()%>">
  		  </div>
  		  <button type="submit" class="btn btn-success">OK</button>
	</form>


</body>
</html>