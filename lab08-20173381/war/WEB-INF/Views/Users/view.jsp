<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ver Usuario</title>
<link rel="stylesheet" type="text/css" href="../css/estilo.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

</head>
<body>
	<div class="container-fluid">
		<center>
			<a href="../" class="h1"><img src="../img/arguident.jpg"
				width="360"></a>

		</center>
	</div>

	<nav class="navbar navbar-expand-sm navbar-dark sticky-top">
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link btn btn-dark RbtnMargin"
			href="/patients">Pacientes</a></li>
		<li class="nav-item"><a class="nav-link btn btn-dark RbtnMargin"
			href="/roles">Roles</a></li>
		<li class="nav-item"><a class="nav-link btn btn-dark RbtnMargin"
			href="/users">Usuarios</a></li>
		<li class="nav-item"><a class="nav-link btn btn-dark RbtnMargin"
			href="/resources">Recursos</a></li>
		<li class="nav-item"><a class="nav-link btn btn-dark RbtnMargin"
			href="/access">Accesos</a></li>
		<li class="nav-item"><a class="nav-link btn btn-dark RbtnMargin"
			href="/users/login">Log In</a></li>
		<li class="nav-item"><a class="nav-link btn btn-dark RbtnMargin"
			href="/users/logout">Log Out</a></li>
	</ul>
	</nav>
	<br>
	<br>
	<%
		User u = (User) request.getAttribute("user");
	%>
	<center>
		<h2>Datos del usuario</h2>
	</center>
	<center>
		<table>
			<tr>
				<td>Id del usuario:</td>
				<td><%=u.getId()%></td>
			</tr>
			<tr>
				<td>Email del usuario:</td>
				<td><%=u.getEmail()%></td>
			</tr>
			<tr>
				<td>Fecha de creacion:</td>
				<td><%=u.getCreated()%></td>
			</tr>
			<tr>
				<td>Fecha de nacimiento:</td>
				<td><%=u.getBirth()%></td>
			</tr>
			<tr>
				<td>Sexo del recurso:</td>
				<%
					if (u.isGender() == true) {
				%>
				<td>Hombre</td>
				<%
					} else {
				%>
				<td>Mujer</td>
				<%
					}
				%>
			</tr>
			<tr>
				<td>Estado del recurso:</td>
				<%
					if (u.isStatus() == true) {
				%>
				<td>Activo</td>
				<%
					} else {
				%>
				<td>Inactivo</td>
				<%
					}
				%>
			</tr>
			<tr>
				<td>Id del rol del usuario:</td>
				<td><%=u.getIdRole()%></td>
			</tr>
		</table>
	</center>
</body>
</html>