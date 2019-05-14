<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import= "negocio.Cliente"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Cliente</title>
</head>
<body>
	<%
		Cliente c = (Cliente) request.getAttribute("cliente");
		String id = c.getId();
	%>
	
		<input type="hidden" name="id" value="<%=id%>">
		<table cellspacing="3" cellpadding="3" border="1" width="60%">
			<tr>
				<td><b>Nombre:</b>
				<td><input type="text" name="nombre" value="<%=c.getNombre()%>"></td>
			</tr>
			<tr>
				<td><b>Apellido:</b>
				<td><input type="text" name="apellido"
					value="<%=c.getApellido()%>"></td>
			</tr>
			<tr>
				<td><b>Direccion:</b>
				<td><input type="text" size="50" name="direccion"
					value="<%=c.getDireccion()%>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="editar cliente"></td>
			</tr>
			<tr>
			<td colspan="2">
			<%
				String newid = request.getParameter("id");
				String newnombre = request.getParameter("nombre");
				String newapellido = request.getParameter("apellido");
				String newdireccion = request.getParameter("direccion");
			%>
			   <a href="Controlador?action=modificarCliente&id=<%=newid%>&nombre=<%=newnombre%>&apellido=<%=newapellido%>&direccion=<%=newdireccion%>">Editar Cliente</a>
			</td>
			
			</tr>
		</table>
	
</body>
</html>