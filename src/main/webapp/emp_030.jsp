<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Sistema de vagas - Inclusão</title>
</head>
<body>
<jsp:include page="/nav.jsp" />
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
					<td><a href="<c:url value='/excluir?id=${vaga.id}'/>" onclick="confirmarExclusao()">Excluir</a></td>
				</c:if>
			</tr>
		</c:forEach>
	</tbody>
	</table>
</div>
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script>
	function confirmarExclusao(){
		if(!window.confirm("Você tem certeza que deseja excluir esta vaga?")){
			event.preventDefault();
		}
	}
</script>
</body>
</html>