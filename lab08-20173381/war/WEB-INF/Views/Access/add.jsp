<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.entity.Role" %>
<%@ page import="model.entity.Resource" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Agregar Acceso</title>
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

      <form method="post" action="/access/add">
      
        <h1>Acceso</h1>
        
        <fieldset>
          
          <% List<Role> roles =(List<Role>)request.getAttribute("roles");	%>
		 <% if(roles!=null) {%>
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
          
		  <% List<Resource> resources =(List<Resource>)request.getAttribute("resources");	%>
		 <% if(resources.size() >0) {%>
		 	<select name="IdUrl">
	 		 <% for (int i = 0;i<resources.size();i++) { %>
			   	 <% Resource res = (Resource)resources.get(i); %>
		 		 <option value="<%= String.valueOf(res.getId()) %>" > <%= res.getName() %> </option>
	 		 <%} %>
	 		 </select>
	 		 <%} else{%>
	 	 	 <label>IdRole:</label>		
		 	 <input type="text" name="IdRole" placeholder="aun no hay recurso" readonly required><br>		
	 	 <%} %>
		  
		  <input type="radio" name="status" value="true" checked>Activo<br>
		  <input type="radio" name="status" value="false">Inactivo<br>
				 
		</fieldset>
        <button type="submit">Registrar acceso</button>
      </form>
    </body>
</html>