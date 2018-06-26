<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.entity.Role" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Agregar Usuario</title>
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
      <form method="post" action="/users/add">
      
        <h1>Usuario</h1>
        <fieldset>
          <label>Correo del usuario:</label>
		  <input type="email" name="email" placeholder="correo "
		  pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" required >
          			
          <label>Fecha de creacion:</label>
		  <input type="date" name="created" required >
		 
		  <label>Fecha de nacimiento:</label>
		  <input type="date" name="birth" required >
		 
		  <label>Estado:</label><br>
		  <input type="radio" value="true" name="status" checked >Activo
		  <input type="radio" value="false" name="status" >Inactivo<br>
		  
		  <label>Sexo:</label><br>
		  <input type="radio" value="true" name="gender" checked >Hombre
		  <input type="radio" value="false" name="gender" >Mujer<br>
		  
		  <% List<Role> roles =(List<Role>)request.getAttribute("roles");	%>
		 <% if(roles.size() >0) {%>
		 <label>Rol:</label>
		 	<select name="IdRole">
	 		 <% for (int i = 0;i<roles.size();i++) { %>
			   	 <% Role r = (Role)roles.get(i); %>
		 		 <option value="<%= String.valueOf(r.getId()) %>" > <%= r.getName() %> </option>
	 		 <%} %>
	 		 </select>
	 		 <%} else{%>
	 	 	 <label>IdRole:</label>		
		 	 <input type="text" name="IdRole" placeholder="aun no hay rol" readonly required><br>		
	 	 <%} %>
		  
		  </fieldset>
        <button type="submit">Registrar Usuario</button>
      </form>
    </body>
</html>


 		
 		
 		
 		