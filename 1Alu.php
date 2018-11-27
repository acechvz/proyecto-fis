<!DOCTYPE HTML>
<html>
	<head>
		<title>SISTEMA ITM</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<center><img src="images/Itm.png"></center>
		<?php
		// Conectando, seleccionando la base de datos
		$user="root";
		$pass="";
		$server="localhost";
		$db="examendep";
		$con=mysqli_connect($server,$user,"",$db) or die("Error al conectar a la Base de Datos".mysql_error());
		?>
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
					<!-- Titulo -->
						<h1><a>SISTEMA DE EXAMENES DEPARTAMENTALES</a></h1>
					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.php">Home</a></li>
								<li><a href="index.php">Cerrar Sesion</a></li>
							</ul>
						</nav>
					<!-- Banner -->
						<section id="banner">
							<header>
								<h2>Materia</h2>
								<form action="examen.html" method="post">
							  <div>
								<select>
									<option></option>
									<option>Ingenieria de Software</option>
									<option>Base de Datos</option>
									<option>POO</option>
									<option>Estructura de Datos</option>
								</select>
							  </div>
							  <br>
							  <input type="submit" name="" value="Realizar Examen">
							</form>
							</header>
						</section>
			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">
							<div class="col-12">

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>