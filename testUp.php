<!DOCTYPE HTML>
<html>
	<head>
		<title>SISTEMA ITM</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<center><img src="images/Itm.png"></center>
		<?php
			require_once "conexion.php"
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
								<h2>Crear Examen</h2>
								<form method="post">
							  <div>
							    <b>Pregunta 1</b>
							    <input type="text" id="usuario" name="user" placeholder="Pregunta 1"><br>
							    <input type="text" name="respuesta" placeholder="Opcion 1">
							    <input type="text" name="respuesta" placeholder="Opcion 2">
							    <input type="text" name="respuesta" placeholder="Opcion 3">
							  </div>
							  <br>
							  <div>
							    <b>Pregunta 2</b>
							    <input type="text" id="usuario" name="user" placeholder="Pregunta 2"><br>
							    <input type="text" name="respuesta" placeholder="Opcion 1">
							    <input type="text" name="respuesta" placeholder="Opcion 2">
							    <input type="text" name="respuesta" placeholder="Opcion 3">
							  </div>
							  <br>
							  <div>
							    <b>Pregunta 3</b>
							    <input type="text" id="usuario" name="user" placeholder="Pregunta 3"><br>
							    <input type="text" name="respuesta" placeholder="Opcion 1">
							    <input type="text" name="respuesta" placeholder="Opcion 2">
							    <input type="text" name="respuesta" placeholder="Opcion 3">
							  </div>
							  <br>
							  <div class="button">
							    <button onmouseup="alert('Examen Creado con Exito')">Crear Examen</button>
							  </div>
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