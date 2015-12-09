<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<form role='form' class='form-group' action="/reservaja/inserirquarto" method="post">
						<label>Numero do quarto: </label> <input class='form-control' type="text" size="30" name="numero" required="required"><br> 
						<label>Nome do Hotel: </label> <input class='form-control' type="text" size="20" name="nomehotel" required="required"><br> 
						<label>Tipo: </label>
						<div class="radio">
							<label><input type="radio" name="tipo" value="Luxo">Luxo</label>
						</div>
						<div class="radio">	
							<label><input type="radio" name="tipo" value="Standard">Standard</label>
						</div>
						<div class="radio">	
							<label><input type="radio" name="tipo" value="Presidencial">Presidencial</label>
						</div>
						<br>	
						<label>Andar: </label> <input class='form-control' type="text" size="30" name="andar" required="required"><br> 
						<label>Camas: </label> <input class='form-control' type="text" size="30" name="camas" required="required"><br> 
						<div class='row-fluid'>	
							<div class="col-sm-4">
								<label>Televisão: </label>
								<div class="radio">
									<label><input type="radio" name="televisao" value="True">Sim</label>
								</div>
								<div class="radio">	
									<label><input type="radio" name="televisao" value="False">Não</label>
								</div>
							</div>
							<div class="col-sm-4">
								<label>Frigobar: </label>
								<div class="radio">
						    		<label><input type="radio" name="frigobar" value="True">Sim</label>
								</div>
								<div class="radio">    
						    		<label><input type="radio" name="frigobar" value="False">Não</label>
								</div>
							</div>
							<div class="col-sm-4">	
								<label>ArCondicionado: </label>
								<div class="radio">
									<label><input type="radio" name="arcondicionado" value="True">Sim</label>
								</div>
								<div class="radio">	
									<label><input type="radio" name="arcondicionado" value="False">Não</label>
								</div>
							</div>
						</div>		
						<br>  	
						<input class='btn btn-default' type="submit" value="Cadastrar">
						<input class='btn btn-default' type="reset" value="Limpar">
						<hr>
						<a href='/reservaja/listarquartos'>Listar Quartos</a>
					</form>
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