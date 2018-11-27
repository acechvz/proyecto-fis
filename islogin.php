<?php

session_start();

$usuario = $_POST['user'];
$estado = false; //booleana

if (isset($usuario)) {
	$estado = true;
}