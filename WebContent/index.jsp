<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <c:import url="pages/template/head.jsp"/>

  <body>
     <c:import url="pages/template/header.jsp"/>

    <div class="container">

      <div class="starter-template">
        <h1>Livraria Digital Web</h1>
        <p class="lead">Escolha uma das opções abaixo:</p>
        	<a class="btn btn-default" href="<c:url value="/cadastrarLivro.jsp"/>">Cadastrar livro</a>
        	<a class="btn btn-default" href="<c:url value="/buscarLivro.jsp"/>">Pesquisar livro</a>
        	<a class="btn btn-default" href="<c:url value="/excluirLivro.jsp"/>">Excluir livro</a>
      </div>
      
    </div>
    
	<c:import url="pages/template/footer.jsp" />
  </body>
</html>
