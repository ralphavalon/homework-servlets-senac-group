<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="snc"%>
<!DOCTYPE html>
<html>
<c:import url="pages/template/head.jsp" />
<script src="<c:url value="/js/jquery-1.12.3.js"/>"></script>
<script src="<c:url value="/js/jquery-ui.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>

<body>
	<c:import url="pages/template/header.jsp" />

	<div class="container">

		<div class="starter-template">
			<form method="post" action="controller">
				<h2>Insira os dados do livro</h2>
				<br/>
				<fmt:formatDate pattern="dd/MM/yyyy" value="${requestScope.livro.dataLancamento.time}" var="formattedStatusDate" />
				
				<div class="form-group">
			      <label for="titulo">Título:</label>
			      <input type="text" name="titulo" class="form-control" id="titulo" value="${requestScope.livro.titulo}">
			    </div>
				<div class="form-group">
					<label for="autor">Autor:</label>
					<input type="text" name="autor" class="form-control" value="${requestScope.livro.autor}"/>
				</div>
				<div class="form-group">
					<label for="editora">Editora:</label>
					<input type="text" name="editora" class="form-control" value="${requestScope.livro.editora}"/>
				</div>
				<div class="form-group">
					<label for="email">E-mail:</label>
					<input type="text" name="email" class="form-control" value="${requestScope.livro.email}"/>
				</div>
				<div class="form-group">
					<label for="data">Data de Lançamento:</label>
					<snc:data id="data" value="${formattedStatusDate}" classe="form-control"/>
				</div>

				<c:choose>
					<c:when test="${requestScope.livro != null}">
						<input type="hidden" name="regraDeNegocio" value="AtualizarLivro">
						<input type="hidden" name="id" value="${requestScope.livro.id}">
						<input type="submit" class="btn btn-primary" value="Atualizar">
					</c:when>
					<c:otherwise>
						<input type="hidden" name="regraDeNegocio" value="CadastraLivro">
						<input type="submit" class="btn btn-primary" value="Cadastrar">
					</c:otherwise>
				</c:choose>
				<button class="btn btn-info space" onclick="goBack()">Voltar</button>

			</form>
		</div>

	</div>
	<c:import url="pages/template/footer.jsp" />
</body>
</html>