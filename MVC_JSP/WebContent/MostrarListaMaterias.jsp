<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import= "java.util.Iterator"%>
<%@ page import= "java.util.List"%>
<%@ page import= "view.MateriaView"%>
<html>
<head>

<title>Lista de Materias</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
   	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  	

</head>
<body>

<a href="Controlador?action=altamateria" target="_self">Alta Materia</a>
<table class="table table-condensed">
	<tr>
		<td colspan="4"><b>Lista de Materias</b></td>
	</tr>
	<tr>
		<th><b>Codigo</b></th>
		<th><b>Descripcion</b></th>
	</tr>
<%
	MateriaView aux;
	String codigo; 	
	List<MateriaView> materias = (List<MateriaView>) request.getAttribute("materias");
	for(Iterator<MateriaView> i = materias.iterator(); i.hasNext();)
	{
		aux = i.next();
		codigo = aux.getCodigo();
%>
	<tr>
		<td>
		<a href="Controlador?action=displaysubject&id=<%=codigo%>"><%=codigo%></a>
		</td>

 
		
		<td><%=aux.getDescripcion()%></td>
	</tr>
<% } %>
</table>

</body>
</html>