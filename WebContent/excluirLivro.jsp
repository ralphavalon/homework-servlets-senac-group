<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<form action="controller">
				<div class="form-group">
					<label for="id">Informe o ID do livro a ser excluído:</label>
					<input type="text" name="id" class="form-control" id="id">
				</div>
				
				<input type="hidden" name="regraDeNegocio" value="ExcluirLivro">
		
				<input type="submit" class="btn btn-danger" value="Excluir">
				<button class="btn btn-info space" onclick="goBack()">Voltar</button>
			</form>
		</div>
	</div>
	
	<c:import url="pages/template/footer.jsp" />
	</body>
</html>