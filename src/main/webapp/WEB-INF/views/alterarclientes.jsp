<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="customtag" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alterar Cliente</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<meta name="author"
	content="Rafael Sergio" />
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
					<h1 class='text-center'>Alterar Cliente</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<form class='form-group' action="/reservaja/alteracliente" method="post">
						<label>ID: </label> <input class='form-control' type="text" size="30" name="id" value="${cliente.getId()}" readonly required="required"><br> 
						<label>cpf: </label> <input class='form-control' type="text" size="30" name="cpf" value="${cliente.getCpf()}" required="required"><br>
						<label>Nome: </label> <input class='form-control' type="text" size="20" name="nome" value="${cliente.getNome()}" required="required"><br> 
						<label>Data Nascimento: </label> <input class='form-control' type="text" size="20" name="datanascimento" value="<customtag:localDate date="${cliente.getDatanascimento()}" pattern="dd/MM/yyyy"/>" required="required"><br> 
						<label>Sexo: </label> <input class='form-control' type="text" size="30" name="sexo" value="${cliente.getSexo()}" required="required"><br>
						<label>Estado Civil: </label> <input class='form-control' type="text" size="30" name="estadocivil" value="${cliente.getEstadocivil()}" required="required"><br>
						<label>Nº Filhos: </label> <input class='form-control' type="text" size="30" name="filhos" value="${cliente.getFilhos()}" required="required"><br> 
						<label>Telefone: </label> <input class='form-control' type="text" size="30" name="telefone" value="${cliente.getTelefone()}" required="required"><br>
						<label>Estado: </label> <input class='form-control' type="text" size="30" name="estadoorigem" value="${cliente.getEstadoorigem()}" required="required"><br>
						<label>Cidade: </label> <input class='form-control' type="text" size="30" name="cidadeorigem" value="${cliente.getCidadeorigem()}" required="required"><br>
						<input class='btn btn-default' type="submit" value="Alterar">
						<hr>
						<a href='/reservaja/listarcliente'>Listar Clientes</a>
					</form>
				</div>
				<div class='panel-footer'>
					<small>&copy <a target='_blank' href='https://github.com/rasertux'>Rafael Sérgio</a></small>
				</div>
			</div>
		</div>
		<div class='col-sm-4'></div>
	</div>
</body>
</html>