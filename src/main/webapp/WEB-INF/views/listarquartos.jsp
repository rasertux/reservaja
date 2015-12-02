<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listagem de Quartos</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
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
					<h1 class='text-center'>Listagem de Quartos</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<table class='table table-striped'>
						<tr>
							<th>Numero</th>
							<th>Nome do Hotel</th>
							<th>Tipo</th>
							<th>Andar</th>
							<th>Camas</th>
							<th>Televisão?</th>
							<th>Frigobar?</th>
							<th>Arcondicionado?</th>
							<th>Ação</th>
						</tr>
						<c:forEach var="quarto" items="${quartos}">
							<tr id="qua${quarto.getNumero()}">
								<td>${quarto.getNumero()}</td>
								<td>${quarto.getNomehotel()}</td>
								<td>${quarto.getTipo()}</td>
								<td>${quarto.getAndar()}</td>
								<td>${quarto.getCamas()}</td>
								<td>${quarto.isTelevisao()}</td>
								<td>${quarto.isFrigobar()}</td>
								<td>${quarto.isArcondicionado()}</td>
								<td><a href="#" onclick="remover(${quarto.getNumero()})">Remover</a>
									| <a
									href="/reservaja/editarquarto?numero=${quarto.getNumero()}">Alterar</a></td>
								<script type="text/javascript">
								function remover(numero) {
									$.get("/reservaja/removerquarto?", {'numero' : numero}, function() {
									$("#qua" + numero).remove();
										});
									}
								</script>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class='panel-footer'>
					<small>&copy <a href="https://github.com/tavogus"
						target="_blank">Gustavo, Leandro, Rafael, Murilo, Fabrício</a></small>
				</div>
			</div>
		</div>
	</div>
	<div class='col-sm-2'></div>
</body>
</html>