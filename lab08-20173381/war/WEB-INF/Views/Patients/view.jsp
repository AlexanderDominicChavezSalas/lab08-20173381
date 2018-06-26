<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.Patient"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ver Paciente</title>
<link rel="stylesheet" type="text/css" href="../css/estilo.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

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
		Patient p = (Patient) request.getAttribute("patient");
	%>
	<center>
		<h2>Datos del paciente</h2>
	</center>
	<center>
		<table>


			<tr>
				<td>Id del paciente:</td>
				<td><%=p.getId()%></td>
			</tr>
			<tr>
				<td>Nombre del paciente:</td>
				<td><%=p.getName()%></td>
			</tr>
			<tr>
				<td>Numero de historia clinica:</td>
				<td><%=p.getCh_number()%></td>
			</tr>
			<tr>
				<td>DNI del paciente:</td>
				<td><%=p.getDNI()%></td>
			</tr>
			<tr>
				<td>Fecha de apertura de la historia clinica:</td>
				<td><%=p.getCreated()%></td>
			</tr>
			<tr>
				<td>Sexo del paciente:</td>
				<%
					if (p.isGender() == true) {
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
				<td>Lugar de nacimiento:</td>
				<td><%=p.getPlace_birth()%></td>
			</tr>
			<tr>
				<td>Fecha de nacimiento:</td>
				<td><%=p.getBirth()%></td>
			</tr>
			<tr>
				<td>Grado de instruccion:</td>
				<td><%=p.getDegree_instruction()%></td>
			</tr>
			<tr>
				<td>Raza:</td>
				<td><%=p.getRace()%></td>
			</tr>
			<tr>
				<td>Ocupacion:</td>
				<td><%=p.getOccupation()%></td>
			</tr>
			<tr>
				<td>Religion:</td>
				<td><%=p.getReligion()%></td>
			</tr>
			<tr>
				<td>Estado Civil:</td>
				<td><%=p.getCivil_status()%></td>
			</tr>
		</table>
	</center>

</body>
</html>