<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.entity.Resource" %>

<%Resource res = (Resource)request.getAttribute("res"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Actualizar Recurso</title>
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
	
	
	<form method="post" action="/resources/update">
	<h1>Recurso</h1>
    
     <fieldset>
     	  <input type="text" name="id" value="<%=res.getId() %>" hidden>
          <label>Url del recurso:</label>
		  <input type="text" name="url" value="<%= res.getUrl() %>" placeholder="URL " required >
          	
          <label>Nombre del recurso:</label>
		  <input type="text" name="name" value="<%= res.getName() %>" placeholder="Recurso " required >
          				
          <%if(res.isStatus()==true){ %>
			<input type="radio" name="status" value="true" checked>Activo<br>
			<input type="radio" name="status" value="false">Inactivo<br>
		  <%}else { %>
		    <input type="radio" name="status" value="true" >Activo<br>
			<input type="radio" name="status" value="false" checked>Inactivo<br>
		  <%} %>	
		
		</fieldset>
    	<button type="submit">Registrar recurso</button>
	</form>
	</body>
</html>

