<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.Access"%>
<%@ page import="model.entity.Role"%>
<%@ page import="model.entity.Resource"%>
<%
	Access access = (Access) request.getAttribute("access");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Actualizar Acceso</title>
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
	<form method="post" action="/access/update">
		<h1>Acceso</h1>

		<fieldset>
			<input type="text" name="id" value="<%=access.getId()%>" hidden>
			
			<%
				List<Role> roles = (List<Role>) request.getAttribute("roles");
			%>
			<%
				if (roles.size() > 0) {
			%>
			<label>Rol asignado</label>
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
			
			
			
			<%
				List<Resource> resources = (List<Resource>) request.getAttribute("resources");
			%>
			<%
				if (roles.size() > 0) {
			%>
			<label>Recurso asignado</label>
			<select name="IdUrl">
				<%
					for (int i = 0; i < resources.size(); i++) {
				%>
				<%
					Resource r = (Resource) resources.get(i);
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
			<label>Recurso asignado:</label> <input type="text" name="IdUrl"
				placeholder="aun no hay recurso" readonly required><br>
			<%
				}
			%>
						
			<%
				if (access.isStatus() == true) {
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

		</fieldset>
		<button type="submit">Registrar acceso</button>
	</form>
</body>
</html>

