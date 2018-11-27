<?php 

$usuario=$_POST['user'];
$contraseña=$_POST['user_pass'];

if(empty($usuario) AND empty($contraseña)){

	echo "Usuario y contraseña no validos. <br> <a href='index.php'> Volver al Login </a>";
}
	else {
		if ($usuario == 'admin' AND $contraseña == 'admin') {
			header('Location: testUp.php');
		}
	else{
		if ($usuario == 'alum' AND $contraseña == 'alum') {
			header('Location: 1Alu.php');
		}
	}

}