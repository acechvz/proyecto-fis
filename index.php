<!DOCTYPE HTML>
<html>
	<head>
		<title>SISTEMA ITM</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<center><img src="images/Itm.png"></center>
		<?php
			require_once "conexion.php";
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
								<li class="current"><a href="index.php">Home</a></li>
								<li class="current" ><a href="logout.php">Cerrar Sesion</a></li>
							</ul>
						</nav>
					
					<!-- Banner -->
						<section id="banner">
							<header>
								<h2>LOGIN</h2>
								<form action="validacion.php" method="post">
							  <div>
							    <label for="user">Usuario:</label>
							    <input type="text" id="usuario" name="user" placeholder="Usuario">
							  </div>

							  <div>
							    <label for="password">Contrase&ntilde;a:</label>
							    <input type="password" id="pass" name="user_pass" placeholder="Contraseña">
							  </div> 
							  <br>
							  <div class="button">
							    <button type="submit" >Ingresa</button>
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