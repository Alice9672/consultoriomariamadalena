<?php
include "conexao.php";
$nome 	   = $_POST['nome'];
$sexo 	   = $_POST['sexo'];
$Telefone  = $_POST['Telefone'];
$CPF 	   = $_POST['CPF'];
$CEP 	   = $_POST['CEP'];
$Cidade    = $_POST['Cidade'];
$historico = $_POST['historico'];
$endereco  = "{$Cidade}, {$CEP}";




$sql = "INSERT INTO Paciente(nome_paciente, cpf_paciente, sexo_paciente, telefone_paciente, endereco_paciente,  historico) VALUES ('$nome', '$CPF', '$sexo', '$Telefone', '$endereco',  '$historico')";

$enviar = mysqli_query($con, $sql);

if(!$enviar){
	echo "Não salvou no banco ;-;";
}
else{

	echo "Cadastrado com sucesso!";
}




?>