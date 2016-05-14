<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:import url="pages/template/head.jsp" />

<body>
	<c:import url="pages/template/header.jsp" />

	<div class="container">

		<div class="starter-template">

			<form action="controller">
				<div class="form-group">
			    	<label for="parametro">Buscar por:</label>
					<select name="parametro" class="form-control select" id="parametro">
						<option value="titulo">Titulo</option>
						<option value="autor">Autor</option>
						<option value="editora">Editora</option>
					</select>
			    </div>
				 
				<div class="form-group">
					<label for="valorParametro">Pesquisa:</label>
					<input type="text" name="valorParametro" class="form-control" id="valorParametro">
				</div>
				 
				<input type="hidden" name="regraDeNegocio" value="BuscarLivro">
			
				<input type="submit" class="btn btn-primary" value="Buscar">
				<button class="btn btn-info space" onclick="goBack()">Voltar</button>
			</form>
			
		</div>

	</div>

	<c:import url="pages/template/footer.jsp" />
</body>
</html>