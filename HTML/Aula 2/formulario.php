<!DOCTYPE html>
<html lang="pt-BR">
<meta charset="utf-8">

<head>
	<title>Formulario</title>
</head>

<body>

	<h1>Cadastro de Clientes</h1>

	<form action="cliente.php" method="post">
		<label>Nome Completo:</label>
		<input type="text" name="nome"> <br>

		<label>Endereço:</label>
		<input type="text" name="endereco"> <br>

		<label>Numero:</label>
		<input type="text" name="numero"> <br>

		<label>Complemento:</label>
		<input type="text" name="complemento"> <br>

		<label>Cidade:</label>
		<input type="text" name="cidade"> <br>

		<label>UF:</label>
		<input type="text" name="uf"> <br>

		<label>Sexo:</label>
		<select name="sexo">
			<option>selecione</option>
			<option value="masculino">Masculino</option>
			<option value="feminino">Feminino</option>
			<option value="outro">Outro</option>
		</select> <br>

		<label>Telefone:</label>
		<input type="text" name="telefone" placeholder="(00) 0000-0000"> <br>

		<input type="reset" name="">
		<input type="submit" name="enviar">
	</form>

</body>

</html>