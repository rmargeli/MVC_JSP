<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import= "java.util.Iterator"%>
<%@ page import= "java.util.List"%>
<%@ page import= "view.CursoView"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Cursos</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>

<a href="Controlador?action=altacurso" target="_self">Alta Curso</a>

<table class="table table-condensed">
	<tr>
		<td colspan="4"><b>Lista de Cursos</b></td>
	</tr>
	<tr>
		<th><b>Numero</b></th>
		<th><b>Materia</b></th>
		<th><b>Profesor</b></th>
		<th><b>Dia</b></th>
		<th><b>Turno</b></th>
		<th><b>Vacantes</b></th>
	</tr>
<%
	CursoView aux;
	int numero; 	
	List<CursoView> cursos = (List<CursoView>) request.getAttribute("cursos");
	for(Iterator<CursoView> i = cursos.iterator(); i.hasNext();)
	{
		aux = i.next();
		numero = aux.getNumero();
%>
<tr>
		<td>
		<a href="Controlador?action=displaycourse&id=<%=numero%>"><%=numero%></a>
		</td>

 
		
		<td><%=aux.getMateria()%></td>
		<td><%=aux.getProfesor()%></td>
		<td><%=aux.getDia()%></td>
		<td><%=aux.getTurno()%></td>
		<td><%=aux.getVacantes()%></td>
	</tr>
<% } %>
</table>
</body>
</html>