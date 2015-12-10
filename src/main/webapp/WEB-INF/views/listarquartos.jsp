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
<meta name="author"
	content="Rafael Sergio" />
<link rel='stylesheet' href="<c:url value='/themes/css/bootstrap.min.css' />">
<script src="<c:url value='/themes/js/jquery-1.11.3.min.js' />"></script>
<script src="<c:url value='/themes/js/removerquarto.js' />"></script>
<script src='<c:url value='/themes/js/bootstrap.min.js' />'></script>
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
								<td><a href="#" onclick="removerquarto(${quarto.getNumero()})"><img src="<c:url value='/themes/imgs/remover.png' />" width='15%'></a>
									| <a href="/reservaja/editarquarto?numero=${quarto.getNumero()}"><img src="<c:url value='/themes/imgs/alterar.png' />" width='15%'></a>
								</td>
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