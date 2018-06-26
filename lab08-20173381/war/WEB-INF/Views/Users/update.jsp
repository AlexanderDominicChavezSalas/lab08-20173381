<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.User"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="model.entity.Role"%>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>
<%
	User u = (User) request.getAttribute("user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Actualizar Usuario</title>
        <link rel="stylesheet" type="text/css" href="../css/estilo.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  
    </head>
    <body>
	  <div class="container-fluid" >
	    <center>
	    	<a href="../" class="h1"><img src="../img/arguident.jpg" width="360"></a>
	    	
	    </center>
	</div>
	
<nav class="navbar navbar-expand-sm navbar-dark sticky-top" >
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link btn btn-dark RbtnMargin" href="/patients" >Pacientes</a>
    </li>
    <li class="nav-item">
      <a class="nav-link btn btn-dark RbtnMargin" href="/roles">Roles</a>
    </li>
    <li class="nav-item">
      <a class="nav-link btn btn-dark RbtnMargin" href="/users">Usuarios</a>
    </li>
     <li class="nav-item">
      <a class="nav-link btn btn-dark RbtnMargin" href="/resources">Recursos</a>
    </li>
     <li class="nav-item">
      <a class="nav-link btn btn-dark RbtnMargin" href="/access">Accesos</a>
    </li>
     <li class="nav-item">
      <a class="nav-link btn btn-dark RbtnMargin" href="/users/login">Log In</a>
    </li>
    <li class="nav-item">
      <a class="nav-link btn btn-dark RbtnMargin" href="/users/logout">Log Out</a>
    </li>
  </ul>
</nav><br><br>
	<form method="post" action="/users/update">
		<h1>Usuario</h1>

		<fieldset>
			<input type="text" name="id" value="<%=u.getId()%>" hidden> <label>Correo
				del usuario</label> <input type="email" name="email"
				value="<%=u.getEmail()%>" placeholder="Email " required> <label>Fecha
				de creacion</label> <input type="date"
				value="<%=sdf.format(u.getCreated())%>" name="created" required>

			<label>Fecha de nacimiento</label> <input type="date"
				value="<%=sdf.format(u.getBirth())%>" name="birth" required>

			<%
				if (u.isStatus() == true) {
			%>
			<input type="radio" name="status" value="true" checked>Activo<br>
			<input type="radio" name="status" value="false">Inactivo<br>
			<%
				} else {
			%>
			<input type="radio" name="status" value="true">Activo<br>
			<input type="radio" name="status" value="false" checked>Inactivo<br>
			<%
				}
			%>

			<%
				if (u.isGender() == true) {
			%>
			<input type="radio" name="gender" value="true" checked>Hombre<br>
			<input type="radio" name="gender" value="false">Mujer<br>
			<%
				} else {
			%>
			<input type="radio" name="gender" value="true">Hombre<br>
			<input type="radio" name="gender" value="false" checked>Mujer<br>
			<%
				}
			%>

			<%
				List<Role> roles = (List<Role>) request.getAttribute("roles");
			%>
			<%
				if (roles.size() > 0) {
			%>
			<select name="IdRole">
				<%
					for (int i = 0; i < roles.size(); i++) {
				%>
				<%
					Role r = (Role) roles.get(i);
				%>
				<option value="<%=String.valueOf(r.getId())%>">
					<%=r.getName()%>
				</option>
				<%
					}
				%>
			</select>
			<%
				} else {
			%>
			<label>IdRole:</label> <input type="text" name="IdRole"
				placeholder="aun no hay rol" readonly required><br>
			<%
				}
			%>
		</fieldset>
		<button type="submit">Registrar usuario</button>
	</form>
	</body>
</html>

