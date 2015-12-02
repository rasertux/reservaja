<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Cliente</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<meta name="author"
	content="Gustavo, Leandro, Rafael, Murilo, FabrÃ­cio" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body class='container-fluid'>
	<div class='row'>
		<div class='col-sm-4'></div>
		<div class='col-sm-4'>
			<div class='panel panel-default' style='margin-top: 50px;'>
				<div class='panel-heading'>
					<h1 class='text-center'>Cadastro de Cliente</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<form role='form' class='form-group' action="/reservaja/inserircliente" method="post">
						    <label>cpf: </label> <input class='form-control' type="text" size="30" name="cpf" required="required"><br> 
							<label>Nome: </label> <input class='form-control' type="text" size="20" name="nome" required="required"><br> 
							<label>Data Nascimento: </label> <input class='form-control' type="text" size="20" name="datanascimento" required="required"><br> 
							<label>Sexo: </label> <input class='form-control' type="text" size="30" name="sexo" required="required"><br> 
							<label>Estado Civil: </label> <input class='form-control' type="text" size="30" name="estadocivil" required="required"><br> 
							<label>Nº Filhos: </label> <input class='form-control' type="text" size="30" name="filhos" required="required"><br>
						    <label>Telefone: </label> <input class='form-control' type="text" size="30" name="telefone" required="required"><br>
						    <label>Estado: </label> <input class='form-control' type="text" size="30" name="estadoorigem" required="required"><br>
						    <label>Cidade: </label> <input class='form-control' type="text" size="30" name="cidadeorigem" required="required"><br>
						<input class='btn btn-default' type="submit" value="Cadastrar">
						<input class='btn btn-default' type="reset" value="Limpar">
						<hr>
						<a href='/reservaja/listarclientes'>Listar Clientes</a>
					</form>
				</div>
				<div class='panel-footer'>
					<small>&copy <a href='https://github.com/tavogus'
						target='_blank'>Gustavo, Leandro, Rafael, Murilo, Fabrício</a></small>
				</div>
			</div>
		</div>
	</div>
	<div class='col-sm-4'></div>
</body>
</html>