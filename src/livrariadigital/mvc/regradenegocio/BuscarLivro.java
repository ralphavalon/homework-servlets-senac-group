package livrariadigital.mvc.regradenegocio;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import livrariadigital.dao.LivroDao;
import livrariadigital.modelo.Livro;

public class BuscarLivro implements RegraDeNegocio {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		LivroDao dao = new LivroDao();
		List<Livro> livros = dao.buscaPorPropriedade(req.getParameter("parametro"), req.getParameter("valorParametro"));
		req.setAttribute("livros", livros);
		
		return "listalivros.jsp";
	}

}
