<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Contato</title> 
	<style>
		body{font-family: Arial, Helvetica, sans-serif}
		.content{display:flex;justify-content: center;}
		.contato{width: 100%; max-width: 500px;}
		.form{display: flex;flex-direction: column;}
		.fiel{padding: 10px; margin-bottom: 15px;border:1px solid #DDD;border-radius: 5px;font-family: Arial, Helvetica, sans-serif; font-size:16px}
		textarea{height: 150px;}



	</style>







</head>
<body>
 <section class="content">
 	<div class="contato">
 		 <center> <h3>Formulário de Contato Médico</h3> </center>
        <form class="form" action="salvar.php" method="POST">
        	<input  type="text" class="field" name="nome" placeholder="Nome:">
        	<select id="select" name="sexo" required="">
				<option value="">Selecione...</option>
				<option value="Masculino">Masculino</option>
				<option value="Feminino">Feminino</option>
				<option value="Não binário">Não binário</option>
			</select>
        	<input  type="tel" id="phone" pattern="[0-9]{2}-[0-9]{5}-[0-9]{4}"
       required class="field" name="Telefone" placeholder="Telefone:">
        	
        	<input type="number" class="field" name="CPF" placeholder="CPF:">

        	<input type="text" class="field" name="CEP" placeholder="CEP:">
        	
        	<input type="text" class="field" name="Cidade" placeholder="Cidade:">
        	
        	<textarea  class="field" name="historico" placeholder="Historico Médico"></textarea>
            
            <input class="field" type="submit" value="Enviar">
        </form>
</body>
</html>