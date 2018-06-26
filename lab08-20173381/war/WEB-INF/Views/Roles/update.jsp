<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.entity.Role" %>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<% SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd") ;%>
<%Role r = (Role)request.getAttribute("role"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Actualizar Rol</title>
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
	<form method="post" action="/roles/update">
	<h1>Rol</h1>
    
     <fieldset>
     	  <input type="text" name="id" value="<%=r.getId() %>" hidden>
          <label>Nombre del rol:</label>
		  <input type="text" name="name" value="<%= r.getName() %>" placeholder="Nombre " required >
          			
          <label>Fecha de creacion:</label>
		  <input type="date" value="<%= sdf.format(r.getCreated()) %>" name="created" required >
			
		  <label>Estado:</label><br>
		  <%if(r.isStatus()==true){ %>
			<input type="radio" name="status" value="true" checked>Activo
			<input type="radio" name="status" value="false">Inactivo<br>
		  <%}else { %>
		    <input type="radio" name="status" value="true" >Activo
			<input type="radio" name="status" value="false" checked>Inactivo<br>
		  <%} %>	
		
		</fieldset>
    	<button type="submit">Registrar rol</button>
	</form>
	</body>
</html>

