package livrariadigital.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import livrariadigital.jdbc.FabricaDeConexoes;
import livrariadigital.modelo.Livro;

public class LivroDao {
	private Connection conn;

	// Construtor de LivroDao que pega uma conexao na Fabrica de Conexoes
	public LivroDao() throws SQLException {
		this.conn = new FabricaDeConexoes().getConnection();
	}

	// metodo que adiciona livro ao Banco de Dados livrariadigital
	public void adiciona(Livro livro) {
		String sql = "insert into livros(titulo, autor, editora, email, dataLancamento) values (?,?,?,?,?)";

		try {
			PreparedStatement stmt = conn.prepareStatement(sql);

			stmt.setString(1, livro.getTitulo());
			stmt.setString(2, livro.getAutor());
			stmt.setString(3, livro.getEditora());
			stmt.setString(4, livro.getEmail());
			stmt.setDate(5, new Date(livro.getDataLancamento()
					.getTimeInMillis()));

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void atualiza(Livro livro) {
		String sql = "update livros set titulo = ?, autor = ?, editora = ?, email = ?, dataLancamento = ? where id = ?";

		try {
			PreparedStatement stmt = conn.prepareStatement(sql);

			stmt.setString(1, livro.getTitulo());
			stmt.setString(2, livro.getAutor());
			stmt.setString(3, livro.getEditora());
			stmt.setString(4, livro.getEmail());
			stmt.setDate(5, new Date(livro.getDataLancamento()
					.getTimeInMillis()));
			stmt.setLong(6, livro.getId());
			
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}


	
	// método que retorna uma lista de livros pesquisada no Banco de Dados
	// livrariadigital
	public List<Livro> getLista() {
		try {
			List<Livro> livros = new ArrayList<Livro>();

			String sql = "select * from livros";

			PreparedStatement stmt = this.conn.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Livro livro = mapearLivro(rs);
				livros.add(livro);
			}

			rs.close();
			stmt.close();
			return livros;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public void exclui(Livro livro){
		try {
			String sql = "delete from livros where id=?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setLong(1, livro.getId());
			stmt.execute();
			stmt.close();
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}

	public List<Livro> buscaPorPropriedade(String parametro, String valor) {
		try {
			List<Livro> livros = new ArrayList<Livro>();

			String sql = "select * from livros where " + parametro + " like ?";

			PreparedStatement stmt = this.conn.prepareStatement(sql);
			stmt.setString(1, "%"+ valor +"%");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Livro livro = mapearLivro(rs);
				livros.add(livro);
			}

			rs.close();
			stmt.close();
			return livros;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Livro buscaPorId(Long id) {
		try {
			String sql = "select * from livros where id = ?";
	
			PreparedStatement stmt = this.conn.prepareStatement(sql);
			stmt.setLong(1, id);
	
			ResultSet rs = stmt.executeQuery();
			rs.next();
			
			Livro livro = mapearLivro(rs);
			
			return livro;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	private Livro mapearLivro(ResultSet rs) throws SQLException {
		Livro livro = new Livro();
		livro.setId(rs.getLong("id"));
		livro.setTitulo(rs.getString("titulo"));
		livro.setAutor(rs.getString("autor"));
		livro.setEditora(rs.getString("editora"));
		livro.setEmail(rs.getString("email"));

		Calendar data = Calendar.getInstance();
		data.setTime(rs.getDate("dataLancamento"));
		livro.setDataLancamento(data);
		return livro;
	}
}