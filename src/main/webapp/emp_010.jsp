<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
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
		<c:choose>
			<c:when test="${update}">
				<h2>Alteração</h2>
			</c:when>
			<c:otherwise>
				<h2>Inclusão</h2>
			</c:otherwise>
		</c:choose>
	</div>
	<div class="mt-3 col-12 col-md-6">
		<c:choose>
			<c:when test="${update}">
				<form class="d-flex flex-column" method="post" action="update">
					<div class="mb-3">
						<label for="id" class="form-label">ID</label>
						<input type="text" class="form-control" name="id" value="${ vaga.id}" disabled/>
						<input type="hidden" name="id" value="${ vaga.id}" />		
					</div>
			</c:when>
			<c:otherwise>
				<form class="d-flex flex-column" method="post" action="add">
			</c:otherwise>
		</c:choose>
			<div class="mb-3">
				<label for="descricao" class="form-label">Descrição</label>
				<input type="text" class="form-control" id="descricao" name="descricao" value="${vaga.descricao }" required>
			</div>
			<div class="mb-3">
				<label for="reqObrigatorios" class="form-label">Requisitos Obrigatórios</label>
				<input type="text" class="form-control" id="reqObrigatorios" name="reqObrigatorios" value="${vaga.reqObrigatorios }" required>
			</div>
			<div class="mb-3">
				<label for="reqDesejaveis" class="form-label">Requisitos Desejáveis</label>
				<input type="text" class="form-control" id="reqDesejaveis" name="reqDesejaveis" value="${vaga.reqDesejaveis }">
			</div>
			<div class="mb-3">
				<label for="remuneracao" class="form-label">Remuneração</label>
				<input type="text" class="form-control" id="remuneracao" name="remuneracao" value="${vaga.remuneracao }"required>
			</div>
			<div class="mb-3">
				<label for="beneficios" class="form-label">Benefícios</label>
				<input type="text" class="form-control" id="beneficios" name="beneficios" value="${vaga.beneficios }" required>
			</div>
			<div class="mb-3">
				<label for="local" class="form-label">Local de Trabalho</label>
				<input type="text" class="form-control" id="local" name="local" value="${vaga.local }" required>
			</div>
			<c:if test="${update }" >
				<div class="mb-3">
					<label for="aberta" class="form-label">Aberta</label>
					<select id="aberta" name="aberta" class="form-control" value="${vaga.aberta }">
						<option value="${true }">Sim</option>
						<option value="${false }" <c:if test="${ !vaga.aberta}">selected</c:if>> Não</option>
					</select>
				</div>
			</c:if>
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