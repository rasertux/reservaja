<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sistema de Hotéis</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author"
	content="Rafael Sergio" />
<link rel='stylesheet' href="<c:url value='/themes/css/bootstrap.min.css' />">
<script src="<c:url value='/themes/js/jquery-1.11.3.min.js' />"></script>
<script src='<c:url value='/themes/js/bootstrap.min.js' />'></script>
</head>
<body class="container-fluid">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="panel panel-default" style="margin-top: 50px;">
				<div class="panel-heading text-center">
					<h1>Sistema de Hotéis</h1>
				</div>
				<div class="panel-body">
					<p align="center">
						<a href='/reservaja/cadastrarcliente'>Cadastrar Clientes</a>
					</p>
					<p align="center">
						<a href='/reservaja/listarclientes'>Listar Clientes</a>
					</p>
					<p align="center">
						<a href='/reservaja/cadastrarquarto'>Cadastrar Quartos</a>
					</p>
					<p align="center">
						<a href='/reservaja/listarquartos'>Listar Quartos</a>
					</p>
					<p align="center">
						<a href='/reservaja/cadastrarreserva'>Fazer Reserva</a>
					</p>
					<p align="center">
						<a href='/reservaja/listarreservas'>Listar Reservas</a>
					</p>
				</div>
				<div class="panel-footer">
					<small>&copy <a target='_blank' href='https://github.com/rasertux'>Rafael Sérgio</a></small>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</body>
</html>