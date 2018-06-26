<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.Access"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ver Lista de Accesos</title>
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
	<div class="container-fluid" style="background-color: #000000;">
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
		List<Access> accesses = (List<Access>) request.getAttribute("accesses");
	%>
	<center>
		<a href="/access/add">Agregar Acceso</a>
	</center>

	<div class="container" style="background-color: #FFFFFF;">


		<%
			if (accesses.size() > 0) {
		%>
		<ul class="list-group" id="myList">
			<%
				for (int i = 0; i < accesses.size(); i++) {
			%>
			<%
				Access a = (Access) accesses.get(i);
			%>
			<li class="list-group-item"><%=a.getIdRole()%> <a
				href="/access/delete?id=<%=a.getId()%>"
				class="btn btn-outline-danger btn-sm RbtnMargin float-right">Delete
					</button>
			</a> <a href="/access/view?id=<%=a.getId()%>"
				class="btn btn-outline-secondary btn-sm RbtnMargin float-right">View
					</button>
			</a> <a href="/access/update?id=<%=a.getId()%>"
				class="btn btn-outline-info btn-sm RbtnMargin float-right">Edit
					</button>
			</a></li>
			<%
				}
			%>
		</ul>
	</div>
	<%
		}
	%>

</body>
</html>