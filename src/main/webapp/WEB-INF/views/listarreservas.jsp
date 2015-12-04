<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listagem de Reservas</title>
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
		<div class='col-sm-2'></div>
		<div class='col-sm-8'>
			<div class='panel panel-default' style='margin-top: 50px;'>
				<div class='panel-heading'>
					<h1 class='text-center'>Listagem de Reservas</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<table class='table table-striped'>
						<tr>
							<th>Id</th>
							<th>CPF</th>
							<th>Data Entrada</th>
							<th>Data Saída</th>
							<th>Qtd Acompanhantes</th>
							<th>Numero do quarto</th>
							<th>Ações</th>
						</tr>
						<c:forEach var="reserva" items="${reservas}">
							<tr id="res${reserva.getId()}">
								<td>${reserva.getId()}</td>
								<td>${reserva.getCpf().getCpf()}</td>
								<td>${reserva.getDataentrada()}</td>
								<td>${reserva.getDatasaida()}</td>
								<td>${reserva.getQtdacompanhantes()}</td>
								<td>${reserva.getNumeroquarto().getNumero()}</td>
								<td><a href="#" onclick="remover(${reserva.getId()})">Remover</a>
									| <a href="/reservaja/editarreserva?id=${reserva.getId()}">Alterar</a></td>
								<script type="text/javascript">
								function remover(id) {
									$.get("/reservaja/removerreserva?", {'id' : id}, function() {
									$("#res" + id).remove();
										});
									}
								</script>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class='panel-footer'>
					<small>&copy <a target='_blank' href='https://github.com/rasertux'>Rafael Sérgio</a></small>
				</div>
			</div>
		</div>
	</div>
	<div class='col-sm-2'></div>
</body>
</html>