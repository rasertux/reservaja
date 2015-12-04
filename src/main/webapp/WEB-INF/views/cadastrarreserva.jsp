<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reserva</title>
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
					<h1 class='text-center'>Reserva</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<form role='form' class='form-group' action="/reservaja/inserirreserva" method="post">
						<label>CPF: </label>
						<select class='form-control' name='cliente_id'>
							<c:forEach var="cliente" items="${clientes}">
								<option value="${cliente.getId()}">${cliente.getCpf()}</option>
							</c:forEach>
						</select><br>
						<label>Data da Entrada: </label> <input class='form-control' type="text" size="20" name="dataentrada" required="required"><br> 
						<label>Data da Saida: </label> <input class='form-control' type="text" size="20" name="datasaida" required="required"><br> 
						<label>Quantidade de acompanhantes: </label> <input class='form-control' type="text" size="30" name="qtdacompanhantes" required="required"><br>
						<label>Numero do Quarto: </label>
						<select class='form-control' name='numero_quarto'>
							<c:forEach var="quarto" items="${quartos}">
								<option value="${quarto.getNumero()}">${quarto.getNumero()}</option>
							</c:forEach>
						</select><br>
						<input class='btn btn-default' type="submit" value="Cadastrar">
						<input class='btn btn-default' type="reset" value="Limpar">
						<hr>
						<a href='/reservaja/listarreservas'>Listar Reservas</a>
					</form>
				</div>
				<div class='panel-footer'>
					<small>&copy <a target='_blank' href='https://github.com/rasertux'>Rafael Sérgio</a></small>
				</div>
			</div>
		</div>
	</div>
	<div class='col-sm-4'></div>
</body>
</html>