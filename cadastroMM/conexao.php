<?php 

$localhost = "localhost";
$username = "root";
$password = "";
$dbname = "clinica";

$con = mysqli_connect($localhost, $username, $password, $dbname);

if($con->connect_error) {
	die("Erro de conexao : " . $con->connect_error);
} else {
	// echo "Conectado com sucesso";
}
?>