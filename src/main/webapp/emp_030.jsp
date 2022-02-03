<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
          <a class="nav-link" href="<c:url value='/change'/>">Alteração/Exclusão</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Listar Vagas
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="<c:url value='/all'/>">Lista de Vagas Abertas</a></li>
            <li><a class="dropdown-item" href="<c:url value='/all'/>">Lista de Vagas Encerradas</a></li>
            <li><a class="dropdown-item" href="<c:url value='/vagas/all'/>">Lista Geral de Vagas</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
<h1>Sistema de controle de Vagas de Emprego</h1>
	<c:choose>
		<c:when test="${tipo == 1}">
			<h2>Lista geral de Vagas de Emprego</h2>
		</c:when>
		<c:when test="${tipo == 2}">
			<h2>Lista de Vagas de Emprego Encerradas</h2>
		</c:when>
		<c:when test="${tipo == 3}">
			<h2>Lista de Vagas de Emprego Abertas</h2>
		</c:when>
		<c:when test="${tipo == 4 }">
			<h2>Lista de Vagas de Emprego para Alteração/Exclusão</h2>
		</c:when>
	</c:choose>
	<table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Descrição</th>
			<th>Req. Obrigatórios</th>
			<th>Req. Desejáveis</th>
			<th>Remuneração</th>
			<th>Aberta</th>
			<th>Benefícios</th>
			<th>Local de Trabalho</th>
			<c:if test="${tipo == 4 }">
				<th>Alterar</th>
				<th>Excluir</th>
			</c:if>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="vaga" items="${vagas}">
			<tr>
				<td><c:out value="${ vaga.id}"/></td>
				<td><c:out value="${ vaga.descricao}"/></td>
				<td><c:out value="${ vaga.reqObrigatorios}"/></td>
				<td>
					<c:if test="${vaga.reqDesejaveis != null}">
						<c:out value="${vaga.reqDesejaveis}"/>
					</c:if>
				</td>
				<td><c:out value="${ vaga.remuneracao}"/></td>
				<td>
					<c:choose>
						<c:when test="${ vaga.aberta}">
							<c:out value="Sim"/>
						</c:when>
						<c:otherwise>
							<c:out value="Não"/>
						</c:otherwise>
					</c:choose>
				</td>
				<td><c:out value="${ vaga.beneficios}"/></td>
				<td><c:out value="${ vaga.local}"/></td>
				<c:if test="${tipo == 4 }">
					<td><a href="<c:url value='/alterar?id=${vaga.id}'/>">Alterar</a></td>
					<td><a href="<c:url value='/excluir?id=${vaga.id}'/>">Excluir</a></td>
				</c:if>
			</tr>
		</c:forEach>
	</tbody>
	</table>
</div>
	
	
	<script src="<c:url value='/webjars/bootstrap/5.1.3/js/bootstrap.js'/>"></script>
</body>
</html>