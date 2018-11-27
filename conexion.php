<?php
	// Conectando, seleccionando la base de datos
	$user="root";
	$pass="";
	$server="127.0.0.1";
	$db="proyecto_fis";
	$con=mysqli_connect($server,$user,"",$db) or die("Error al conectar a la Base de Datos".mysql_error());
