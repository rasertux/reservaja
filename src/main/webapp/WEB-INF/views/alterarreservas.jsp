<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="customtag" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alterar Reserva</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<meta name="author"
	content="Rafael Sergio" />
<link rel='stylesheet' href="<c:url value='/themes/css/bootstrap.min.css' />">
<link rel='stylesheet' href="<c:url value='/themes/css/bootstrap-datepicker.min.css' />">
<script src="<c:url value='/themes/js/jquery-1.11.3.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/themes/js/moment-with-locales.min.js' />"></script>
<script src='<c:url value='/themes/js/bootstrap.min.js' />'></script>
<script type="text/javascript" src="<c:url value='/themes/js/bootstrap-datepicker.min.js' />"></script>
<script src="<c:url value='/themes/js/locales/bootstrap-datepicker.pt-BR.min.js' />" charset="UTF-8"></script>
</head>
<body class='container-fluid'>
	<div class='row'>
		<div class='col-sm-4'></div>
		<div class='col-sm-4'>
			<div class='panel panel-default' style='margin-top: 50px;'>
				<div class='panel-heading'>
					<h1 class='text-center'>Alterar Reserva</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<form class='form-group' action="/reservaja/alterareserva" method="post">
						<label>Id Reserva: </label> <input class='form-control' type="text" size="30" name="id" readonly value="${reserva.getId()}" required="required"><br>
						<label>CPF: </label>
						<select class='form-control' name='cliente_id'>
							<c:forEach var="cliente" items="${clientes}">
								<c:choose>
									<c:when test="${cliente.getCpf() ne reserva.getCpf().getCpf()}">
										<option value="${cliente.getId()}">${cliente.getCpf()}</option>
									</c:when>
									<c:otherwise>
										<option value="${reserva.getCpf().getId()}" selected=selected >${reserva.getCpf().getCpf()}</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</select><br>
						<label>Data da Entrada: </label> <customtag:campoData id="dataentrada" value="${reserva.getDataentrada()}" /><br> 
						<label>Data da Saida: </label> <customtag:campoData id="datasaida" value="${reserva.getDatasaida()}" /><br> 
						<label>Quantidade de acompanhantes: </label> <input class='form-control' type="text" size="30" name="qtdacompanhantes" value="${reserva.getQtdacompanhantes()}" required="required"><br>
						<label>Numero do Quarto: </label>
						<select class="form-control" name="numero_quarto">
							<c:forEach var="quarto" items="${quartos}">
								<c:choose>
									<c:when test="${quarto.getNumero() ne reserva.getNumeroquarto().getNumero()}">
										<option value="${quarto.getNumero()}">${quarto.getNumero()}</option>		
									</c:when>
									<c:otherwise>
										<option value="${reserva.getNumeroquarto().getNumero()}" selected=selected >${reserva.getNumeroquarto().getNumero()}</option>
									</c:otherwise>
								</c:choose>
								
							</c:forEach>
						</select><br>
						<input class='btn btn-default' type="submit" value="Alterar">
						<hr>
						<a href='/reservaja/listarreservas'>Listar Reservas</a>
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