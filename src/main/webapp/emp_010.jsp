<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Sistema de vagas - Inclusão</title>
</head>
<body>
<jsp:include page="/nav.jsp" />
<div class="container">
	<div class="text-center mt-3">
		<h1>Sistema de controle de Vagas de Emprego</h1>
		<h2>Inclusão</h2>
	</div>
	<div class="mt-3 col-12 col-md-6">
		<form class="d-flex flex-column" method="post" action="add">
			<div class="mb-3">
				<label for="descricao" class="form-label">Descrição</label>
				<input type="text" class="form-control" id="descricao" name="descricao" required>
			</div>
			<div class="mb-3">
				<label for="reqObrigatorios" class="form-label">Requisitos Obrigatórios</label>
				<input type="text" class="form-control" id="reqObrigatorios" name="reqObrigatorios" required>
			</div>
			<div class="mb-3">
				<label for="reqDesejaveis" class="form-label">Requisitos Desejáveis</label>
				<input type="text" class="form-control" id="reqDesejaveis" name="reqDesejaveis">
			</div>
			<div class="mb-3">
				<label for="remuneracao" class="form-label">Remuneração</label>
				<input type="text" class="form-control" id="remuneracao" name="remuneracao" required>
			</div>
			<div class="mb-3">
				<label for="beneficios" class="form-label">Benefícios</label>
				<input type="text" class="form-control" id="beneficios" name="beneficios" required>
			</div>
			<div class="mb-3">
				<label for="local" class="form-label">Local de Trabalho</label>
				<input type="text" class="form-control" id="local" name="local" required>
			</div>
			<div class="align-self-end mb-3">
				<button type="reset" class="btn btn-outline-secondary">Limpar</button>
				<button type="submit" class="btn btn-primary">Enviar</button>
			</div>
		</form>
	</div>
	
</div>
	
	
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>