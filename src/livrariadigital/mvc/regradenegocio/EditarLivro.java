package livrariadigital.mvc.regradenegocio;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import livrariadigital.dao.LivroDao;

public class EditarLivro implements RegraDeNegocio {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		try {
			Long id = Long.valueOf(req.getParameter("id"));
			LivroDao dao = new LivroDao();
			req.setAttribute("livro", dao.buscaPorId(id));
			return "cadastrarLivro.jsp";
		} catch(Exception e) {
			return "erro404.jsp";
		}
	}

}
