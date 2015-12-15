<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="customtag" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Cliente</title>
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
					<h1 class='text-center'>Cadastro de Cliente</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<form:form role='form' class='form-group' action="/reservaja/inserircliente" method="post" modelAttribute="cliente">
						    <label for="cpf">cpf: </label>
						    <form:input class='form-control' path="cpf" id="cpf" /><br>
						    <c:choose>
						    	<c:when test="${erros}">
						    		<div>
						    			<form:errors path="cpf" cssClass="alert alert-danger"/><br><br>
						    		</div>
						    	</c:when>
						    </c:choose> 
							<label for="nome">Nome: </label> 
							<form:input class='form-control' path="nome" id="nome" /><br>
							<c:choose>
						    	<c:when test="${erros}">
						    		<div>	
						    			<form:errors path="nome" cssClass="alert alert-danger"/><br><br>
									</div>
						    	</c:when>
						    </c:choose> 
							<label for="datanascimento">Data Nascimento: </label> 
							<customtag:campoData id="datanascimento" /><br>
							<c:choose>
						    	<c:when test="${erros}">
						    		<div>	
						    			<form:errors path="datanascimento" cssClass="alert alert-danger"/><br><br> 
									</div>
						    	</c:when>
						    </c:choose> 
							<label for="sexo">Sexo: </label>
							<div class="radio">
								<label><form:radiobutton path="sexo" id="sexo" value='M' />Masculino</label>
							</div>
							<div class="radio">
								<label><form:radiobutton path="sexo" id="sexo" value='F' />Feminino</label>
							</div>
							<label for="estadocivil">Estado Civil: </label>
							<div class="radio">
								<label><form:radiobutton path="estadocivil" id="estadocivil" value="Casado/a" />Casado/a</label>
							</div>
							<div class="radio">
								<label><form:radiobutton path="estadocivil" id="estadocivil" value="Solteiro/a" />Solteiro/a</label>
							</div>
							<div class="radio">
								<label><form:radiobutton path="estadocivil" id="estadocivil" value="Viúvo/a" />Viúvo/a</label>
							</div> 
							<label>Nº Filhos: </label>
							<select class="form-control" name="filhos">
								<c:forEach begin="0" end="10" varStatus="loop">
									<option value="${loop.index}" >${loop.index}</option>
								</c:forEach>
							</select>
							<br>
						    <label for="telefone">Telefone: </label> 
						    <form:input class='form-control' path="telefone" id="telefone" /><br>
						    <label for="celular">Celular: </label> 
						    <form:input class='form-control' path="celular" id="celular" /><br>
						    <label for="estadoorigem">Estado: </label> 
						    <form:input class='form-control' path="estadoorigem" id="estadoorigem" /><br>
						    <label for="cidadeorigem">Cidade: </label> 
						    <form:input class='form-control' path="cidadeorigem" id="cidadeorigem" /><br>
						<input class='btn btn-default' type="submit" value="Cadastrar">
						<input class='btn btn-default' type="reset" value="Limpar">
						<hr>
						<a href='/reservaja/listarclientes'>Listar Clientes</a>
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