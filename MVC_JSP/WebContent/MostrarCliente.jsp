<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import= "negocio.Cliente"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Mostrar Cliente</title>
	</head>
	<body>
	<%
	Cliente c = (Cliente)request.getAttribute("cliente");
	String id = c.getId();
	%>
	<table cellspacing="3" cellpadding="3" border="1" width="60%">
		<tr>
			<td colspan="2"><b>Cliente:</b> 
		     <%=c.getNombre()%>,<%=c.getApellido()%>
			</td>
		</tr>
		<tr>
			<td><b>Id</b></td>
			<td><%=c.getId()%></td>
		</tr>
		<tr>
			<td><b>Nombre</b></td>
			<td><%=c.getNombre()%></td>
		</tr>
		<tr>
			<td><b>Apellido</b></td>
			<td><%=c.getApellido()%></td>
		</tr>
		<tr>
			<td><b>Direccion</b></td>
			<td><%=c.getDireccion()%></td>
		</tr>
		<tr>
			<td colspan="2">
			   <a href="Controlador?action=editcustomer&id=<%=c.getId()%>">Editar Cliente</a>
			</td>
		</tr>
		</table>
	</body>
</html>