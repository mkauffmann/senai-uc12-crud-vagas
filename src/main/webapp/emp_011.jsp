<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.1.3/css/bootstrap.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/styles.css'/>">
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
          <a class="nav-link" href="#">Alteração/Exclusão</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Listar Vagas
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="#">Lista de Vagas Abertas</a></li>
            <li><a class="dropdown-item" href="#">Lista de Vagas Encerradas</a></li>
            <li><a class="dropdown-item" href="#">Lista Geral de Vagas</a></li>
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
	<div>
		<table>
			<tbody>
				<tr>
					<td>
						Descrição: 
					</td>
					<td class="info">
						<c:out value="${vaga.descricao}"/>
					</td>
				</tr>
				<tr>
					<td>
						Requisitos Obrigatórios:
					</td>
					<td class="info">
						<c:out value="${vaga.reqObrigatorios}"/>
					</td>
				</tr>
				<tr>
					<td>
						Requisitos Desejáveis:
					</td>
					<td class="info">
						<c:out value="${vaga.reqDesejaveis}"/>
					</td>
				</tr>
				<tr>
					<td>
						Remuneração:
					</td>
					<td class="info">
						<c:out value="${vaga.remuneracao}"/>
					</td>
				</tr>
				<tr>
					<td>
						Benefícios:
					</td>
					<td class="info">
						<c:out value="${vaga.beneficios}"/>
					</td>
				</tr>
				<tr>
					<td>
						Local de Trabalho:
					</td>
					<td class="info">
						<c:out value="${vaga.local}"/>
					</td>
				</tr>
			</tbody>
		</table>
		<c:if test="${vaga != null}"> 
			<p class="sucesso">Vaga incluída com sucesso</p>
		</c:if>
	</div>
</div>
	
	<script src="<c:url value='/webjars/bootstrap/5.1.3/js/bootstrap.js'/>"></script>
</body>
</html>