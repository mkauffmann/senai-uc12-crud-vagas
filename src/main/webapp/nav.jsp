<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
