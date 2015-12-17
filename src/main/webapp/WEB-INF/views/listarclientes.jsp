<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="customtag" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listagem de Clientes</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<meta name="author"
	content="Rafael Sergio" />
<link rel='stylesheet' href="<c:url value='/themes/css/bootstrap.min.css' />">
<script src="<c:url value='/themes/js/jquery-1.11.3.min.js' />"></script>
<script src="<c:url value='/themes/js/removercliente.js' />"></script>
<script src='<c:url value='/themes/js/bootstrap.min.js' />'></script>
</head>
<body class='container-fluid'>
	<div class='row'>
		<div class='col-sm-2'></div>
		<div class='col-sm-8'>
			<div class='panel panel-default' style='margin-top: 50px;'>
				<div class='panel-heading'>
					<h1 class='text-center'>Listagem de Clientes</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<table class='table table-striped'>
						<tr>
							<th>cpf</th>
							<th>Nome</th>
							<th>Data Nascimento</th>
							<th>Sexo</th>
							<th>Estado Civil</th>
							<th>Numero Filhos</th>
							<th>Telefone</th>
							<th>Celular</th>
							<th>Cidade</th>
							<th>Ações</th>
						</tr>
						<c:forEach var="cliente" items="${clientes}">
							<tr id="cli${cliente.getCpf()}">
								<td>${cliente.getCpf()}</td>
								<td>${cliente.getNome()}</td>
								<td><fmt:formatDate value="${cliente.getDatanascimento().time}" type="date" pattern="dd/MM/yyyy"/></td>
								<td>${cliente.getSexo()}</td>
								<td>${cliente.getEstadocivil()}</td>
								<td>${cliente.getFilhos()}</td>
								<td>${cliente.getTelefone()}</td>
								<td>${cliente.getCelular()}</td>
								<td>${cliente.getCidadeorigem()}</td>
								<td><a href="#" onclick="removercliente(${cliente.getCpf()})"><img src="<c:url value='/themes/imgs/remover.png' />" width='15%'></a>
									| <a href="/reservaja/editarcliente?cpf=${cliente.getCpf()}"><img src="<c:url value='/themes/imgs/alterar.png' />" width='15%'></a>
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