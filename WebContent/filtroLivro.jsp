<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro livros</title>
<link href="css/jquery-ui.css" rel="stylesheet">
<!-- <link href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" rel="stylesheet"> -->
<script src="js/jquery-1.8.2.js"></script>
<!-- <script src="http://code.jquery.com/jquery-1.8.2.js"></script> -->
<script src="js/jquery-ui.js"></script>
<!-- <script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script> -->
</head>
<body>
	<c:import url="cabecalho.jsp" />

	${requestScope.livros}
	<table border="1">
		<tr bgcolor="6c7b8b" align="center">
			<td>Id</td>
			<td>Titulo</td>
			<td>Autor</td>
			<td>Editar</td>
			<td>Excluir</td>
		</tr>
		<c:forEach var="livro" items="${requestScope.livros}">
			<tr>
				<td>${livro.id}</td>
				<td>${livro.titulo}</td>
				<td>${livro.autor}</td>
				<td></td>
				<td></td>
			</tr>
		</c:forEach>
	</table>

		<c:import url="rodape.jsp" />
</body>
</html>