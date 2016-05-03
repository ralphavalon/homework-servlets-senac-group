package livrariadigital.mvc.regradenegocio;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import livrariadigital.dao.LivroDao;
import livrariadigital.modelo.Livro;

public class BuscarLivro implements RegraDeNegocio {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String titulo = req.getParameter("titulo"); 
		String autor = req.getParameter("autor"); 
		String editora = req.getParameter("editora");
		
		LivroDao dao = new LivroDao();
		if( titulo != null || autor != null || editora != null ) {
			List<Livro> livros = dao.buscaPorPropriedade(req.getParameter("titulo"), req.getParameter("autor"), req.getParameter("editora"));
			req.setAttribute("livros", livros);
		} else {
			List<Livro> livros = dao.getLista();
			req.setAttribute("livros", livros);
		}
		
		return "filtroLivro.jsp";
	}

}
