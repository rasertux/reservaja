<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="customtag" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reserva</title>
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
					<h1 class='text-center'>Reserva</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<form:form role='form' class='form-group' action="/reservaja/inserirreserva" method="post" modelAttribute="reserva">
						<label for="cpf">CPF: </label>
						<select class='form-control' name='cpf'>
							<c:forEach var="cliente" items="${clientes}">
								<option value="${cliente.getCpf()}">${cliente.getCpf()}</option>
							</c:forEach>
						</select><br>
						<label for="dataentrada">Data da Entrada: </label> 
						<customtag:campoData id="dataentrada" /><br>
						<c:choose>
						   	<c:when test="${erros}">
						   		<div>
						   			<form:errors path="dataentrada" cssClass="alert alert-danger"/><br><br>
						   		</div>
						   	</c:when>
						</c:choose>
						<label for="datasaida">Data da Saida: </label> 
						<customtag:campoData id="datasaida" /><br>
						<c:choose>
						   	<c:when test="${erros}">
						   		<div>
						   			<form:errors path="datasaida" cssClass="alert alert-danger"/><br><br>
						   		</div>
						   	</c:when>
						</c:choose>
						<label for="qtdacompanhantes">Quantidade de acompanhantes: </label> 
						<form:input class='form-control' id="qtdacompanhantes" path="qtdacompanhantes" /><br>
						<c:choose>
						   	<c:when test="${erros}">
						   		<div>
						   			<form:errors path="qtdacompanhantes" cssClass="alert alert-danger"/><br><br>
						   		</div>
						   	</c:when>
						</c:choose>
						<label for="numero_quarto">Numero do Quarto: </label>
						<select class='form-control' name='numero_quarto'>
							<c:forEach var="quarto" items="${quartos}">
								<option value="${quarto.getNumero()}">${quarto.getNumero()}</option>
							</c:forEach>
						</select><br>
						<input class='btn btn-default' type="submit" value="Cadastrar">
						<input class='btn btn-default' type="reset" value="Limpar">
						<hr>
						<a href='/reservaja/listarreservas'>Listar Reservas</a>
					</form:form>
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