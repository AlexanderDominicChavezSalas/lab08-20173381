<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Agregar Paciente</title>
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

      <form method="post" action="/patients/add">
      
        <h1>Paciente</h1>
        <fieldset>
          <label>Nombre y apellidos completos:</label>
		  <input type="text" name="name" placeholder="Nombre " pattern="[A-Z]{1}[a-z]+" required >
          
		  <label>Numero de historia clinica:</label>
		  <input type="text" name="ch_number" placeholder="0000/2018" pattern="[0-9]{4}[/]{1}[0-9]{4}" required>
		  
		  <label>DNI:</label>
		  <input type="text" name="DNI" placeholder="90909090 " pattern="[0-9]{8}" required>
			
          <label>Fecha de apertura de la Historia Clínica:</label>
		  <input type="date" name="created" required >
		 
		  <label>Sexo:</label><br>
          <input type="radio" name="gender" value="true" checked >Hombre
		  <input type="radio" name="gender" value="false" >Mujer<br>
          
          <label>Lugar de nacimiento:</label>
		  <input type="text" name="place_birth" placeholder="lugar de nacimiento" required>
          
		  <label>Fecha de nacimiento:	</label>
		  <input type="date" name="birth"  required>
		  
		  <label for="degree_instruction">Grado de instruccion:</label>
		  <input type="text" name="degree_instruction" placeholder="grado de instruccion" required>
				
		  <label>Raza:</label>
		  <input type="text" name="race" placeholder="raza" requiered>
		  
		  <label>Ocupacion:</label>
		  <input type="text" name="occupation" placeholder="ocupacion" required>
		  
		  <label>Religion:</label>
		  <input type="text" name="religion" placeholder="religion" required>
		  
		  <label for="civil_status">Estado civil:</label>
		  <input type="text" name="civil_status" placeholder="estado civil" required>
        </fieldset>
        <button type="submit">Registrar paciente</button>
      </form>
    </body>
</html>
