<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value='/resources/css/styles.css'/>">
<title>Sistema de vagas - Inclus?o</title>
</head>
<body>
<jsp:include page="/nav.jsp" />
<div class="container">
	<div class="text-center mt-3">
		<h1>Sistema de controle de Vagas de Emprego</h1>
		<h2>Inclus?o</h2>
	</div>
	<div>
		<table>
			<tbody>
				<tr>
					<td>
						Descri??o: 
					</td>
					<td class="info">
						<c:out value="${vaga.descricao}"/>
					</td>
				</tr>
				<tr>
					<td>
						Requisitos Obrigat?rios:
					</td>
					<td class="info">
						<c:out value="${vaga.reqObrigatorios}"/>
					</td>
				</tr>
				<tr>
					<td>
						Requisitos Desej?veis:
					</td>
					<td class="info">
						<c:out value="${vaga.reqDesejaveis}"/>
					</td>
				</tr>
				<tr>
					<td>
						Remunera??o:
					</td>
					<td class="info">
						<c:out value="${vaga.remuneracao}"/>
					</td>
				</tr>
				<tr>
					<td>
						Benef?cios:
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
			<p class="sucesso">Vaga inclu?da com sucesso</p>
		</c:if>
	</div>
</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>