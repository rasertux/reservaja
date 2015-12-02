<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alterar Quarto</title>
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
					<h1 class='text-center'>Alterar Quarto</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<form class='form-group' action="/reservaja/alteraquarto"
						method="post">
						<label>Numero do quarto: </label> <input class='form-control'
							type="text" size="30" name="numero" readonly
							value="${quarto.getNumero()}" required="required"><br>
						<label>Nome do Hotel: </label> <input class='form-control'
							type="text" size="20" name="nomehotel"
							value="${quarto.getNomehotel()}" required="required"><br>
						<label>Tipo: </label> <input class='form-control' type="text"
							size="20" name="tipo" value="${quarto.getTipo()}"
							required="required"><br> <label>Andar: </label> <input
							class='form-control' type="text" size="30" name="andar"
							value="${quarto.getAndar()}" required="required"><br>
						<label>Camas: </label> <input class='form-control' type="text"
							size="30" name="camas" value="${quarto.getCamas()}"
							required="required"><br> <label>Televisão: </label>
						<input class='form-control' type="text" size="30" name="televisao"
							value="${quarto.isTelevisao()}" required="required"><br>
						<label>Frigobar: </label> <input class='form-control' type="text"
							size="30" name="frigobar" value="${quarto.isFrigobar()}"
							required="required"><br> <label>ArCondicionado:
						</label> <input class='form-control' type="text" size="30"
							name="arcondicionado" value="${quarto.isArcondicionado()}"
							required="required"><br> <input
							class='btn btn-default' type="submit" value="Alterar">
						<hr>
						<a href='/reservaja/listarquartos'>Listar Quartos</a>
					</form>
				</div>
				<div class='panel-footer'>
					<small>&copy <a href='https://github.com/DaveKun'
						target='_blank'>David Martins</a>, <a target='_blank'
						href='https://github.com/rasertux'>Rafael Sérgio</a></small>
				</div>
			</div>
		</div>
		<div class='col-sm-4'></div>
	</div>
</body>
</html>