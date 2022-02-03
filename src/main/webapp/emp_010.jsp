<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.1.3/css/bootstrap.css'/>">
<title>Sistema de vagas - Inclusão</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="<c:url value='index.jsp'/>">Sistema de Controle de Vagas de Emprego</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<c:url value='emp_010.jsp'/>">Cadastrar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<c:url value='emp_020.jsp'/>">Alteração/Exclusão</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Listar Vagas
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="<c:url value='emp_030.jsp'/>">Lista de Vagas Abertas</a></li>
            <li><a class="dropdown-item" href="<c:url value='emp_030.jsp'/>">Lista de Vagas Encerradas</a></li>
            <li><a class="dropdown-item" href="<c:url value='/all'/>">Lista Geral de Vagas</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
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
	
	
	
	
	<script src="<c:url value='/webjars/bootstrap/5.1.3/js/bootstrap.js'/>"></script>
</body>
</html>