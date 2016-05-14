package livrariadigital.mvc.regradenegocio;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import livrariadigital.dao.LivroDao;
import livrariadigital.modelo.Livro;

public class ExcluirLivro implements RegraDeNegocio {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		try {
			Long id = Long.valueOf(req.getParameter("id"));
			LivroDao dao = new LivroDao();
			
			Livro livro = dao.buscaPorId(id);
			dao.exclui(livro);
			req.setAttribute("mensagem", "Livro excluído com sucesso");
		} catch(RuntimeException e) {
			req.setAttribute("mensagem", "Livro nao existe");
		}
		
        return "listalivros.jsp";

	}

}
