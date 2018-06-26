<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.Resource"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ver Recurso</title>
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
		Resource res = (Resource) request.getAttribute("res");
	%>
	<center>
		<h2>Datos del recurso</h2>
	</center>
	<center>
		<table>
			<tr>
				<td>Id del recurso:</td>
				<td><%=res.getId()%></td>
			</tr>
			<tr>
				<td>Nombre del recurso:</td>
				<td><%=res.getName()%></td>
			</tr>
			<tr>
				<td>Url del recurso:</td>
				<td><%=res.getUrl()%></td>
			</tr>
			<tr>
				<td>Estado del recurso:</td>
				<%
					if (res.isStatus() == true) {
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
		</table>
	</center>
</body>
</html>