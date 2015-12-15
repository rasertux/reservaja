<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Quartos</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<meta name="author"
	content="Rafael Sergio" />
<link rel='stylesheet' href="<c:url value='/themes/css/bootstrap.min.css' />">
<script src="<c:url value='/themes/js/jquery-1.11.3.min.js' />"></script>
<script src='<c:url value='/themes/js/bootstrap.min.js' />'></script>
</head>
<body class='container-fluid'>
	<div class='row'>
		<div class='col-sm-4'></div>
		<div class='col-sm-4'>
			<div class='panel panel-default' style='margin-top: 50px;'>
				<div class='panel-heading'>
					<h1 class='text-center'>Cadastro de Quartos</h1>
					<a href='/reservaja'> Menu</a>
				</div>
				<div class='panel-body'>
					<form:form class='form-group' action="/reservaja/inserirquarto" method="post" modelAttribute="quarto">
						<label for="numero">Numero do quarto: </label> 
						<form:input class='form-control' path="numero" id="numero" /><br>
						<c:choose>
						    <c:when test="${erros}">
						    	<div>
						    		<form:errors path="numero" cssClass="alert alert-danger"/><br><br>
						    	</div>
							</c:when>
						</c:choose>  
						<label for="nomehotel">Nome do Hotel: </label> 
						<form:input class='form-control' id="nomehotel" path="nomehotel" /><br> 
						<label for="tipo">Tipo: </label>
						<div class="radio">
							<label><form:radiobutton id="tipo" path="tipo" value="Luxo" />Luxo</label>
						</div>
						<div class="radio">	
							<label><form:radiobutton id="tipo" path="tipo" value="Standard" />Standard</label>
						</div>
						<div class="radio">	
							<label><form:radiobutton id="tipo" path="tipo" value="Presidencial" />Presidencial</label>
						</div>
						<br>	
						<label for="andar">Andar: </label> 
						<form:input class='form-control' id="andar" path="andar" /><br>
						<c:choose>
						   	<c:when test="${erros}">
						   		<div>
						   			<form:errors path="andar" cssClass="alert alert-danger"/><br><br>
						   		</div>
						   	</c:when>
						</c:choose> 
						<label for="camas">Camas: </label> 
						<form:input class='form-control' id="camas" path="camas" /><br> 
						<div class='row-fluid'>	
							<div class="col-sm-4">
								<label for="televisao">Televisão: </label>
								<div class="radio">
									<label><form:radiobutton id="televisao" path="televisao" value="True" />Sim</label>
								</div>
								<div class="radio">	
									<label><form:radiobutton id="televisao" path="televisao" value="False" />Não</label>
								</div>
							</div>
							<div class="col-sm-4">
								<label for="frigobar">Frigobar: </label>
								<div class="radio">
						    		<label><form:radiobutton id="frigobar" path="frigobar" value="True" />Sim</label>
								</div>
								<div class="radio">    
						    		<label><form:radiobutton id="frigobar" path="frigobar" value="False" />Não</label>
								</div>
							</div>
							<div class="col-sm-4">	
								<label for="arcondicionado">ArCondicionado: </label>
								<div class="radio">
									<label><form:radiobutton id="arcondicionado" path="arcondicionado" value="True" />Sim</label>
								</div>
								<div class="radio">	
									<label><form:radiobutton id="arcondicionado" path="arcondicionado" value="False" />Não</label>
								</div>
							</div>
						</div>		
						<br>  	
						<input class='btn btn-default' type="submit" value="Cadastrar">
						<input class='btn btn-default' type="reset" value="Limpar">
						<hr>
						<a href='/reservaja/listarquartos'>Listar Quartos</a>
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