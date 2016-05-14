<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<c:import url="pages/template/head.jsp" />
<body>
	<c:import url="pages/template/header.jsp" />

	<div class="container">

		<div class="starter-template">
		
			${requestScope.mensagem}
			
			<jsp:useBean id="dao" class="livrariadigital.dao.LivroDao"></jsp:useBean>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<td>Id</td>
							<td>Titulo</td>
							<td>Autor</td>
							<td>Editora</td>
							<td>E-mail</td>
							<td>Data de lançamento</td>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="livro" items="${dao.lista}" varStatus="id">
							<tr>
								<td>${id.count}</td>
								<td>${livro.titulo}</td>
								<td>${livro.autor}</td>
								<td>${livro.editora}</td>
								<td><c:if test="${not empty livro.email}">
										<a href="mailto:${livro.email}">${livro.email}</a>
									</c:if> <c:if test="${empty livro.email}">
									E-mail não informado
								</c:if></td>
								<td><fmt:formatDate value="${livro.dataLancamento.time}"
										pattern="dd-MMM-yyyy" /></td>
								<td>
									<a href="controller?regraDeNegocio=EditarLivro&id=${livro.id}" class="btn btn-warning btn-sm">
          								<span class="glyphicon glyphicon-edit"></span> Editar
          							</a>
         						</td>
								<td>
									<a href="controller?regraDeNegocio=ExcluirLivro&id=${livro.id}" class="btn btn-danger btn-sm">
          								<span class="glyphicon glyphicon-remove"></span> Excluir
          							</a>
        						</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<button class="btn btn-info space" onclick="goBack()">Voltar</button>
		</div>
	</div>

	<c:import url="pages/template/footer.jsp" />
</body>
</html>