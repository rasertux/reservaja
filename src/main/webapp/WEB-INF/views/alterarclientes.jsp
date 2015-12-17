<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="customtag" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alterar Cliente</title>
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
					<h1 class='text-center'>Alterar Cliente</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<form:form class='form-group' action="/reservaja/alteracliente" method="post" modelAttribute="cliente"> 
						<label for="cpf">cpf: </label> 
						<form:input class='form-control' path="cpf" id="cpf" value="${cliente.getCpf()}" /><br>
						<c:choose>
						   	<c:when test="${erros}">
						   		<div>
						   			<form:errors path="cpf" cssClass="alert alert-danger"/><br><br>
						   		</div>	
						   	</c:when>
						</c:choose> 
						<label for="nome">Nome: </label> 
						<form:input class='form-control' path="nome" id="nome" value="${cliente.getNome()}" /><br>
						<c:choose>
						   	<c:when test="${erros}">
						   		<div>
						   			<form:errors path="nome" cssClass="alert alert-danger"/><br><br>
						   		</div>	
						   	</c:when>
						</c:choose> 
						<label for="datanascimento">Data Nascimento: </label> 
						<customtag:campoData id="datanascimento" value="${cliente.getDatanascimento().time}" /><br>
						<c:choose>
						   	<c:when test="${erros}">
						   		<div>
						   			<form:errors path="datanascimento" cssClass="alert alert-danger"/><br><br>
						   		</div>	
						   	</c:when>
						</c:choose> 
						<label>Sexo: </label>
							<c:choose>
								<c:when test="${cliente.getSexo() eq 'M'.charAt(0)}">
									<div class="radio">
										<label><input type="radio" name="sexo" value='M' checked >Masculino</label>
									</div>
									<div class="radio">	
										<label><input type="radio" name="sexo" value='F'>Feminino</label>
									</div>	
								</c:when>
								<c:otherwise>
									<div class="radio">
										<label><input type="radio" name="sexo" value='M' >Masculino</label>
									</div>
									<div class="radio">	
										<label><input type="radio" name="sexo" value='F' checked >Feminino</label>
									</div>	
								</c:otherwise>
							</c:choose>
						<label>Estado Civil: </label>
							<c:choose>
								<c:when test="${cliente.getEstadocivil() eq 'Casado/a'}">
									<div class="radio">
										<label><input type="radio" name="estadocivil" value="Casado/a" checked >Casado/a</label>
									</div>
									<div class="radio">
										<label><input type="radio" name="estadocivil" value="Solteiro/a">Solteiro/a</label>
									</div>
									<div class="radio">	
										<label><input type="radio" name="estadocivil" value="Viúvo/a">Viúvo/a</label>
									</div>	
								</c:when>
								<c:when test="${cliente.getEstadocivil() eq 'Solteiro/a'}">
									<div class="radio">
										<label><input type="radio" name="estadocivil" value="Casado/a">Casado/a</label>
									</div>
									<div class="radio">
										<label><input type="radio" name="estadocivil" value="Solteiro/a" checked >Solteiro/a</label>
									</div>
									<div class="radio">	
										<label><input type="radio" name="estadocivil" value="Viúvo/a">Viúvo/a</label>
									</div>
								</c:when>
								<c:otherwise>
									<div class="radio">
										<label><input type="radio" name="estadocivil" value="Casado/a">Casado/a</label>
									</div>
									<div class="radio">
										<label><input type="radio" name="estadocivil" value="Solteiro/a">Solteiro/a</label>
									</div>
									<div class="radio">	
										<label><input type="radio" name="estadocivil" value="Viúvo/a" checked >Viúvo/a</label>
									</div>
								</c:otherwise>
							</c:choose>
						<label>Nº Filhos: </label>
						<select class="form-control" name="filhos">
							<c:forEach begin="0" end="10" varStatus="loop">
								<c:choose>
									<c:when test="${cliente.getFilhos() ne loop.index}">
										<option value="${loop.index}" >${loop.index}</option>
									</c:when>
									<c:otherwise>
										<option value="${cliente.getFilhos()}" selected=selected >${cliente.getFilhos()}</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</select>
						<br> 
						<label>Telefone: </label> <input class='form-control' type="text" size="30" name="telefone" value="${cliente.getTelefone()}" required="required"><br>
						<label>Celular: </label> <input class='form-control' type="text" size="30" name="celular" value="${cliente.getCelular()}" required="required"><br>
						<label>Estado: </label> <input class='form-control' type="text" size="30" name="estadoorigem" value="${cliente.getEstadoorigem()}" required="required"><br>
						<label>Cidade: </label> <input class='form-control' type="text" size="30" name="cidadeorigem" value="${cliente.getCidadeorigem()}" required="required"><br>
						<input class='btn btn-default' type="submit" value="Alterar">
						<hr>
						<a href='/reservaja/listarcliente'>Listar Clientes</a>
					</form:form>
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