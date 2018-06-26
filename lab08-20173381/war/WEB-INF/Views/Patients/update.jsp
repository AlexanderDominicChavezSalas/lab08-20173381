<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.entity.Patient" %>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<% SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd") ;%>
<%Patient p = (Patient)request.getAttribute("patient"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Actualizar Paciente</title>
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
	
	<body>
	<form method="post" action="/patients/update">
	<h1>Paciente</h1>
    <fieldset>
	<input type="text" name="id" value="<%=p.getId() %>" hidden>
	<label>Nombre y apellidos completos:</label>
	<input type="text" name="name" value="<%= p.getName() %>" placeholder="Nombre " required>
	
	<label>Numero de historia clinica:</label>
	<input type="text" name="ch_number" value="<%= p.getCh_number() %>" placeholder="0000/2018" required>
	
	<label>DNI:</label>
	<input type="text" name="DNI" value="<%= p.getDNI() %>" placeholder="DNI" required>
	
	<label>Fecha de apertura de la Historia Clínica:</label>
	<input type="date" name="created" value="<%=sdf.format(p.getCreated()) %>"  required><br>
	
	<%if(p.isGender()==true){ %>
	<input type="radio" name="gender" value="true" checked>Hombre<br>
	<input type="radio" name="gender" value="false">Mujer<br>
	<%}else { %>
	<input type="radio" name="gender" value="true" >Hombre<br>
	<input type="radio" name="gender" value="false" checked>Mujer<br>
	<%} %>
	
	<label>Lugar de nacimiento:</label>
	<input type="text" name="place_birth" value="<%= p.getPlace_birth() %>" placeholder="lugar de nacimiento" required>
	
	<label>Fecha de nacimiento:	</label>
	<input type="date" name="birth" value="<%=sdf.format( p.getBirth()) %>"required>
	
	</label>Grado de instruccion:</label>
	<input type="text" name="degree_instruction" value="<%= p.getDegree_instruction() %>" placeholder="grado de instruccion" required><br>
	
	<label>Raza:</label>
	<input type="text" name="race" value="<%= p.getRace() %>" placeholder="raza" required>
	
	<label>Ocupacion:</label>
	<input type="text" name="occupation" value="<%= p.getOccupation() %>" placeholder="ocupacion" required>
	
	<label>Religion:</label>
	<input type="text" name="religion" value="<%= p.getReligion() %>" placeholder="religion" required>
	
	<label>Estado civil:</label>
	<input type="text" name="civil_status" value="<%= p.getCivil_status() %>" placeholder="estado civil" required>
	
	<button type="submit">Registrar paciente</button>
	</fieldset>
	</form>
	</body>
</html>

